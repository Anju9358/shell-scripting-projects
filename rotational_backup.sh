#!/bin/bash
#########################
# Author: Anju
# Date: 13/4/2025
# version: V1
#Write a shell script to take a rotational backup of a perticular directory
########################################
read -p "Please enter source directory path: " src_dir

#to check if this path exist or not
if [ ! -d "$src_dir" ]; then
	echo "This $src_dir does not exist"
	exit 1
fi

read -p "Please enter Target directory path: " target_dir #where you wants to take backup
if [ ! -d "$target_dir" ]; then
	echo "This $target_dir does not exist"
	exit 1
fi

curr_time_stamp=$(date +%Y-%m-%d-%H-%M-%S) #this is just for current time
backup_file=$target_dir/$curr_time_stamp.tgz #this will decide the path and name of backup file
#function defination
function backup_script {
   tar czf "$backup_file" "$src_dir"
   if [ $? -eq 0 ]; then
        echo "Backup taken successfully at $curr_time_stamp ."
   else
        echo "error: Try again to take backup"
   fi
}
function perform_rotation {
     backup=($(ls -t "$target_dir"/*tgz))
     if [ "${#backup[@]}" -gt 5 ]; then
           echo "performing rotation for 5 backups files"
           backupFiles_to_delete=("${backup[@]:5}")
           for file in "${backupFiles_to_delete[@]}"; do
              rm -rf "$file"
	      echo "Deleted old backup: $file"
           done
      fi
}

perform_rotation #calling functions
backup_script
