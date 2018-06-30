#!/usr/bin/env bash
lcov -c -d . -o coverage.info
echo ====
lcov -r coverage.info '*/mingw64/*' '*/mingw32/*' '/c/Qt/*' '*/test/*'  -o coverage.info
echo ====
genhtml coverage.info -o coverage