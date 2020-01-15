#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

// typedef Matrix<float, 4, 4> Matrix4f; kutuphane tanimlari boyle

int main()
{

    // !!! eksikler olabilir !!!
    Matrix3f matA;//3x3 float[9], init edilmemis katsayilari atanmamis
    MatrixXd matB; // memory allocate edilmemis (0x0) dinamik matrix
    // tabi katsayilari da atanmamis
    
    MatrixXf matC(10, 15); // 10x15 dinam. mat. allocate edilmis ama 
    // kat sayilar atanmamis
    VectorXf VectA(30); // din. vekt. ilk boyut 30 alloc. ama kat sayilar
    // atanmamis 


    MatrixXf m;
    //MatrixXf m; constructorda boyut belirtmezsen 
    //resize ile elemanları allocate etmek lazım
    m.resize(3, 3);
    m << 1, 2, 3,
         4, 5, 6,
         7, 8, 9;
    // virgullle atama icin eleman sayisinin belli olmasi lazım 
    // eleman sayisi gecilirse hata verir

    cout << "m \n" << m << endl;
    cout << "m size: "<< m.rows() << "," << m.cols() << endl; 
    m.resize(2, 2); //resize yapınca eski elemanlar ucuyor
    // m.conservativeResize() ile elemanlar korunarak resize yapılabilir
    cout << "m after resize\n" << m << endl;

    m(0,0) = 29;
    m(1,1) = 34;

    cout << "m after coef. changed\n" << m << endl;
    cout << "m size: "<< m.rows() << "," << m.cols() << endl; 

    RowVector3i rVect_A; 
    Vector3i vect_B; 

    // rowVect ayrı oldguna gore normal vekt satir 
    cout << "vect B: " << vect_B << endl;
    cout << "row vect A: " << rVect_A << endl;

	Eigen::MatrixXf mat(4, 4);
	mat << 1, 2, 3, 4,
		 5, 6, 7, 8,
		 9, 10, 11, 12,
		 13, 14, 15, 16;

    cout << mat << endl;
    cout << "2x2 lik 1,1 den baslayan blok" << endl;
    cout << mat.block<2, 2>(1,1) << endl; // 2x2 lik 1,1 origli blok
    // 2 tur block 
    // dinamik boyut: matrix.block(i, j, p, q);
    // sabit boyut: matrix.block<p,q>(i, j);
    // 1. satiri yazdırma 
    cout << "1. satir: " << mat.row(0) << endl;
    // 1. sutununun 3 katini 4. sutunun elemanları ile toplama
    mat.col(3) += 3 * mat.col(0);
    cout << mat << endl;
    cout << "alt satırlar: " << mat.bottomRows<2>() << endl;

    // vektorler icin blok islemleri 
	Eigen::ArrayXf v(6);
	v << 1, 2, 3, 4, 5, 6;
	cout << "v.head(3) =" << endl << v.head(3) << endl << endl;
	cout << "v.tail<3>() = " << endl << v.tail<3>() << endl << endl;
	v.segment(1, 4) *= 2;
	cout << "after 'v.segment(1,4) *= 2', v =" << endl << v << endl;
    std::cout << "mat.size() "<< mat.size() << std::endl;

    // kose ile ilgili islemler
	mat << 1, 2, 3, 4,
		 5, 6, 7, 8,
		 9, 10, 11, 12,
		 13, 14, 15, 16;
    cout << "initial:\n" << mat << endl;
    mat.bottomRightCorner(2, 2) = mat.topLeftCorner(2, 2);
    cout << "bottom swap:\n" << mat << endl;

    MatrixXi matD(3, 3);
    matD << 1, 2, 3,
    4, 5, 6,
    7, 8, 9;
    matD.bottomRightCorner(2, 2) = matD.topLeftCorner(2, 2);
    cout << "matrix matD:\n" << matD << endl;


    Matrix<int, 10, 10> ident_mat_static;
    ident_mat_static.array() = 0; 
    std::cout <<  ident_mat_static << std::endl;

    return 0;
}
