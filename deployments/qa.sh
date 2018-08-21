npm install -g now
# sudo npm install -g --unsafe-perm now
echo "deploying..."
now secrets add client_id $(echo $CLIENT_ID)
now secrets add client_secrect $(echo $CLIENT_SECRECT)
URL=$(now --public -t $now_token)
echo "running acceptance on $URL"
curl --silent -L $URL