$lines = Import-CSV '�Č��Ǘ��\�f�[�^_tmp.csv' -Encoding Default

foreach($line in $lines){

	$line.�̔��� = "�̔���" + $line.id
	$line.�[���� = "�[����" + $line.id
	$line.������ = "������" + $line.id
	$line.������ = "������" + $line.id
	$line.���� = 5000
	$line.�d�� = 1000
	$line.���ڐl���� = 500
	$line.�ϑ���h����p = 400
	$line.�{���O�ւ̈ϑ���p = 300
	$line.�e�� = 0
	$line.�e���� = 0.0
	$line.�t�L���� = ""

	#$line | Export-CSV -path test.csv -Encoding UTF8 -Append -NoTypeInformation -Force
	}

$lines | Export-CSV -path test.csv -Encoding Default -Append -NoTypeInformation -Force

#$(Get-Content "test.csv") -replace "^`"|`"`$","" > "text2.csv"

$OutputLine = $(Get-Content "test.csv") -replace "^`"|`"`$",""
$OutputLine = $OutputLine -replace "`"`,`"","`,"
$OutputLine | Out-File -Encoding default test2.csv
