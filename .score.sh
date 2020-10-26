if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -w "Marks" prog.R | wc -l) -gt 0 ]&&[ $(grep -w "if" prog.R | wc -l) -gt 0 ]&&[ $(grep -w "else" prog.R | wc -l) -gt 0 ]&&[ $(grep -w "80" prog.R| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






