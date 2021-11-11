#!/usr/bin/env bash

week_dict=("monday" "tuesday" "wednesday" "thursday" "friday" "saturday" "sunday")
  echo -e "Please Choice Mode:\n1:english->num\n2:num->english"
  read mode
  while true
  do
    let index=RANDOM%7
    if [ $mode -eq 2 ];
    then
      echo $[ $index+1 ]
      read InputWeek
      if [ ${week_dict[$index]} == $InputWeek ];
      then
        echo "$(tput setaf 2)OK$(tput sgr 0)"
      else
        echo "$(tput setaf 1)ERORR$(tput sgr 0)"
        echo ${week_dict[$index]}
      fi
    else
      echo ${week_dict[$index]}
      read InputIndex
      let InputIndex--
      if [ $InputIndex -eq $index ];
      then
        echo "$(tput setaf 2)OK$(tput sgr 0)"
      else
        echo "$(tput setaf 1)ERORR$(tput sgr 0)"
        echo $[ $index+1 ]
      fi
    fi
  done
