#!/bin/bash

cd ../../

# Creating directories
if [ -e build ]; then
	cd build
else
	mkdir build && cd build
fi
if [ -e AppImage ]; then
	cd AppImage
else
	mkdir AppImage && cd AppImage
fi
if [ ! -e AppDir ]; then
	mkdir AppDir && cp ../../packaging/AppImage/AppRun AppDir/
else
	cp ../../packaging/AppImage/AppRun AppDir/
fi
chmod 775 AppDir/AppRun

cmake ../../ \
	-Dproject-name_CONAN=ON \
	-Dproject-name_APPIMAGE=ON \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=AppDir/usr
cmake --build . --target install

linuxdeploy-x86_64.AppImage --appdir AppDir --output appimage && echo "Your AppImage is on ${PWD}"
