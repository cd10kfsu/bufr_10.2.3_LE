#!/bin/sh -xe

. ../../configure.sh
rm -f *.o *.a
$CC $CC_OPTS_BUFRLIB -c *.c
$FC $FC_OPTS_BUFRLIB -c *.f
ar crv libbufr.a *.o

#-------------------------------------------------------------------------------
# or stand-alone compiling steps
# (decomment based on your compilers)

#Compiling BUFRLIB using the GNU gcc and gfortran compilers consists of the following 3 steps:
    
#    gcc -c -DUNDERSCORE *.c
#    gfortran -c -DUNDERSCORE -fno-second-underscore *.f
#    ar crv libbufr.a *.o 

# GNU compiler >=10
#    gcc-11 -std=c90 -c -DUNDERSCORE *.c
#    gfortran-11 -c -DUNDERSCORE -fno-second-underscore -fallow-argument-mismatch -fallow-invalid-boz *.f
#    ar crv libbufr.a *.o

#Compiling BUFRLIB using the PGI pgcc and pgf77 compilers consists of the following 3 steps:

#    pgcc -c -DUNDERSCORE *.c
#    pgf77 -c -DUNDERSCORE -Mnosecond_underscore *.f *.F
#    ar crv libbufr.a *.o 

#Compiling BUFRLIB using the Intel icc and ifort compilers consists of the following 3 steps:

#    icc -c -DUNDERSCORE *.c
#    ifort -c -DUNDERSCORE *.f *.F
#    ar crv libbufr.a *.o 

#    gcc -c -DUNDERSCORE *.c
#    ifort -c -DUNDERSCORE *.f 
#    ar crv libbufr.a *.o 
#Compiling BUFRLIB on an IBM using the IBM xlc and xlf compilers consists of the following 3 steps:
#
#    xlc -c -DUNDERSCORE *.c
#    xlf -c -qextname *.f *.F
##    ar crv libbufr.a *.o 
