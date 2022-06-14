# Today's Target
1. User management and group management
2. LDAP server setup and configuration
3. Gitlab server setup and configuration
#

## User Management

We need to use User Management for a lot of important tasks in Linux such as onboarding, ofboarding, managing passwords, disabling accounts, enabling accounts, preserving home directory contents, and fixing permissions etc.
We see some important operations.

1. Creating a new user

> sudo -c "USER's FULL NAME" samit

>This will create a new user with the username "samit"

2. Creating a new password for a user or change the password

> sudo passwd samit 

Now write the new password, it will ask to confirm also.

3. Moving from one user to another

Suppose we are the user "livesmart' and we wants to move into the user samit.

> su samit

Now it will ask for password, type the password you will be into that user
