class Form::FixedcostValue < FixedcostValue
  REGISTRABLE_ATTRIBUTES = %i(fixedcost_id year_month value supplement)
	attr_accessor :fixedcost_id
	attr_accessor :year_month
	attr_accessor :value
  attr_accessor :supplement
end 