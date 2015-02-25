#!/bin/bash
LIBVERSION=1.0.0
LASTCOMMIT="Initial packaging commit"

LIBPROJECTNAME=opencvblobs
LIBNAME=lib$LIBPROJECTNAME
TARBALLPATH=${LIBNAME}-${LIBVERSION}

#clean up
rm -r ${LIBNAME}-*
rm -r ${LIBNAME}_*

#build tarball
mkdir -p $TARBALLPATH/src
cp src/* $TARBALLPATH/src/
cp $LIBPROJECTNAME.pro $TARBALLPATH/
cp $LIBNAME.pc $TARBALLPATH/
echo "VERSION = $LIBVERSION" >> $TARBALLPATH/src/src.pro
tar cfJ ${LIBNAME}_${LIBVERSION}.orig.tar.xz $TARBALLPATH

cp -r debian $TARBALLPATH/

export PATH=/opt/Qt/5.2.1/gcc_64/bin:$PATH
cd $TARBALLPATH
echo $(pwd)
dch --create -v $LIBVERSION --package $LIBNAME "$LASTCOMMIT"
dch --release "Automated Package Build"

fakeroot debian/rules clean build install binary
