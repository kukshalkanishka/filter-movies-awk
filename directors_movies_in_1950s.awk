#! /usr/bin/awk
BEGIN{
  FS="|"
  value=""
  };
  ($2 ~ /195/ && value !~ $6){
    print $6
    value= value","$6
    }
    END{
      };
