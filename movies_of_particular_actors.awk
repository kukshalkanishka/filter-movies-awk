#! /usr/bin/awk
BEGIN{
  FS="|"
}
{elements=split($7, value, ", ")}
{for (i = 1; i <= elements; i++)
      {names=value[i] 
  }
}
(NR == 1)
  first_name=names
  }

  END{
    };

