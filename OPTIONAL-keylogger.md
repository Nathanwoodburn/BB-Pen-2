# OPTIONAL BB-Pen-2

The task this week is to create a simple keylogger that will log all the keys pressed on the keyboard and save them to a file.  
The program should run in the background and not be visible to the user.  

## Requirements
- Access to the kali.boysbrigade.au server (or another linux machine) (This will be provided)

## Instructions
1. SSH into the server using the provided credentials following the instructions from last week.
2. Create a new directory for your project and navigate into it. (Put your name in the directory name to avoid conflicts between other members)
3. In that directory create a new executable file to run the keylogger.
4. Write a script (file that ends in .sh) that will log all the keys pressed on the keyboard and save them to a file.
5. Try to make the keylogger look like it is not running (Hint: show the user a fake command prompt)

## Running the keylogger
```sh
# Run normally
./keylogger.sh
# Run so that it will close the SSH session when you close the logger
exec ./keylogger.sh
```

## Hints
1. Infinite loop:
    ```sh
    while true
    do
        # Your code here
        # Will run forever
    done
    ```
2. Get an input from the user:
    ```sh
    read -p "Enter something: " input
    echo "You inputed $input"
    ```
3. Get the message of the day (Screen that appears when you login):
    ```sh
    cat /etc/motd
    ```
4. Run a variable as a command:
    ```sh
    command="ls"
    $command
    # This will run the 'ls' command
    ```