var $page : Integer
var $company : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=Form:C1466.documents.toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		WParea1:=ds:C1482.Templates.query("name = :1"; "Company")[0].wp
		WParea2:=Form:C1466.documents[0].comments
		
		$company:=ds:C1482.Company.all().first()
		WP SET DATA CONTEXT:C1786(WParea1; New object:C1471("company"; $company))
		WP COMPUTE FORMULAS:C1707(WParea1)
		
		LISTBOX SELECT ROW:C912(*; "LB"; 1)
		
		Form:C1466.trace:=False:C215
		
		Form:C1466.displayFormulas:=1
		Form:C1466.displayValues:=0
		Form:C1466.displayAsSymbol:=False:C215
		
		WP SET VIEW PROPERTIES:C1648(*; "WP"; New object:C1471(wk visible references:K81:286; True:C214))
		
		
	: (Form event code:C388=On Timer:K2:25)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		WParea2:=Form:C1466.documents[$page-1].comments
		
End case 



//$o:=New object
//$o[wk visible references]:=True  // mandatory to use next option
//$o[wk display formula as symbol]:=True  // New option
//WP SET VIEW PROPERTIES(*; "WP"; $o)



