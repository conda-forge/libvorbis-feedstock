mkdir build
cd build

cmake %CMAKE_ARGS% ^
  -GNinja ^
  -D CMAKE_BUILD_TYPE=Release ^
  -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -D BUILD_SHARED_LIBS=ON ^
  %SRC_DIR%
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
