
  

# 3msg (mmmsg)

Simple script wirtten in bash, to help with receiving and sending sms with ModemManager-cli.

 # Versions:    
### simple
Script takes two arguments: <br>
`./simple-3msg.sh operation message_id` <br>
Implemented operations: <br>
`list` - Lists all messages on modem and their states. (Doesn't use `message_id` parameter) <br>
`read` - Shows message with supplied `message_id` (Uses `message_id` parameter) <br>
`create` - Allow you to create new text message. Will ask for recipient number and message content.  (Doesn't use `message_id` parameter) <br>
`send` - Sends message with selected `message_id` (Uses `message_id` parameter) <br>
`delete` - Deletes message with selected `message_id` (Uses `message_id` parameter) <br>
### extended (uses [gum](https://github.com/charmbracelet/gum))
The script accepts zero arguments. <br>
When you run it, prompts appear for a choice of actions, which are quite similar to those from the simple version of the script. <br>
## Dependencies
For script simple-3msg: <br>
-> [modemmanager](https://github.com/freedesktop/ModemManager) <br>
For script 3msg: <br>
-> [modemmanager](https://github.com/freedesktop/ModemManager) <br>
-> [gum](https://github.com/charmbracelet/gum) <br>

## Installation
You should add permission to execute (using `chmod +x`) the script, then run it normally `./filename`. <br>
<br>
If you want to use it "as command" the script needs to be executable, with: <br>
<br>

```bash
chmod +x scriptname
```

<br>
Also, you want the script to be located in a directory that is in your PATH. To see your PATH use: <br>
<br>

```bash
echo $PATH
```

<br>
Your choices are: to move (or link) the file into one of those directories, or to add the directory it is in to your PATH.<br>
<br>
You can add a directory to your PATH with:<br>
<br>

```bash
PATH=$PATH:/name/of/my/directory
```

<br>
and if you do this in the file $HOME/.bashrc it will happen for each of your shell's automatically.<br>
<br>
 [Link](https://stackoverflow.com/a/34656149/19238352) <br>

### Tested wwan cards
-> EM7455 (Dell Latitude E7270) <br>

copyleft (ɔ) kam021m<br>

