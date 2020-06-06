echo "=> Toucan is building client service!";

client_path=$(dirname $0)/../services/client;
cd $client_path

# Make node enviroment
if [ ! -d ./node_modules ]; then
  npm install 
  echo "-> Built node client enviroment";
else 
  echo "-> node client enviroment already built";
fi

# Run Server 
echo "=> Toucan is about to run client service locally!";
npm run serve
cd ../..;