complete -c ollama -n __fish_use_subcommand -xa serve -d "Start ollama"
complete -c ollama -n "__fish_seen_subcommand_from serve" -s h -l help -d "Help for serve"

complete -c ollama -n __fish_use_subcommand -xa start -d "Alias for ollama serve"
complete -c ollama -n "__fish_seen_subcommand_from start" -s h -l help -d "Help for start"

complete -c ollama -n __fish_use_subcommand -xa create -d "Create a model from a Modelfile"
complete -c ollama -n "__fish_seen_subcommand_from create" -s h -l help -d "Help for create"
complete -c ollama -n "__fish_seen_subcommand_from create" -s f -l file -d "Name of the Modelfile (default "Modelfile") (default "Modelfile")"

complete -c ollama -n __fish_use_subcommand -xa show -d "Show information for a model"
complete -c ollama -n "__fish_seen_subcommand_from show" -s h -l help -d "Help for show"
complete -c ollama -n "__fish_seen_subcommand_from show" -l license -d "Show license of a model"
complete -c ollama -n "__fish_seen_subcommand_from show" -l modelfile -d "Show Modelfile of a model"
complete -c ollama -n "__fish_seen_subcommand_from show" -l parameters -d "Show parameters of a model"
complete -c ollama -n "__fish_seen_subcommand_from show" -l system -d "Show system prompt of a model"
complete -c ollama -n "__fish_seen_subcommand_from show" -l template -d "Show template of a model"

complete -c ollama -n __fish_use_subcommand -xa run -d "Run a model"
complete -c ollama -n "__fish_seen_subcommand_from run" -s h -l help -d "Help for run"
complete -c ollama -n "__fish_seen_subcommand_from run" -l format -d "Response format (e.g. json)"
complete -c ollama -n "__fish_seen_subcommand_from run" -l insecure -d "Use an insecure registry"
complete -c ollama -n "__fish_seen_subcommand_from run" -l nowordwrap -d "Don't wrap words to the next line automatically"
complete -c ollama -n "__fish_seen_subcommand_from run" -l verbose -d "Show timings for response"

complete -c ollama -n __fish_use_subcommand -xa pull -d "Pull a model from a registry"
complete -c ollama -n "__fish_seen_subcommand_from pull" -s h -l help -d "Help for pull"
complete -c ollama -n "__fish_seen_subcommand_from pull" -l insecure -d "Use an insecure registry"

complete -c ollama -n __fish_use_subcommand -xa push -d "Push a model to a registry"
complete -c ollama -n "__fish_seen_subcommand_from push" -s h -l help -d "Help for push"

complete -c ollama -n __fish_use_subcommand -xa list -d "List models"
complete -c ollama -n "__fish_seen_subcommand_from list" -s h -l help -d "Help for list"

complete -c ollama -n __fish_use_subcommand -xa ls -d "Alias for ollama list"
complete -c ollama -n "__fish_seen_subcommand_from ls" -s h -l help -d "Help for ls"

complete -c ollama -n __fish_use_subcommand -xa cp -d "Copy a model"
complete -c ollama -n "__fish_seen_subcommand_from cp" -s h -l help -d "Help for cp"

complete -c ollama -n __fish_use_subcommand -xa rm -d "Remove a model"
complete -c ollama -n "__fish_seen_subcommand_from rm" -s h -l help -d "Help for rm"

complete -c ollama -n __fish_use_subcommand -xa help -d "Help about any command"
complete -c ollama -n "__fish_seen_subcommand_from help" -s h -l help -d "Help for help"

complete -c ollama -n __fish_no_arguments -s h -l help -d "Show the help"
complete -c ollama -n __fish_no_arguments -s v -l version -d "Show version information"
