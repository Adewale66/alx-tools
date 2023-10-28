#!/bin/bash

url="https://github.com/alx-tools/Betty.git"

git clone "$url"

cd "Betty"

file="install.sh"

if [ -f "$file" ]; then
        sudo "./$file"
        cat ../package > betty
        chmod a+x betty
        sudo mv betty /bin/
	cd ..

else
        echo "file not found $file"
        exit 2
fi
