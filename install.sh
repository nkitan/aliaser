function validor()
{
 if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
 then                         
     echo "source $HOME/.aliases" >> $HOME/.zshrc
     source $HOME/.zshrc 
     echo "Installed Successfully on zsh"
    
 elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
 then
      echo "source $HOME/.aliases" >> $HOME/.bashrc
      source $HOME/.bashrc
      echo "Installed Successfully on bash"
        
 else
       echo "Unknown SHELL!!! try contacting https://github.com/nkitan "      # you can try adding your own sh's, feel free.
 fi
}

touch $HOME/.aliases

mkdir $HOME/aliaser/
sudo mv aliaser.py $HOME/aliaser/
sudo mv run.sh $HOME/aliaser/

echo "alias aliaser='cd $HOME/aliaser/ && ./run.sh'" >> $HOME/.aliases
chmod +x $HOME/aliaser/run.sh
validor
echo "restart your shell and try running aliaser by typing 'aliaser'"
