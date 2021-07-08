#!/bin/bash
cd prebuilt-ios-lib
echo "Airship - Unzipping prebuilt iOS library (version 9.4.0)"
unzip Airship-iOS-9.4.0.zip
echo "Airship - Moving prebuilt iOS library to src/ios"
mv -f Airship ../src/ios
echo "Airship - Done"
cd -

