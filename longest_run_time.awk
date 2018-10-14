#! /usr/bin/awk
BEGIN{
  FS="|"
  value=0
  };
((0+$4) > value) { 
     value=(0+$4)
     }; 
    END {
       print value
       }; 
