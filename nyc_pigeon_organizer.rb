require 'pry'

def nyc_pigeon_organizer(data)
  newData = Hash.new

  data.each do |key, val|
    val.each do |key2, val2|
      val2.each do |pigeon|
        if newData.include?(pigeon) # Check if pigeon exists in newHash
          #binding.pry
          if newData[pigeon].include?(key) # Check if pigeon has the category yet
            newData[pigeon][key] << key2.to_s
            binding.pry
          else
            newData[pigeon] = {key => [key2.to_s]}
          end
        else
          newData = {pigeon => {key => [key2.to_s]}}
        end
      end
    end
  end

  #binding.pry
  return newData
end
