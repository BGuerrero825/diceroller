#!/bin/bash

# move into the repo directory
cd "$HOME/dev/diceroller/"
readme="README.md"

git pull

# ROLL!
random=$((RANDOM % 100 + 1))

echo "----- `date +%D` -----">> $readme
in100=$(($random % 100))
in20=$(($random % 20))
if [ $in100 -eq 0 ]; then
  # celebrate
  echo "# W O W" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
  echo "# 100!!!" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
  echo "## 100" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
  echo "1/100" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
  echo "## 100" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
  echo "# 100!!!" >> $readme
  git add $readme
  git commit -m "rolled 100!!!" 
elif [ $in20 -eq 0 ]; then
  # commit 3x
  echo "## $random!" >> $readme
  git add $readme
  git commit -m "rolled $random!!" 
  echo "1/20" >> $readme
  git add $readme
  git commit -m "rolled $random!!" 
  echo "## $random!" >> $readme
  git add $readme
  git commit -m "rolled $random!!" 
else
  echo "$random" >> $readme
  git add $readme
  git commit -m "rolled $random" 
fi

git push
