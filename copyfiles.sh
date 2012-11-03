#!/bin/bash

# Mount windows share and use file for network credentials
# /mnt/win/folder folder created for windows smb mounts. I setup a serarate folder for each share
sudo mount -t smbfs //windows_server/share/folder /mnt/win/folder -o credentials=/etc/.smbpasswd

# Copy file(s) cached website from local directory to mount
sudo cp /home/user/.urlwatch/cache/* /mnt/win/folder/file/cache/

# Copy file changes.txt from local directory to mount
sudo cp /home/user/.urlwatch/changes.txt /mnt/win/folder/file/

# Unmount the windows share
sudo umount /mnt/win/folder
