#!/bin/sh

# Get the list of all device UIDs
device_list=$(esxcli storage core device list | grep -E '^t10.|^eui.' | awk '{print $1}')

# Iterate through each device UID and fetch its temperature
for device in $device_list
do
    output=$(esxcli storage core device smart get -d $device)
    temperature=$(echo "$output" | grep "Drive Temperature" | awk '{print $3}')
    echo "Drive Temperature for device $device: $temperature°C"
done
