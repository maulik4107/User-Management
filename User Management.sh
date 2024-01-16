#!/bin/bash

a=0
while [ $a -eq 0 ]
do
        echo -e "####################\n1.Create Users\n2.Delete Users\n3.Exit"
        echo -e "####################\nEnter Your Choice: "
        read ch
        if [ $ch -eq 1 ]
        then
                echo -e "####################\nEnter Username : "
                read user
                sudo useradd $user
                sudo usermod -aG Visiter $user
                echo -e "####################\nAccount for $user is created !"
                echo -e "$user has Read Only permission."
                echo -e "Do you want to chnage the permission?"
                echo -e "####################\n1.Yes\n2.No"
                echo -e "Enter your choice: "
                read choice

                if [ $choice -eq 1 ]
                then
                        echo -e "Select the permissions from below list."
                        echo -e "####################\n1.Read/Write/Execute\n2.Read/Write"
                        echo -e "Enter Your Choice: "
                        read tmp
                        if [ $tmp -eq 1 ]
                        then
                                sudo usermod -aG Tester $user
                                echo -e "Read/Write/Execute Permissions are assigned to $user"
                        elif [ $tmp -eq 2 ]
                        then
                                sudo usermod -aG Developer $user
                                echo -e "Read/Write Permissions are assigned to $user"
                        fi
                fi
        elif [ $ch -eq 2 ]
        then
                 echo -e "Enter the User Name: "
                 read username
                 sudo userdel $username > error.txt 2>&1
                 var=$?
                 if [ $var -eq 0 ]
                 then                       
                         echo -e "$username is Deleted successfully!"
                 else
                         echo -e "$username is not Exist!!!"
                 fi
        elif [ $ch -eq 3 ]
        then
                a=`expr $a + 1`
        elif [[ $ch -gt 3 || $ch -lt 0 ]]
        then
                echo -e "Select Correct Option !"
        elif [[ "$ch" =~ [^0-9] ]]
        then
                echo -e "Select Correct Option !"
        fi
 done