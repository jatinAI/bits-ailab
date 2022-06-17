# Steps for Installing GitLab on a local machine using IP Address

 I have list down all the steps which will be required for installing GitLab on your local machine , to configure it and run it successfully.


## Updating system
> **sudo apt-get update -y**

> **sudo apt-get upgrade -y**

> **sudo apt-get install sudo -y**

## Installing Gitlab Dependencies

> **sudo apt install curl openssh-server ca-certificates postfix -y**

> Selecting Internet Site

> And then enter the server domain name 


## Add GitLab repository with the curl command.

> **curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash**


## Installing the GitLab CE Community Edition

> **sudo apt install gitlab-ce -y**


## To change the gitlab url

> **sudo nano /etc/gitlab/gitlab.rb**

> Here we will not use ssl or domain name HTTPs, we will just use localhost for running

> Now change the "external url" with the ip address of yours

> To find the ip address execute the following command

> **hostname -I | awk '{print $1}'**

> Save and Exit the file


### Now our username is 'root' and to set new password for this use the following command

> **sudo gitlab-rake "gitlab:password:reset"**

>It will ask for username , enter root in it, and then it will ask password, set your own password


## Now comes the final step
> Copy the IP Address which you put in the external_url and paste it in the browser, GITLAB page will be opened, enter the credentials and you are in.
