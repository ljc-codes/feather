echo "=> Toucan is building server service!";

server_path=$(dirname $0)/../services/server;
cd $server_path

# Make enviroment
if [ ! -d ./env ]; then
  python3 -m venv env;
  source ./env/bin/activate;
  pip3 install -r ./requirements.txt;
  echo "-> Built python server enviroment";
else 
  source ./env/bin/activate;
  echo "-> Python server enviroment already built";
fi

# Run Server 
echo "=> Toucan is about to run server service locally!";
cd ./src;
uvicorn main:app;
cd ../..;