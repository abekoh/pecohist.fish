function pecohist
  if test (count $argv) > 0
    set peco_args --query "$argv"
  end

  history | peco $peco_args | read inp

  if [ $inp ]
    commandline $inp
  else
    commandline ''
  end
end
