function validor()
{
 if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
 then                         
     echo "source .aliases" >> ~/.zshrc
     source ~/.zshrc 
     echo "Installed Successfully on zsh"
    
 elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
 then
      echo "source .aliases" >> ~/.bashrc
      source ~/.bashrc
      echo "Installed Successfully on bash"
        
 else
       echo "Unknown SHELL!!! try contacting https://github.com/nkitan "      # you can try adding your own sh's, feel free.
 fi
}

touch ~/.aliases
echo "alias aliaser='cd ~/aliaser/ && ./run.sh'" >> ~/.aliases
validor
echo "try running aliaser by typing 'aliaser'"
