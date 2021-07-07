require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  
 # holiday_hash.each do |season, holiday|
 #   if season == :winter
 #   holiday.each do |holiday_season, holiday_stuff|
 #  holiday_stuff << supply
   
   holiday_hash[:winter].each do |holiday_season, holiday_stuff|
     holiday_stuff << supply

#binding.pry
  #   end
     
  #  end
   holiday_hash
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday_season, holiday_stuff|
     holiday_stuff << supply
  
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash

#binding.pry
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

holiday_hash[:winter].values.flatten
  


end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holiday|
  #binding.pry
  puts "#{seasons.capitalize}:"

   holiday.each do |party, party_stuff|
  
   puts "  #{party.to_s.split("_").map { |word|
   word.capitalize}.join(" ")}: #{party_stuff.join(", ")}"
   
   #binding.pry
   end
   
 end
 
 
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc
  end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |seasons, holidays|
    #binding.pry
 holidays.collect do |holiday, items|
   holiday if items.include?("BBQ")
     #binding.pry
   
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
        end
      end.flatten.compact
    end





