DeviceIP=$1
DeviceType=$2

   #missing Device type?
                if [[ $DeviceType = "" ]]; then
                        echo "You are missing the Device type!"
                        echo "example:"
                        echo "./send.sh 127.0.0.1 deviceType"
                        exit 1
                        break
                        exit 1

                else
                
    #Device Type found but what kind?

                        if [[ $DeviceType = "FirewallJuniper" ]]; then
                        #some command                 
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIP">>LocalIPlist
                        fi

                        if [[ $DeviceType = "Switch" ]]; then
			                  #some command
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIP">>LocalIPlist
                        fi


                        if [[ $DeviceType = "F5" ]]; then
			                    #some command
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIP">>LocalIPlist
                        fi

                        if [[ $DeviceType = "Juniper" ]]; then
			                  #some command
                        echo "Device is a $DeviceType"
                        echo "ssh $DeviceIP">>LocalIPlist
                        fi
                fi
