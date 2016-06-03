/*
 * PPCL.cpp
 *  Created on: May 26, 2016
 *      Author: allenzou 
 */

#include <mpi.h>
#include <stdint.h>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>  // Required for stringstreams
#include <ctime>
#include <cmath>
#include "../CombBLAS.h"

using namespace std;

// Simple helper class for declarations: Just the numerical type is templated
// The index type and the sequential matrix type stays the same for the whole code
// In this case, they are "int" and "SpDCCols"
template <class NT>
class Dist
{
public:
	typedef SpDCCols < int, NT > DCCols;
	typedef SpParMat < int, NT, DCCols > MPI_DCCols;
	typedef FullyDistVec < int, NT> MPI_DenseVec;
};



/*bool Compare(pair<int,int> &left, pair<int,int> &right)
{
	if(left.second<right.second)
		return true;
	else if(left.second==right.second)
		return (left.first<=right.first)?1:0;	
	else
		return false;
}*/

void Interpret(const Dist<double>::MPI_DCCols & A)
{
	// Placeholder
	return;
}

/*
passing ‘const MPI_DCCols {aka const SpParMat<int, double, SpDCCols<int, double> >}’ as ‘this’ argument of ‘void SpParMat<IT, NT, DER>::DimApply(Dim, const FullyDistVec<IT, NT>&, _BinaryOperation) [with _BinaryOperation = std::multiplies<double>; IT = int; NT = double; DER = SpDCCols<int, double>]’ discards qualifiers [-fpermissive]
*/
Dist<double>::MPI_DCCols Update_vote(Dist<double>::MPI_DCCols & A,Dist<double>::MPI_DCCols & C,double p)
{	
	Dist<double>::MPI_DenseVec rowsums = C.Reduce(Row,plus<double>(), 0.0);
	rowsums.Apply(safemultinv<double>());
	C.DimApply(Row,rowsums, multiplies<double>());	// scale each "Row" with the given vector
	C.Apply(bind2nd(exponentiate(), p));
	Dist<double>::MPI_DenseVec temp = C.Reduce(Column, plus<double>(), 0.0);
	A.DimApply(Row ,temp, multiplies<double>());
	return A;
}

double Set_p(const Dist<double>::MPI_DCCols & C)
{
	Dist<double>::MPI_DenseVec colsums = C.Reduce(Row, plus<double>(), 0.0);
	int v = colsums.getarrsize();    //此处假设FullyDistVec向量不存储0，且arr.size()为向量中非零值的个数。
	//未完成函数设定
	return 1.0;

}

/*Dist<double>::MPI_DCCols Settling_ties(Dist<double>::MPI_DCCols & C)
{
	// Placeholder
	C.SaveGathered("11.txt");    
	ifstream inp;
    inp.open("11.txt");
    char line[1024];
    inp.getline(line,1024);

	while(line[0]=='%')
		inp.getline(line,1024);

    stringstream linestream;
    linestream<<line;
    int nrow,ncol,nnz;
    linestream>>nrow>>ncol>>nnz;

    int precol = -1;

    double val;
	
	vector<pair<int,int> > input;

    vector< pair<int,int> > result;

	while(nnz>0 && inp.getline(line,1024))
    {
		int row;
		int col;
        sscanf(line,"%d %d",&row,&col); 
		input.push_back(make_pair(row,col));
        nnz--;
    }
	inp.close();

	sort(input.begin(),input.end(),Compare);
	
    for(int i=0;i<input.size();i++)
	{
        if(precol == -1){
            precol = input[i].second;
            result.push_back(make_pair(input[i].first,input[i].second));
        }
        else{
            if( precol != input[i].second){
                precol = input[i].second;
                result.push_back(make_pair(input[i].first,input[i].second));
            }
        }
    }
#if 1
    ofstream out;
    out.open("1.txt",ios_base::trunc);
    out<<nrow<<"  "<<ncol<<"  "<<result.size()<<endl;
    for(int i=0;i<result.size();i++)
        out<<result[i].first<<"  "<<result[i].second<<"  1"<<endl;
    out.close();
#endif

	C.FreeMemory();
	string s = "1.txt";
	C.ReadDistribute(s,0);
	
	return C;
}*/



