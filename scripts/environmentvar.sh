#Printing all ENVs
printenv

#printing a particular local ENV
echo $Var_Name

#declaring local ENV
MY_VAR = 'LinuxSamit'

#making the local ENV a global ENV
export MY_VAR

#declaring a new global ENV
export NEW_VAR= 'A_NEW_VAR'

#To make userwide ENV
sudo nano ~/.bashrc
#Now Add the commands to make global ENV in the bashrc file, save and exit
source ~/.bashrc

#To unset a Environment Variable
unset NAME
