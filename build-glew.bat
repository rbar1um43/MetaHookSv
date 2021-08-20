call cmake -S "%~dp0glew-cmake\build\cmake" -B "%~dp0glew-cmake\build" -A Win32

call powershell -Command "(gc %~dp0glew-cmake\build\glew_s.vcxproj) -replace '<RuntimeLibrary>MultiThreadedDebugDLL</RuntimeLibrary>', '<RuntimeLibrary>MultiThreadedDebug</RuntimeLibrary>' | Out-File %~dp0glew-cmake\build\glew_s.vcxproj"

call powershell -Command "(gc %~dp0glew-cmake\build\glew_s.vcxproj) -replace '<RuntimeLibrary>MultiThreadedDLL</RuntimeLibrary>', '<RuntimeLibrary>MultiThreaded</RuntimeLibrary>' | Out-File %~dp0glew-cmake\build\glew_s.vcxproj"

cd /d "%~dp0"

for /f "usebackq tokens=*" %%i in (`vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath`) do (
  set InstallDir=%%i
)

if exist "%InstallDir%\Common7\Tools\vsdevcmd.bat" (

    "%InstallDir%\Common7\Tools\vsdevcmd.bat" -arch=x86

    MSBuild.exe "glew-cmake\build\glew.sln" /t:glew_s /p:Configuration=Release /p:Platform="Win32"
    
)