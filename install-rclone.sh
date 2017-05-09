#!/bin/sh

# from https://rclone.org/install/

wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
pushd cd rclone-*-linux-amd64

cp rclone /usr/bin/
chown root:root /usr/bin/rclone
chmod 755 /usr/bin/rclone

mkdir -p /usr/local/share/man/man1
cp rclone.1 /usr/local/share/man/man1/
mandb

popd
