def total_bill(s)
	billable = s.delete(" ").length
	return (billable * 2) - ((billable / 5).floor * 2)
end