# bodgeSiteUpDownChecker
You can check if a site is up or down by this command

This code is made in a sloppily way, so this code just get response from https://www.isitdownrightnow.com/
but for quick check, it is useful.
Usually, if a server is down, the result showed up slow.

サイトのアップダウンをチェックするスクリプトですが、ロジックはなくチェックサイトからの結果を表示します。とりあえず確認したいときには便利です。

## How to use
open power shell

パワーシェルを開いて以下のように使います

`>.\bodgeSiteUpDownChecker.ps1 example.com`

## If you have powershell script running issue
As admin, run `Set-ExecutionPolicy RemoteSigned`
and

`Get-ChildItem -Path C:\ -Name bodgeSiteUpDownChecker.ps1 -Recurse | ForEach-Object {"C:\$_"} | Get-Item | Unblock-File`

パワーシェルの実行に問題があった場合は上記のコマンドを管理者として実行して下さい



