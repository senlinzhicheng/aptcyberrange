password=$(echo threat-detection | base64)
curl -X PUT -H 'kbn-version: 5.5.1' -H "Content-Type: application/json" --data '{"user": "'tiamat'","password": "'$password'", "url": "http://'10.0.0.12'","port": "'55000'","manager": "'$(hostname)'", "insecure": "true","active": true,"extensions": {"oscap": true, "audit": true, "pci": true}}' http://10.0.0.11:5601/api/wazuh-api/settings -k