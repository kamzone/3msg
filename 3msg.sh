#!/bin/bash
selector=$(echo -e "list\nread\ncreate\nsend\ndelete\n" | gum filter --placeholder "Select operation")
modem_no=0 # Set modem number value, determined using mmcli -L (0 is usually correct)

if [ $selector == 'list' ]
then
	echo "Listing all messages id's and states."
	mmcli -m $modem_no --messaging-list-sms
elif [ $selector == 'read' ]
then
	echo "Showing message with selected id."
	id=$(gum input --placeholder "message id")
	mmcli -m $modem_no -s $id
elif [ $selector == 'create' ]
then
	echo "Specify receipient number:"
	message=$(gum input --placeholder "receipient number")
	echo "Write your message:"
	number=$(gum write --placeholder "your message (<ESC> to end message)")
	mmcli -m $modem_no --messaging-create-sms="text='$message' ,number='$number'"
elif [ $selector == 'send' ]
then
	echo "Sending message with selected id."
	id=$(gum input --placeholder "message id")
	mmcli -s $id --send
elif [ $selector == 'delete' ]
then
	echo "Deleting message with selected id."
	id=$(gum input --placeholder "message id")
	mmcli -m $modem_no --messaging-delete-sms=$id
fi
