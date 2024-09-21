localpath="/mnt/c/Users/username/Desktop/docker"
virtualpath="/mywork"
docker container run --rm --gpus all -v ${localpath}:${virtualpath} -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -it mycont:1 bash
