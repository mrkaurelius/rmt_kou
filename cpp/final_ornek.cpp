#include <iostream>
#include <eigen3/Eigen/Dense>

using namespace Eigen;
using namespace std;

// typedef Matrix<float, 4, 4> Matrix4f; kutuphane tanimlari boyle

int main()
{
    // satır ve sutunlar dogru bastiriliyor
    MatrixXd m(4, 4);
    m << 1,2,3,4,
         5,6,7,8,
         9,10,11,12,
         13,14,15,16;
    
    cout << "ortadaki blok" << endl;
    cout << m.block<3,1>(0,0) << endl;
    // 0,0 dan 3 satır 1 sutunluk blok
    cout << m.sum() << endl;
    cout << m.maxCoeff() << endl;
    cout << m.col(2).transpose() << endl;
    cout << "row(1).diagonal " << m.row(1).diagonal() << endl;
    cout << "row(0) " << m.row(0) << endl;
    cout << "--------------------------------------------" << endl;
    // eigen karsiliklarini yaz cout ici onemli
    // C = A.*B
    Matrix4d A = m;
    Matrix4d B = MatrixXd::Ones(4,4);
    B.array() += 1;
    cout << (A.array() * B.array()).matrix() << endl;
    cout << "--------------------------------------------" << endl;
    // C = A.^B
    cout << A.array().pow(2).matrix() << endl;
    cout << "--------------------------------------------" << endl;
    // D = diag(M)
    Matrix4d M = A.array().pow(2).matrix();
    MatrixXd D(4,4);
    D = M.diagonal();
    cout << D << endl;
    cout << "size D: " << D.rows() << "," << D.cols() << endl;
    cout << "--------------------------------------------" << endl;
    // X(;,j) = X(;,j) + x
    M.col(3).array() += -100;
    cout << M << endl;
    //find(X) bunu beceremedim
    //igl::find(M,I,J,V);

    return 0;
}
