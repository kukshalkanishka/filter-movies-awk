#! /usr/bin/awk
BEGIN{
  FS="|"
}
$8 ~ /Spanish/ && $8 !~ /German/  {
  print "Yo" $1 ":" $8
  }
$8 ~ /German/ &&  $8 !~ /Spanish/{
 print "Der" $1 ":" $8
  }

  END{
    }
