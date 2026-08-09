<div align="center">

<img width="120" alt="изображение" src="https://github.com/user-attachments/assets/f68d81b5-9ec8-430a-bc02-fc4290dcb0f8" />

#  ZedShurik

Making Zed IDE at Windows ready to Configure/Build/Run C/C++ code (Qt compatible).<br/>
Requires Clang.<br/>
Requires CMake 3.17+ and Ninja for projects with ```CMakeLists.txt```<br/>
Requires Qt for projects using Qt or QML.

</div>

## Problem

C++ is fast.<br/> ```CMakeLists.txt``` are crossplatform.<br/>Zed IDE is fast.<br/> Ninja is fast.<br/> Clang has readable build logs.<br/> Windows is common.<br/>
But we cannot just install Zed and solve our tasks immediately.

## Solution

There are files which will help to setup all you need to use ```Configure``` and ```Build & Run```.<br/>
It supports creation both ```Debug``` and ```Release``` profiles sumultaneously in parallel directories. CMake 3.17+ is required. 

## Howto

### Setup

0. Get Windows machine.
1. Install Clang, Zed.
1+. Install Cmake, Ninja if you are planning to run projects with ```CMakeLists.txt```.
2. Run Zed and do initial setup.
3. Go to ```%AppData%\Zed``` in Explorer.
4. Copy there ```tasks.json``` and all ```.ps1```-scripts.
5. Edit ```ToolPaths.ps1``` . Replace all my default paths with your actual ones.

### Usage

#### Fast build/run with single-cpp project without ```CMakeLists.txt```

1. Open ```.cpp``` file to be compiled and executed.
2. ```Shift+Alt+R``` or ```Shift+Alt+T```. ```C++: Run Active File (No CMake)```.

#### Fully equipped project with ```CMakeLists.txt```

1. Open directory with C++ project containing ```CMakeLists.txt``` in Zed.
2. ```Shift+Alt+R``` or ```Shift+Alt+T```. ```Configure```.
3. ```Shift+Alt+R``` or ```Shift+Alt+T```. ```Build & Run```.
