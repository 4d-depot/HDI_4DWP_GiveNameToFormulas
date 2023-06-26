//%attributes = {}
//$o:=New shared object

$o:=New object:C1471
$o.formula:=Formula:C1597(This:C1470.data.customer.lastname+" "+This:C1470.data.customer.firstname)
$o.name:="Customer name"
WP INSERT FORMULA:C1703($range; $o; wk replace:K81:177)


