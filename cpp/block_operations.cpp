#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main()
{
    // eigen block islemleri  
    // !!! kose islemlerinin apisi baya uzun not al 

    // dinamik boyutlu blok matrix.block(i, j, p, q);
    // sabit boyutlu matrix.block<p, q>(i, j);

    Eigen::MatrixXf m(4, 4);
    m << 1, 2, 3, 4,
      5, 6, 7, 8,
      9, 10, 11, 12,
      13, 14, 15, 16;
    cout << "Ortadaki blok" << endl;
    cout << m.block<2, 2>(1, 1) << endl << endl;
    for (int i = 1; i <= 3; ++i){
        cout << "Blok boyutu: " << i << "x" << i << endl;
        cout << m.block(0, 0, i, i) << endl;
    }


    // burada degisik birseyler var !!!
    Array22f mat1;
    mat1 << 1, 2,
    3, 4;
    Array44f a = Array44f::Constant(0.6);
    cout << "a dizisi: " << endl << a << endl << endl;

    a.block<2, 2>(1, 1) = mat1;
    cout << "mat1, merkez 2x2 bloguna kopyalandiginda a:\
        " << endl << a << endl << endl;

    a.block(0, 0, 2, 3) = a.block(2, 1, 2, 3);
    cout << "Sag-alt 2x3 blogu sol-ust 2x2 bloguna kopyalandgiginda a:\
        " << endl << a << endl << endl;

    Eigen::MatrixXf mat2(3, 3);
    mat2 << 1, 2, 3,
    4, 5, 6,
    7, 8, 9;
    cout << "mat2 matrisi : " << endl << mat2 << endl;
    cout << "2. satir: " << mat2.row(1) << endl;
    mat2.col(2) += 3 * mat2.col(0);
    // bu template olayını anlamak lazım
    cout << "Birinci sutunun uc katini ucuncu sutuna ekleyince, mat2 matrisi:\n";

    cout << mat2 << endl;

    return 0;
}
