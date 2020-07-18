

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