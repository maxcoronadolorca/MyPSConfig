# Set UTF-8 Encoding
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt m365Princess

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle InlineView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias zip Compress-Archive

function touch() {
    $fileName = $args[0]
    if (-not(Test-Path $fileName)) {
        New-Item -ItemType File -Name $fileName
    }
    else {
        (Get-ChildItem $fileName).LastWriteTime = Get-Date
    }
}

# Esa vaquita loca quiere comer chuchoca
Import-Module cowsay
cowsay Some Unix users envy my Powershell prompt XD... Naaaa!!!
Write-Output ''