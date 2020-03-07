class Form::VariablecostValue < VariablecostValue
	REGISTRABLE_ATTRIBUTES = %i(variablecost_id year_month value supplement)
	attr_accessor :variablecost_id
	attr_accessor :year_month
	attr_accessor :value
	attr_accessor :supplement
end 