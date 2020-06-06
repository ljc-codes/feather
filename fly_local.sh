echo "---------------------------------------------------------------------------"
echo "                            Welcome to toucan!"
echo "---------------------------------------------------------------------------"

wait 5;
echo "> Toucan is about to fly (run) locally!";

# Builds and runs server service. 
open -a Terminal.app ./scripts/run_server.sh

# Builds and runs client service. 
open -a Terminal.app ./scripts/run_client.sh
