require 'csv'

#Transform cat variables to 16bit
CSV.open("train50k.16bit.csv", "wb") do |csv|
  CSV.foreach("train50k.csv") do |row|

    (15..40).each do |i|
      if row[i]
        row[i] = row[i].to_i(16)
      end

      csv << row
    end
  end
end