int main(int argc, char* argv[])
{
	int nprocs, myrank;
	int power;
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD,&nprocs);
	MPI_Comm_rank(MPI_COMM_WORLD,&myrank);
	typedef PlusTimesSRing<double, double> PTDOUBLEDOUBLE;
	if(argc < 2)
	{
		if(myrank == 0)
		{
			cout << "Usage: ./ppcl <BASEADDRESS> " << endl;
			cout << "Example: ./ppcl Data/  " << endl;
            cout << "Input file input.txt should be under <BASEADDRESS> in triples format" << endl;
        }
		MPI_Finalize();
		return -1;
    }

	{
		string directory(argv[1]);
		string ifilename1 = "input.txt";
		string ifilename2 = "input_unit.txt";
		ifilename1 = directory+"/"+ifilename1;
		ifilename2 = directory+"/"+ifilename2;

		MPI_Barrier(MPI_COMM_WORLD);	

		shared_ptr<CommGrid> fullWorld;
		fullWorld.reset( new CommGrid(MPI_COMM_WORLD, 0, 0) );
		Dist<double>::MPI_DCCols A(fullWorld);	// construct object
		Dist<double>::MPI_DCCols C(fullWorld);

		A.ReadDistribute(ifilename1,0);	// read it from file
		C.ReadDistribute(ifilename2,0);


		// Reduce (Row): pack along the rows, result is a vector of size n
		Dist<double>::MPI_DenseVec rowsums = A.Reduce(Row, plus<double>(), 0.0);
		rowsums.Apply(safemultinv<double>());
		A.DimApply(Row, rowsums, multiplies<double>());	// scale each "Row" with the given vector

		int flag =1;
		while (flag == 1)
		{
			double t1 = MPI_Wtime();
			Dist<double>::MPI_DCCols T = PSpGEMM<PTDOUBLEDOUBLE>(C, A);
			Dist<double>::MPI_DenseVec colmaxs = T.Reduce(Column, maximum<double>(), 0.0);
			T.DimApply(Column, colmaxs, equal_to<double>());


			//Dist<double>::MPI_DCCols Cf  = Settling_ties(T);  //Settling ties in C
			int* p =C.getlocaljc();
			int nzc = C.getlocalnzc();
			int ncol = C.getlocalcols();
			int index_temp[ncol];
			int index[ncol];

			for(int i = 0;i < ncol; i++)
			{
				index_temp[i] = numeric_limits<int>::max();
			}
			for(int j = 0; j < nzc; j++)
			{
				index_temp[p[j]] = myrank;
			}
			MPI_Barrier(MPI_COMM_WORLD);

			MPI_Allreduce(index_temp, index, ncol, MPI_INT, MPI_MIN, fullWorld->GetColWorld() );
			Dist<double>::DCCols *local_mat = T.seqptr();
			Dist<double>::DCCols::SpColIter colit;
			Dist<double>::DCCols::SpColIter::NzIter nzit;


			for(int k; k< ncol; k++)
			{
				if(myrank == index[k])
				{
					for(colit=local_mat->begcol(); colit != local_mat->endcol(); ++colit)
					{
						if(colit.colid() == k)
						{
							for(nzit = local_mat->secnz(colit); nzit != local_mat->endnz(colit); ++nzit)
							{
								nzit.value() -= 1 ;
							}
							break;
						}
					}
				}
				else
				{
					for(colit=local_mat->begcol(); colit != local_mat->endcol(); ++colit)
					{
						if(colit.colid() == k)
						{
							for(nzit = local_mat->begnz(colit); nzit != local_mat->endnz(colit); ++nzit)
							{
								nzit.value() -= 1;
							}
						break;
						}
					}
				}
			}
			MPI_Barrier(MPI_COMM_WORLD);


			if (T == C)
				flag = 0;
			else
				power =  Set_p(T);
				A = Update_vote(A,T,power);
			C = T;

			double t2=MPI_Wtime();
			if(myrank == 0)
				printf("%.6lf seconds elapsed for this iteration\n", (t2-t1));
		}
		Interpret(C);
	}
	MPI_Finalize();
	return 0;
}


