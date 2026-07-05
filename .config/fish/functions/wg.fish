function wg
  set -l num_args (count $argv)

  if test $num_args -eq 1
      wget -c $argv[1]

  else if test $num_args -eq 2
      # arg1 = name, arg2 = url
      wget -c -O $argv[1] $argv[2]

  else
      echo "Incorrect number of arguments"
  end
end
