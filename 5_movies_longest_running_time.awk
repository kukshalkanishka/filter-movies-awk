#! /usr/bin/awk -f
BEGIN{
  FS="|"
  longest_runtime=0
}
($4 !~ /N\/A/){
  runtime=int($4)
  movies[runtime]=$1
}
END{
  for(movie in movies){
    if(int(movie) > int(longest_runtime)){
      longest_runtime=movie
      movie_name=movies[movie]
    }
  } 
  {
    print longest_runtime ":" movie_name
  }
  for(movie_no=1; movie_no<=4; movie_no++){
    for(runner_up in movies){
      if((int(runner_up) > int(other_higher_time)) && (int(runner_up) < int(longest_runtime))){
        other_higher_time=runner_up
        runner_up_movie_name=movies[runner_up]
      }
    }
    print other_higher_time ":" runner_up_movie_name 
    longest_runtime=other_higher_time
    other_higher_time=0
  }
};
