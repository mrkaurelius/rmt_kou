#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main()
{
    // matrix aritmetik islemleri 
    // c++ operation overloadinge bak
    Matrix<int, 2, 2> a;
    a << 1,2,
    3,4;

    Matrix<int, 2, 2> b;
    b << 2,3,
    3,1;

    cout << "a + b \n" << a + b << endl;
    cout << "a - b \n" << a - b << endl;
    cout << "-a = \n" << -a << endl;

    MatrixXd matA = MatrixXd::Random(2,2);
    
    cout << "Here is the matrix a\n" << matA << endl;
    cout << "Here is the matrix a^T\n" << matA.transpose() << endl;
    cout << "Here is the conjugate of a\n" << matA.conjugate() << endl;
    cout << "Here is the matrix a^*\n" << matA.adjoint() << endl;
    
    // a = a.transpose(); // !!! do NOT do this !!!
    MatrixXf matB(2,3);
    matB << 1, 2, 3,
        4, 5, 6;

    cout << "Here is the initial matrix a:\n" << matB << endl;
    matB.transposeInPlace();
    cout << "and after being transposed:\n" << matB << endl;
    // matrisin transpozunu kendisine atama aliasing e sebep olur
    
    Matrix2d mat;
    mat << 1, 2,
    3, 4;
    Vector2d u(-1,1), v(2,0);
    // !!! burdaki -1 ne ?
    // * matrix carpımı yapıyor
    cout << "u ve v vektoru\n" << u << v << endl;
    std::cout << "Here is mat*mat:\n" << mat*mat << std::endl;
    std::cout << "Here is mat*u:\n" << mat*u << std::endl;
    std::cout << "Here is u^T*mat:\n" << u.transpose()*mat << std::endl;
    std::cout << "Here is u^T*v:\n" << u.transpose()*v << std::endl;
    std::cout << "Here is u*v^T:\n" << u*v.transpose() << std::endl;
    std::cout << "Let's multiply mat by itself" << std::endl;
    mat = mat*mat;
    std::cout << "Now mat is mat:\n" << mat << std::endl;

    Matrix3f matC = Matrix3f::Random();
    std::ptrdiff_t i, j;
    // ptrdiff_t ne ? result of pointer subtraction
    float minOfM = matC.minCoeff(&i,&j);
    cout << "Here is the matrix m:\n" << matC << endl;
    cout << "Its minimum coefficient (" << minOfM
    << ") is at position (" << i << "," << j << ")\n\n";
    RowVector4i vectA = RowVector4i::Random();
    int maxOfV = v.maxCoeff(&i);
    cout << "Here is the vector v: " << vectA << endl;
    cout << "Its maximum coefficient (" << maxOfV
    << ") is at position " << i << endl;
}


