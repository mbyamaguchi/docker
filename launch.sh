docker container run --rm --gpus all -v /mnt/c/Users/wtrho/Desktop/docker:/mywork -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -it mycont:1 bash
