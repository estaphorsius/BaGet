#!/bin/bash
WORKSPACE=$PWD
BUILD_VERSION=`cat VERSION`
echo WORKSPACE=$WORKSPACE
echo BUILD_VERSION=$BUILD_VERSION

dotnet publish src/BaGet/BaGet.csproj -c Release -o $WORKSPACE/temp/artifacts/BaGet -p:Version=$BUILD_VERSION
cp src/BaGet/baget.db $WORKSPACE/temp/artifacts/BaGet/
 
cd $WORKSPACE/temp/artifacts/BaGet
rm -f appsettings.Development.json
tar -czf $WORKSPACE/temp/artifacts/BaGet-$BUILD_VERSION.tar.gz *

cd $WORKSPACE
rm -Rf $WORKSPACE/temp/artifacts/BaGet
