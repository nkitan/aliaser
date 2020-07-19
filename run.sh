python3 aliaser.py

 if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
 then                         
     source $HOME/.zshrc 
       
 elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
 then
      source $HOME1/.bashrc
 fi
