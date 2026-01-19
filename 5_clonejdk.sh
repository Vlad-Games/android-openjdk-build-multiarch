#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 21 ]]; then
    git clone --branch jdk21.0.1 --depth 1 https://github.com/openjdk/jdk21u openjdk-21
else
    # git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
    # git clone https://github.com/openjdk/jdk17u.git openjdk-17
    # cd openjdk-17
    # git checkout jdk-17.0.16+2
    git clone --depth 1 --branch jdk-17.0.16+2 https://github.com/openjdk/jdk17u.git openjdk-17
    # cd ..
fi
