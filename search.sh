#!/bin/ksh
#  *****Z
#
##########################
# Author Nick Farrow     #
# Initial Release: 0     #
##########################
RED='\033[0;31m'        #RED
GREEN='\033[0;32m'      #GREEN
YELLOW='\033[0;33m'     #YELLOW
NC='\033[0m'    #No Color

echo "What is your login?"
#read LOGIN
LOGIN="yourlogin"

echo "What is your password?"
#read PASSz
PASSz="yourpassword"

echo "What IP are you looking for?"
#read SearchIP
SearchIP="111.222.333.444"

if [ -z "$SearchIP" ]
then
  echo "Missing  IP!!!!!!!!"
  echo "missing file name"
  exit 1
else
  printf "Looking for $SearchIP\n"
  date
fi

echo "clearing local IP list"
cat /dev/null>./LocalIPlist
IFS=$'\n'       # make newlines the only separator
for x in $(cat ./AllDevices)
do
DeviceIP=$(echo $x|awk '{print $1}')
DeviceName=$(echo $x|awk '{print $2}')
DeviceType=$(echo $x|awk '{print $3$4$5$6$7}')
echo "$DeviceName using $DeviceIP is a $DeviceType"

#ForIPbase
./send.sh $DeviceIP $DeviceType $LOGIN $PASSz

#ForDeviceNameBase
#./send.sh $DeviceName $DeviceType $LOGIN $PASSz

sed -e "s/^/$DeviceName.../" TEMPlist.log >>./LocalIPlist
done
