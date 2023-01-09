#!/bin/bash
# Created by kam021m
modem_no=0 # Set modem nuber value, determined using mmcli -L (0 is usually correct)

if [ $1 == 'list' ]
then
	echo "Listing all messages id's and states."
	mmcli -m $modem_no --messaging-list-sms
elif [ $1 == 'read' ]
then
	echo "Showing message with selected id."
	mmcli -m $modem_no -s /org/freedesktop/ModemManager1/SMS/${2}
elif [ $1 == 'create' ]
then
	echo "Specify recipient number:"
	read number
	echo "Write your message:"
	read message
	mmcli -m $modem_no --messaging-create-sms="text='$message' ,number='$number'"
elif [ $1 == 'send' ]
then
	echo "Sending message with selected id."
	mmcli -s $2 --send
elif [ $1 == 'delete' ]
then
	echo "Deleting message with selected id."
	mmcli -m $modem_no --messaging-delete-sms=$2
fi
