#! /usr/bin/awk -f

BEGIN{
  FS="|"
  lines=","
};
  $8 ~ /Korean/{
   one_line= $1 ":" $8
lines= lines","one_line
   };
   END{
     print lines
    };
