
  

# 3msg (mmmsg)

Simple script wirtten in bash, to help with receiving and sending sms with ModemManager.

 # Versions:    
### simple
Script takes two arguments:
`./simple-3msg.sh operation message_id`
Implemented operations:
`list` - Lists all messages on modem and their states. (Doesn't use `message_id` parameter)
`read` - Shows message with supplied `message_id` (Uses `message_id` parameter)
`create` - Allow you to create new text message. Will ask for recipient number and message content.  (Doesn't use `message_id` parameter)
`send` - Sends message with selected `message_id` (Uses `message_id` parameter)
`delete` - Deletes message with selected `message_id` (Uses `message_id` parameter)
### extended (uses [gum](https://github.com/charmbracelet/gum))
The script accepts zero arguments.
When you run it, prompts appear for a choice of actions, which are quite similar to those from the simple version of the script. 
## Dependencies
For script simple-3msg:
-> [modemmanager](https://github.com/freedesktop/ModemManager)
For script 3msg:
-> [modemmanager](https://github.com/freedesktop/ModemManager)
-> [gum](https://github.com/charmbracelet/gum)

## Installation
You should add permission to execute (using `chmod +x`) the script, then run it normally `./filename`.

If you want to use it "as command" the script needs to be executable, with:

```bash
chmod +x scriptname
```

Also, you want the script to be located in a directory that is in your PATH. To see your PATH use:

```bash
echo $PATH
```

Your choices are: to move (or link) the file into one of those directories, or to add the directory it is in to your PATH.

You can add a directory to your PATH with:

```bash
PATH=$PATH:/name/of/my/directory
```

and if you do this in the file `$HOME/.bashrc`/`$HOME/.zshrc` it will happen for each of your shell's automatically.

[Link to stack overflow](https://stackoverflow.com/a/34656149/19238352)
### Tested wwan cards
-> EM7455 (Dell Latitude E7270)

copyleft (ɔ) kam021m

