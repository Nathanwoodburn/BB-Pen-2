# BB-Pen-2

The task this week is to get root access on the kali.boysbrigade.au server.  
You have been given a user account on the server (from BB-Pen-1).  
Use this account to gain access to the admin account.

## Tutorial
1. Login as `bob` (password in seconduser.pass from `gituser`).
2. See if you can change directory to test  
You probably get this message`-rbash: cd: restricted`.  
This means that you are in a restricted shell. Try to login to a normal shell (`/bin/bash`).  
Hint `su` is the command to switch user (switch to yourself).  
Need help? Look in [H1.md](H1.md) for help.

3. Once you have a normal shell, try to change directory to test again.  
If you are able to change directory, go back to the home directory (just run `cd`).  

4. One of the best ways to get root access is to find a program that is running as root, and exploit it.  
Run `cat /etc/crontab` to see all the commands that are run on a schedule by the admin.  
Notice anything you can exploit?

5. If you found something, try to exploit it.  
Something you can try is running this to add yourself to the sudo (admin) group.
```bash
echo 'bob  ALL=(ALL:ALL) ALL' >> /etc/sudoers
```
See if you are able to run `sudo whoami`. This should print `root` if you have admin access.  
(You might need to wait a minute for the cron job to run)
