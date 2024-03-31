complete -c kondo -s I -l ignored-dirs -d 'Directories to ignore. Will also prevent recursive traversal within' -r -F
complete -c kondo -s o -l older -d 'Only directories with a file last modified n units of time ago will be looked at. Ex: 20d. Units are m: minutes, h: hours, d: days, w: weeks, M: months and y: years' -r
complete -c kondo -l completions -d 'Generates completions for the specified shell' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c kondo -s q -l quiet -d 'Quiet mode. Won\'t output to the terminal. -qq prevents all output'
complete -c kondo -s a -l all -d 'Clean all found projects without confirmation'
complete -c kondo -s L -l follow-symlinks -d 'Follow symbolic links'
complete -c kondo -s s -l same-filesystem -d 'Restrict directory traversal to the root filesystem'
complete -c kondo -s d -l default -d 'If there is no input, defaults to yes'
complete -c kondo -s h -l help -d 'Print help (see more with \'--help\')'
