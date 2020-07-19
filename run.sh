python3 aliaser.py

 if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]
 then                         
     source ~/.zshrc 
     
    
 elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]
 then
      source ~/.bashrc
