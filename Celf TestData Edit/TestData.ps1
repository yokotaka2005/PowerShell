$lines = Import-CSV '案件管理表データ_tmp.csv' -Encoding Default

foreach($line in $lines){

	$line.販売先 = "販売先" + $line.id
	$line.納入先 = "納入先" + $line.id
	$line.部署名 = "部署名" + $line.id
	$line.物件名 = "物件名" + $line.id
	$line.売上 = 5000
	$line.仕入 = 1000
	$line.直接人件費 = 500
	$line.委託費派遣費用 = 400
	$line.本部外への委託費用 = 300
	$line.粗利 = 0
	$line.粗利率 = 0.0
	$line.付記事項 = ""

	#$line | Export-CSV -path test.csv -Encoding UTF8 -Append -NoTypeInformation -Force
	}

$lines | Export-CSV -path test.csv -Encoding Default -Append -NoTypeInformation -Force

#$(Get-Content "test.csv") -replace "^`"|`"`$","" > "text2.csv"

$OutputLine = $(Get-Content "test.csv") -replace "^`"|`"`$",""
$OutputLine = $OutputLine -replace "`"`,`"","`,"
$OutputLine | Out-File -Encoding default test2.csv
