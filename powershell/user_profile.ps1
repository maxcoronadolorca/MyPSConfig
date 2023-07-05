# Set UTF-8 Encoding
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Set Codepage to Windows CP (1252), default CP (65001)
CHCP 1252 | Out-Null

# Prompt
Import-Module Terminal-Icons
oh-my-posh init pwsh --config 'C:\Users\XIOmaxx\AppData\Local\Programs\oh-my-posh\themes\tiwahu.omp.json' | Invoke-Expression

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
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias zip Compress-Archive
Set-Alias wget aria2c

# My Commands

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
# Import-Module cowsay
# cowsay -s Some Unix users envy my Powershell prompt XD... Naaaa!!!
# Write-Output ''
# !!! The next cutie beast devoured lady cow :)

# Acrid rules this console environment ...
out-ConsolePicture '.config/powershell/0012 acrid wtbgmatrix.png'
Write-Host "... and so he left, with a new hunger:" -ForegroundColor DarkYellow
Write-Host "    To be left alone." -ForegroundColor Yellow
Write-Output ""