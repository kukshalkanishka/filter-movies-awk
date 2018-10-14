#! /usr/bin/awk
BEGIN{
  FS="|"
  line=0
  };
  $5 ~ /Drama/ && $5 ~ /Thriller/ {
    line+=1
    
    };
    END{
      print line
      };
