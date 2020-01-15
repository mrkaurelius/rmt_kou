#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main()
{
    // array sınıfı genel amaclı diziler saglar
    // Array<typename Scalar, int RowsAtCompileTime, int ColsAtCompileTime>
    // matlabdaki . operatoru gibi
    ArrayXXf a(3,3);
    ArrayXXf b(3,3);
    a << 1,2,3,
    4,5,6,
    7,8,9;

    b << 1,2,3,
    1,2,3,
    1,2,3;

    cout << "a + b = " << endl << a + b << endl << endl; cout << \
        "a - 2 = " << endl << a - 2 << endl;
    
    cout << "a * b = " << endl << a * b << endl;

    ArrayXf dn_arr = ArrayXf::Random(5);
    dn_arr *= 2;
    cout << "dn_arr =" << endl << dn_arr << endl;
    cout << "dn_arr.abs() =" << endl << dn_arr.abs() << endl;
    cout << "dn_arr.abs().sqrt() =" << endl << dn_arr.abs().sqrt() << endl;
    cout << "dn_arr.min(dn_arr.abs().sqrt()) ="\
        << endl << dn_arr.min(dn_arr.abs().sqrt())<< endl;
    // 2 arrayı karsılastırıp en kucuk elemanlari secer
    
    MatrixXf m(2,2);
    MatrixXf n(2,2);
    MatrixXf result(2,2);
    m << 1,2,
    3,4;
    n << 5,6,
    7,8;
    result = m * n;
    cout << "-- Matrix m*n: --" << endl << result << endl << endl;
    result = m.array() * n.array(); cout << "-- Array m*n: --"\
             << endl << result << endl << endl;
    result = m.cwiseProduct(n);
    cout << "-- With cwiseProduct: --" << endl << result << endl << endl;
    result = m.array() + 4;
    cout << "-- Array m + 4: --" << endl << result << endl << endl;

    MatrixXf mat1(2,2);
    MatrixXf mat2(2,2);
    MatrixXf result_2(2,2);
    mat1 << 1,2,
    3,4;
    mat2 << 5,6,
    7,8;
    result_2 = (mat1.array() + 4).matrix() * mat1;
    cout << "-- Combination 1: --" << endl << result_2 << endl << endl;
    result_2 = (mat1.array() * mat2.array()).matrix() * mat1;
    cout << "-- Combination 2: --" << endl << result_2 << endl << endl;

    return 0;
}
