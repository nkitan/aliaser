function validor()
{
if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
then                         #Check sh version
     #assume Zsh    
         local decider=1
elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
then
      # assume Bash
        local decider=2
else
   # assume something else
       echo "Unknown SHELL!!! try contacting https://github.com/nkitan "      # you can try adding your own sh's, feel free.
fi


#Validation Complete. Proceed to action

if [ "$decider" == '1' ]
then    
     echo "source .aliases" >> ~/.zshrc
     source ~/.zshrc && echo "Installed Successfully"
     
elif [ "$decider" == '2' ]
then
      echo "source .aliases" >> ~/.bashrc
      source ~/.bashrc && echo "Installed Successfully"
      
fi      
}


touch ~/.aliases
python3 aliaser.py
validor
