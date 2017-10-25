PowerShellを実行する場合、最初に必ず実行ポリシーの変更が必要になる。

現状の実行ポリシー取得コマンドレット
	Get-ExecutionPolicy
	
	この実行結果がRemoteSignedになっていない場合、変更が必要。

実行ポリシー変更コマンドレット
	Set-ExecutionPolicy RemoteSigned
	
	RemoteSignedに変更される。


PowerShellのエスケープシーケンスは「`」を使用する。