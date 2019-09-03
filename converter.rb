require 'rspec'
require 'date'

def hash_date_counter_converter(date_hash)
  date_hash.each_with_object([]) do |(key, value), arr|
    date_in_epoch_time = key.strftime("%s")
    value.times do |v|
      arr << date_in_epoch_time.to_i
    end
  end
end
