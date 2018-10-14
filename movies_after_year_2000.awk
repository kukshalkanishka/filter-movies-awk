#! /usr/bin/awk
BEGIN{
  FS="|"
  };
  ($2 >= 2000){
    print $1 ":" $2
    };
    END{
      };
