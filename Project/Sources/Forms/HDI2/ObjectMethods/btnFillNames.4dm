If (Form:C1466.trace)
	TRACE:C157
End if 

If (Form:C1466.formulas.length>0)
	For each ($item; Form:C1466.formulas)
		
		$name:=$item.formula.source
		$name:=Replace string:C233($name; "this.data."; "")
		$name:=Replace string:C233($name; "+"; "")
		$name:=Replace string:C233($name; "\""; "")
		$name:=Replace string:C233($name; "."; " ")
		$name:=Uppercase:C13(Substring:C12($name; 1; 1))+Substring:C12($name; 2)
		
		$item.name:=$name
		
	End for each 
End if 


Form:C1466.formulas:=Form:C1466.formulas
