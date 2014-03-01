require 'spec_helper'

#All workshops have a start date and end date

#We want to build a hash that lists out all the weeks of workshop.
#The first value of the hash is the start date,
#and all ensuing values are the following Monday of the next week.

#Use Case: We are building a workshop calendar and need to list out all the weeks for planning.
#Students can start on any day of the week, but every enusing week starts on a Monday.

#NOTE: January 1st, 2014 was a Wednesday

describe Workshop do
  it 'builds a  hash for a workshop lasting one day' do
    workshop = Workshop.new(:start_date => Date.parse("2014/1/1"),
                            :end_date =>   Date.parse("2014/1/1"))

    expect(workshop.weeks).to eq({1 => "2014-01-01"})
  end

  it "should return a hash of weeks for an apprenticeship lasting 8 days" do
    start_date = Date.parse("2014/01/01")
    workshop = Workshop.new(start_date: start_date,
                            end_date: start_date + 8)

    expect(workshop.weeks).to eq( {1 => "2014-01-01",
                                   2 => "2014-01-06"} )
  end


  xit "should return a hash of weeks for an apprenticeship spanning 15 days" do
    start_date = Date.parse("2014/01/01")

    #write your setup, action and assertion using the one above as an example
    #the expected return value will be a hash with 3 key-value pairs.
  end

  xit "should still return two 'weeks' for an apprenticeship starting on a Sunday" do
    start_date = Date.parse("2014/01/05") #first Sunday of the year
    workshop = Workshop.new(start_date: start_date, end_date: start_date + 3)

    #write your assertion here
  end

  xit "should still include a final week for an apprenticeship ending on a Monday" do
    start_date = Date.parse("2014/01/01")

    #write your test set-up, the answer should be {1 => "2014-01-01",
                                                  #2 => "2014-01-06",
                                                  #3 => "2014-01-13"}
  end
end
