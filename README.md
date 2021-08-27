# Docker-ibm-acf
Must have docker installed on target machine

## Build docker image
Run the builddockerimage.sh file
```
./builddockerimage.sh
```
This clones the head of https://github.com/ibm-openbmc/ibm-acf and builds the executable as well as installs dependencies
## Generate and copy the service file to the current working directory
```
./generateandcopyservicefile.sh
```
service.acf file should now be in the working directory

## Edit arguments for acf generation tool
```
vim celogin_cli.conf
```
Editing the serial number, password, acf file output, and expiration date is easy within this file

Rerun ./generateandcopyservicefile.sh after you've configured the arguments

## Remove image
May want to do this to clean the previous image you have pulled down
```
sudo docker image ls
sudo docker image rm -f IMAGE ID
```
