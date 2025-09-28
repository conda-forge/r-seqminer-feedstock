#!/bin/bash

export DISABLE_AUTOBREW=1
sed -i 's/@PKG_CFLAGS@/@PKG_CFLAGS@ -Wno-implicit-function-declaration/' src/Makevars.in
${R} CMD INSTALL --build . ${R_ARGS}
