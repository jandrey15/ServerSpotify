npm install -g now
# sudo npm install -g --unsafe-perm now
echo "deploying..."
URL=$(now --public -t $now_token)
echo "running acceptance on $URL"
curl --silent -L $URL