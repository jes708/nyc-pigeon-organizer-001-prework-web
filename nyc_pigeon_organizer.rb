def nyc_pigeon_organizer(data)
  new_hash = Hash.new

  data.each do |stat, subs|
    data[stat].each do |sub, names|
      data[stat][sub].each do |name|
        new_hash[name] = {}
      end
    end
  end

  data.each do |stat, subs|
    data[stat].each do |sub, names|
      data[stat][sub].each do |name|
        new_hash[name].merge!(stat => [])
      end
    end
  end

  data.each do |stat, subs|
    data[stat].each do |sub, names|
      data[stat][sub].each do |name|
        new_hash[name][stat] << sub.to_s
      end
    end
  end

  new_hash
end