#!/bin/bash

git clone https://github.com/Brock5555/device_realme_RMX2020.git /device/realme/RMX2020


. build/envsetup.sh && lunch omni_RMX2020-eng && export LC_ALL="C" && export ALLOW_MISSING_DEPENDENCIES=true && mka recoveryimage


cd work/out/target/product/RMX2020

curl -sL https://git.io/file-transfer | sh

./transfer wet *.zip

./transfer wet *.img
