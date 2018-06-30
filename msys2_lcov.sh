#!/usr/bin/env bash
curl -sL https://github.com/linux-test-project/lcov/releases/download/v1.13/lcov-1.13.tar.gz | tar xz
cd lcov-1.13
make install