class Workshop < ActiveRecord::Base
  attr_accessible :start_date, :end_date

  def weeks
  	weeks = {}
  	weeks[1] = self.start_date.to_s

  	if self.end_date > self.start_date + 4
  		weeks[2] = Date.parse("2014/01/06").to_s
  	end

  	weeks
  end
end
