#!/bin/bash
set -e
if [[ "$TARGET_JDK" == "arm" ]]; then
git clone --depth 1 https://github.com/openjdk/aarch32-port-jdk8u openjdk
elif [[ "$BUILD_IOS" == "1" ]]; then
git clone --depth 1 https://github.com/corretto/corretto-8 openjdk
LC_ALL=C sed -i.bak 's/.\{1\}vard Wigtil)/Edvard Wigtil)/' \
    openjdk/jaxp/src/com/sun/org/apache/xml/internal/serializer/Encodings.properties
else
# Use aarch32 repo because it also has aarch64

git clone --depth 1 https://github.com/openjdk/jdk8u openjdk
fi
