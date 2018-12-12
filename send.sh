DeviceIPname=$1
DeviceType=$2
$LOGIN=$3
$PASSz=$4

   #missing Device type?
                if [[ $DeviceType = "" ]]; then
                        echo "You are missing the Device type!"
                        echo "example:"
                        echo "./send.sh DeviceIPname DeviceType LOGIN PASSWORD"
                        exit 1
                        break
                        exit 1

                else
                
    #Device Type found but what kind?

                        if [[ $DeviceType = "FirewallJuniper" ]]; then
                        #some command                 
                        echo "Device is a $DeviceType"
                        ./juniper.exp $LOGIN $DeviceIPname $PASSz >>./TEMPlist.log
                        fi

                        if [[ $DeviceType = "Switch" ]]; then
			                  #some command
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIPname">>./TEMPlist.log
                        fi


                        if [[ $DeviceType = "F5" ]]; then
			                    #some command
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIPname">>./TEMPlist.log
                        fi

                fi
