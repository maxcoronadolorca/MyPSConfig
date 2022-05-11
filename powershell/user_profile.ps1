# Set UTF-8 Encoding
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Set Codepage to Windows CP (1252), default CP (65001)
CHCP 1252 | Out-Null

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt tiwahu

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
Set-Alias psqls 'C:\Program Files\PostgreSQL\14\scripts\runpsql.bat'

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