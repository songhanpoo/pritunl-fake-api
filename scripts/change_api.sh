ORIG_API_SERVER='app.pritunl.com'
ORIG_AUTH_SERVER='auth.pritunl.com'
FAKE_API=''

if hash find 2>/dev/null; then
    echo "Find found..."
else
    echo "Error: Package 'find' missing!"
    exit 1
fi
if hash sed 2>/dev/null; then
    echo "Sed found..."
else
    echo "Error: Package 'sed' missing!"
    exit 1
fi

set -e
echo "List Feature below
1.Change api to $FAKE_API
2.Reset
"
read -p "Pls choice above option" choice
if [ -z "$choice" ]
then 
	echo "feature can't be empty."
else
  if [ $choice == 1 ]
  then
    find /usr/lib/pritunl/lib/python3.8 -type f -print0 | xargs -0 sed -i "s/$ORIG_API_SERVER_ESCAPED/$FAKE_API_SERVER_ESCAPED/g"
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s/$ORIG_API_SERVER_ESCAPED/$FAKE_API_SERVER_ESCAPED/g"
    find /usr/lib/pritunl/lib/python3.8 -type f -print0 | xargs -0 sed -i "s/$ORIG_AUTH_SERVER_ESCAPED/$FAKE_AUTH_SERVER_ESCAPED/g"
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s/$ORIG_AUTH_SERVER_ESCAPED/$FAKE_AUTH_SERVER_ESCAPED/g"
    echo "Change to new api : $FAKE_API completed."
  elif [ $choice == 2 ]
  then
    find /usr/lib/pritunl/lib/python3.8 -type f -print0 | xargs -0 sed -i "s/$FAKE_API_SERVER_ESCAPED/$ORIG_API_SERVER_ESCAPED/g"
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s/$FAKE_API_SERVER_ESCAPED/$ORIG_API_SERVER_ESCAPED/g"
    find /usr/lib/pritunl/lib/python3.8 -type f -print0 | xargs -0 sed -i "s/$FAKE_AUTH_SERVER_ESCAPED/$ORIG_AUTH_SERVER_ESCAPED/g"
    find /usr/share/pritunl/www/ -type f -print0 | xargs -0 sed -i "s/$FAKE_AUTH_SERVER_ESCAPED/$ORIG_AUTH_SERVER_ESCAPED/g"
    echo "Reset to origin api completed."
  fi
exit 0
