function extracttodir
    switch $argv[1]
        case "*.tar.bz2"
            tar -xjf $argv[1] -C "$argv[2]"

        case "*.tar.gz"
            tar -xzf $argv[1] -C "$argv[2]"

        case "*.rar"
            unrar x $argv[1] "$argv[2]/"

        case "*.tar"
            tar -xf $argv[1] -C "$argv[2]"

        case "*.tbz2"
            tar -xjf $argv[1] -C "$argv[2]"

        case "*.tgz"
            tar -xzf $argv[1] -C "$argv[2]"

        case "*.zip"
            unzip $argv[1] -d $argv[2]

        case "*.7z"
            7za e -y $argv[1] -o"$argv[2]"

        case "*"
            echo "unknown extension: $argv[1]"
    end
end
