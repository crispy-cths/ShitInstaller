$PSVersionTable.PSEdition -ne 'Core' | Out-Null

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_mocha.omp.json" | Invoke-Expression

# terminal icons
Import-Module -Name Terminal-Icons

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# aliases
Set-Alias -Name c -Value clear

# fetch
fastfetch
