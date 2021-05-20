#!/bin/bash

input=/home/akash/gitlab/project_list.txt
echo $input

folder=backup_folder


mkdir -p /home/akash/gitlab/$folder
cd /home/akash/gitlab/$folder

path=$PWD
	while IFS=';' read -r directory url
	do
		mkdir -p $directory
		cd $directory
		git clone $url
		cd $path
	done < $input

	cd /home/akash/gitlab
	zip -r $folder.zip $folder
	backup_path=/home/akash/gitlab/backup
	mv $folder.zip  $backup_path	
