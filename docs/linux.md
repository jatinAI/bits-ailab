# Linux Fundamentals

Earlier every operating system was designed for a particular hardware for performing a particular task, OS of one system can't be used for another operating system. Then UNIX was invented by Bell Laboratories, and it could be used on any hardware component, just needed a Kernel which was different  
> Written with [StackEdit](https://stackedit.io/). for each system.
Linux was developed by Linus Torvalds as an alternative of UNIX which could be free and easily available for everyone.

## Benefits of Linux

1. Its completely free, anyone can download it free from internet, make changes in the source code according to need, which is also freely available.
2. It is portable for any hardware platform.
3. It was made to keep running.
4. It is the most secure OS and versatile at the same time.

## Architecture of Linux

There are basically four layers in the architecture of the Linux Operating System-

					  Hardware
					     ^
					  Kernel
					     ^
					   Shell
					     ^
				  Application layer

1. Application Layer- It is the layer where the user interacts with the various applications or software.
2. Shell- This the layer which acts as an interface between the Application and the Kernel, it is a part of CLI Linux System.
3. Kernel- It is the layer most closest to the hardware, it is specially designed for a particular hardware. It has various functions like to Allocate resources to the processes, allocate memory to particular processes, establishing a connection with external hardware etc.
4. Hardware- It is the innermost layer of this architecture.

## Basic Commands

1. **pwd**- To show the current working directory.
2. **ls**- To list down all the directories or files present in the current working directory.

> ls -a   --> To show all the files including files starting with **.** also.

> **ls -l**   --> Show the author of files also, including the owner , group, and the permissions for various users.

3. **whoami**- print the username of the system.
4. **cd**- To change the working directory

> cd nameofdir - will go into a directory named nameofdir which is inside the current one.

> cd .. - to move one step backward

> cd  - to move to home/username directory

5. **mkdir** - To create a new directory 

> mkdir fold1 fold2 fold3 - will create the folders

> mkdir fold1/fold2 - will create fold2 inside fold1

6. **touch filename** - it is used to create an empty file.
7. **rmdir** - to remove a directory
e.g. rmdir new
8. **mv** - To move any file or to rename also

>mv file.txt new-file.txt  - this will change the name of file "file.txt" to "new-file.txt"

>mv current_file_address destination_address - This will move the file

9. **cp** - Used for copying a file. 

> cp file_name new_name - If wants to copy in the same directory, this command will create a new file with new name.

> cp current_file_address destination_address  

10. **find** - This is used to search for a file with particular keywords

>find , -name '\*.md\*   -> This will search for all files with ".md" extension.

>find . -name samit - will search for all files with name "samit".

This way there are multiple ways to search files with different filters.


## File Permissions in Linux

In Linux there are three types of users for a file-
* Owner of the file
* Users in the group
* Others - who might access the file

We have many files in our system, we can decide who can read the file, execute the file or modify the contents of this file. 
These are particularly known as _**modes**_.
This makes it very secure.

The commands to change the owner or the modes of a file are as follows- 
1. **chown** - This command is used to change the owner of the file

Suppose the current owner of a file named "linux-essentials.txt" is "**livesmart**" and we want to make "**avenger**" the new owner, use the following command-

> chown avenger linux-essentials.txt

And if we want to change the owner to and from root, we need to use sudo before the above command.

> sudo chown root linux-essentials.txt

- If we want to change the group just put ": " before the name of group in place of file name in the above command.

> chown :group1 linux-essentials.txt

2. **chmod** - It is used for changing the mode of opening the file by a particular user, whether it be the owner, user from the group.

Let's see how we can know that what permissions are given to any user-
> ls -l

After running this command you will get a list, one of which looks like this
> drwxr-xr-x 	5	 livesmart	 livesmart	 4096	 Jun 10	 16:39	 Desktop

here the first part shows the permissions, lets see how
* first letter shows whether it is a file or a directory, "d" for a directory, and "-" for a file.
* next three letters show the permission for the owner of the file, rwx means the owner has permission to read, write as well as execute.
* next three shows permission for user in the group, whichever letter is missing, that permission is not allowed.
* next three show for any other user who tries to access it

To change the permission, say , for the owner

> chmod u=rx file.txt

Now the owner will not be able to modify the file. 
we can use "o" and "g" in place of "u" to define for others and users in group respectively.




  


### References-
* https://linux.die.net/Intro-Linux/index.html
* https://www.freecodecamp.org/news/the-linux-commands-handbook/#the-linux-find-command

