<div align="center">

<img width="120" alt="изображение" src="https://github.com/user-attachments/assets/f68d81b5-9ec8-430a-bc02-fc4290dcb0f8" />

#  ZedShurik

Making Zed IDE at Windows ready to Configure/Build/Run C++ code.<br/>
Requires Clang and Ninja.<br/>
Works only with projects based on CMakeLists.txt.

</div>

## Problem:

C++ is fast.<br/> CMakeLists.txt are crossplatform.<br/>Zed IDE is fast.<br/> Ninja is fast.<br/> Clang has readable build logs.<br/> Windows is common.<br/>
But we cannot just install Zed and solve our tasks immediately.

## Solution
0. Get Windows machine
1. Install Clang
2. Install Ninja
3. Install Zed
4. Run Zed and do initial setup.
5. Go to ```%AppData%\Zed``` in Explorer.
6. Copy there ```tasks.json``` and all ```.ps1```-scripts.
7. Edit ```ToolPaths.ps1```. Replace all my default paths to Clang and Ninja with your actual ones.
8. Open directory with ```CMakeLists.txt``` in Zed.
9. Shift+Alt+R. Configure.
10. Shift+Alt+R. Build & Run.
