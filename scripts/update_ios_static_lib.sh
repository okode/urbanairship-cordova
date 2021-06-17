#!/bin/bash

VERSION=9.4.0

echo "Downloading libUAirship-$VERSION.zip from bintray..."
curl -s -LO "https://urbanairship.bintray.com/iOS/urbanairship-sdk/$VERSION/libUAirship-$VERSION.zip"
echo "Unzipping libUAirship into temp directory $SCRIPT_DIRECTORY/temp..."
unzip -q -d temp libUAirship-$VERSION.zip
echo "Making room for Airship directory in src/ios/..."
rm -rf src/ios/Airship
echo "Moving Airship directory to src/ios/..."
mv -f temp/Airship src/ios/
echo "Cleaning up..."
rm -rf temp
rm -rf libUAirship-$VERSION.zip
echo "Done"
