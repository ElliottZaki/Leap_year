require './lib/leap_years.rb'

describe 'leapyear?' do
  #  All years not divisiable by 4 are not leap years. (e.g. 2009, 2010 and 2011 were not leap years)
  it 'returns false if the year is not divisible by 4' do
    leapyear?(2009)
    expect(leapyear?(2009)).to eq(false)
  end

  # All years divisible by 4 and not by 100 ARE leap years. (e.g. 2004, 2008 and 2012 were leap years)
  it 'returns true if the year is divisible by 4 but not by 100' do
    leapyear?(2004)
    expect(leapyear?(2004)).to eq(true)
  end

  # All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
  it 'returns false if the year is divisable by 100 but not by 400' do
    leapyear?(1700)
    expect(leapyear?(1700)).to eq(false)
  end

  # All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
  it 'returns true if the year is divisable by 400' do
    leapyear?(2000)
    expect(leapyear?(2000)).to eq(true)
  end
end