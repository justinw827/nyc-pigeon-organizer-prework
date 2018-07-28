def nyc_pigeon_organizer(data)
  newData = Hash.new

  data.each do |key, val|
    val.each do |key2, val2|
      val2.each do |pigeon|
        if newData.include?(pigeon)
      end
    end
  end

  return newData
end
