#! /usr/bin/awk
BEGIN{
  FS="|"
};
($9 ~ /Hong Kong/) && ($10 > 8) && ($10 < 9){
  print $1 ":" $9 ":" $10
  }
  END{
    };
