source celogin_cli.conf
sudo docker run -d -t ibm-acf
export CONTAINER_ID=$(sudo docker ps -alq)
sudo docker exec $CONTAINER_ID sh -c "cd ibm-acf/subprojects/ce-login/; $CLI_CREATE"
sudo docker exec $CONTAINER_ID sh -c "cd ibm-acf/subprojects/ce-login/; $CLI_VERIFY"
sudo docker cp $CONTAINER_ID:/ibm-acf/subprojects/ce-login/$ACF_OUT .
sudo docker kill $(sudo docker ps -q)
sudo chmod 755 $ACF_OUT
