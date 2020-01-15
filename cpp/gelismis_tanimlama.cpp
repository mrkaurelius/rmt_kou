#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

int main()
{
    // virgul init 
    RowVectorXd vec1(3);
    vec1 << 1, 2, 3;
    std::cout << "vec1 = " << vec1 << std::endl;
    RowVectorXd vec2(4);
    vec2 << 1, 4, 9, 16;
    std::cout << "vec2 = " << vec2 << std::endl;
    RowVectorXd joined(7);
    joined << vec1, vec2;
    std::cout << "joined = " << joined << std::endl;

    MatrixXf matA(2, 2);
    matA << 1, 2, 3, 4; // 2x2 kare olarak tanimlanmis
    MatrixXf matB(4, 4);
    matB << matA, matA / 10, matA / 10, matA;
    std::cout << matB << std::endl;

    // ozel matrisler ve diziler
    std::cout << "Sabit iki boyutlu dizi:\n";
    Array33f a1 = Array33f::Zero();
    std::cout << a1 << "\n\n";
    std::cout << "Dinamik tek boyutlu dizi:\n";
    ArrayXf a2 = ArrayXf::Zero(3);
    std::cout << a2 << "\n\n";
    std::cout << "Dinamik iki boyutlu dizi:\n";
    ArrayXXf a3 = ArrayXXf::Zero(3, 4);
    std::cout << a3 << "\n" << endl;

    const int size = 6;
    // burası karisik ama zor degil 
    MatrixXd mat1(size, size);
    mat1.topLeftCorner(size / 2, size / 2) = MatrixXd::Zero(size / 2, size / 2);
    mat1.topRightCorner(size / 2, size / 2) = MatrixXd::Identity(size / 2, size / 2);
    mat1.bottomLeftCorner(size / 2, size / 2) = MatrixXd::Identity(size / 2, size / 2);
    mat1.bottomRightCorner(size / 2, size / 2) = MatrixXd::Zero(size / 2, size / 2);
    std::cout << mat1 << std::endl << std::endl;
    MatrixXd mat2(size, size);
    mat2.topLeftCorner(size / 2, size / 2).setZero();
    mat2.topRightCorner(size / 2, size / 2).setIdentity();
    mat2.bottomLeftCorner(size / 2, size / 2).setIdentity();
    mat2.bottomRightCorner(size / 2, size / 2).setZero();
    std::cout << mat2 << std::endl << std::endl;
    MatrixXd mat3(size, size);
    mat3 << MatrixXd::Zero(size / 2, size / 2), MatrixXd::Identity(size / 2, size / 2),
    MatrixXd::Identity(size / 2, size / 2), MatrixXd::Zero(size / 2, size / 2);
    std::cout << mat3 << std::endl;

    return 0;
}
