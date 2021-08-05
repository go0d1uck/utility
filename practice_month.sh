#!/usr/bin/env bash

week_dict=("January" "February" "March" "April" "May" "June" "July" "August"
  "September" "October" "November" "December")
  echo -e "Please Choice Mode:\n1:english->num\n2:num->english"
  read mode
  while true
  do
    let index=RANDOM%12
    if [ $mode -eq 2 ];
    then
      echo $[ $index+1 ]
      read InputWeek
      if [ ${week_dict[$index]} == $InputWeek ];
      then
        echo "OK"
      else
        echo "ERORR"
        echo ${week_dict[$index]}
      fi
    else
      echo ${week_dict[$index]}
      read InputIndex
      let InputIndex--
      if [ $InputIndex -eq $index ];
      then
        echo "OK"
      else
        echo "ERORR"
        echo $[ $index+1 ]
      fi
    fi
  done
