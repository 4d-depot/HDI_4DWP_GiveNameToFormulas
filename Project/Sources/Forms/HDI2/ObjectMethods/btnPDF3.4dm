If (Form:C1466.trace)
	TRACE:C157
End if 

For each ($item; Form:C1466.formulas)
	
	// insert an object instead of a simple formula
	$newFormula:=New object:C1471
	$newFormula.formula:=$item.formula
	$newFormula.name:=$item.name
	
	WP INSERT FORMULA:C1703($item.range; $newFormula; wk replace:K81:177)
	
End for each 