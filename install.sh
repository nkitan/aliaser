function validor()
{

var decider = 0

if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
then                         
    decider=1
    
elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
then
        decider=2
        
else
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
echo "alias aliaser='cd ~/aliaser/ && ./run.sh'" >> ~/.aliases
validor
echo "Installation Successfull! try running aliaser by typing 'aliaser'"
