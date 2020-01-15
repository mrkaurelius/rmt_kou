# Kocaeli Universitesi Robotlar İçin Matematik Temelleri 2019-2020 Ders Notları 

Kocaeli Universitesi robotlar icin matematik temelleri dersinde aldıgım notları, ödevleri ve çalışmaları içerir.  

## Araçlar 
 - MATLAB
 - Robotics Toolbox (Peter Corke)
 - GNU Octave (Alternatif)
 - Modern C++
 - C++ Egien

## Notlar 
- Ödevleri Octavedan MATLAB'a çevir
- Notlari düzenle
- Bölümleri indexle
- Robot tasarım bölümünü ekle

## How to

C++ Compiler setinin Debian tabanlı sistemlerde kurulumu 
```sh
$ sudo apt install build-essential
```

MATLAB CLI arayüzü (X çalışır)
```sh
$ matlab -nodesktop
```

Toolbox'ı matlab pathına ekleme
```MATLAB
addpath /home/mrk0/gelistirme/octave/corke/common
startup_rvc
```

C++ Eigen kutuphenesinin apt ile kurulumu 
```sh
$ sudo apt install libeigen3-dev
```

Eigen Hello World
```sh
#include <iostream>
#include <eigen3/Eigen/Dense>

using Eigen::MatrixXd;
int main()
{
    MatrixXd m(2,2);
    
    m(0,0) = 3;
    m(1,0) = 2.5;
    m(0,1) = -1;
    m(1,1) = m(1,0) + m(0,1);
    std::cout << m << std::endl;
}
```

### Kaynaklar 
- [yapbenzet.kocaeli.edu.tr](http://yapbenzet.kocaeli.edu.tr/robotlar-icin-matematik-temelleri-2/)

#### Eksik, hata görürseniz pull request atmaktan çekinmeyin

[![License: CC0-1.0](https://licensebuttons.net/l/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/)
