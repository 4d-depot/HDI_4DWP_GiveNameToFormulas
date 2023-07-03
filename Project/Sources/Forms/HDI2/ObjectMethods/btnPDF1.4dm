If (Form:C1466.trace)
	TRACE:C157
End if 

WParea1:=ds:C1482.Templates.query("name = :1"; "Company")[0].wp

$company:=ds:C1482.Company.all().first()
WP SET DATA CONTEXT:C1786(WParea1; New object:C1471("company"; $company))
WP COMPUTE FORMULAS:C1707(WParea1)

Form:C1466.formulas:=[]

