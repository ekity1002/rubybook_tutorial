require 'date'

records = [[1,2],[3,4,5]]
records.each do |record|
  case record
  in [y]
    Date.new(y, 1,1)
  in [y,m]
    Date.new(y,m,1)
  in [y,m,d]
    Date.new(y,m,d)
  end
end
