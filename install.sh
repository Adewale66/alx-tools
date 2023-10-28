#!/bin/bash

url="https://github.com/alx-tools/Betty.git"

git clone "$url"



file="install.sh"

if [ -f "$file" ]; then
        sudo "./Betty/$file"
        cat package > Betty/betty
        chmod a+x Betty/betty
        sudo mv Betty/betty /bin/
     

        betty "$@"

else
        echo "file not found $file"
        exit 2
fi
