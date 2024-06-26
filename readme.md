# ESXi Drive Temperature Monitor

This project provides a shell script to automatically fetch device UIDs and display the drive temperatures on an ESXi host.

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)

## Overview
The provided script dynamically retrieves the UIDs of all storage devices on the ESXi host and uses the `esxcli` command to fetch and display their drive temperatures.

## Prerequisites
- VMware ESXi version supporting `esxcli` commands.
- SSH access to the ESXi host.
- Necessary permissions to execute `esxcli` commands.

## Installation
1. Copy the script to your local machine or directly to the ESXi host.

2. Make the script executable:
```bash
chmod +x temp.sh
```

3. Run the script:
```bash
./temp.sh
```


## Usage

1. Open a terminal and connect to your ESXi host via SSH.
2. Upload the script to the ESXi host if not already present.
3. Execute the script to display the temperatures of your storage devices:
./temp.sh


The output will display the temperature for each detected drive, similar to the following:

Drive Temperature for device t10.NVMe*****: 30°C
Drive Temperature for device eui.*****:: 25°C
Drive Temperature for device t10.ATA****:: 28°C

## License
This project is licensed under Apache License, Version 2.0.

## Author
Nova Upinel Chow  
Email: dev@upinel.com

## Buy me a coffee
If you wish to donate us, please donate to [https://paypal.me/Upinel](https://paypal.me/Upinel), it will be really lovely.
