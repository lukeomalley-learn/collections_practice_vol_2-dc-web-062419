def begins_with_r(array)
  truth = []
  array.each do |word|
    if word.start_with?('r')
      truth.push(1)
    else
      truth.push(0)
    end
  end
  if truth.include?(0)
    return false
  else 
    return true
  end
end

def contain_a(array)
  res = []
  array.each do |word|
    if word.include?('a')
      res.push(word)
    end
  end
  return res
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?('wa')
      return word.to_s
    end
  end
end

def remove_non_strings(array)
  res = []
  array.each do |item|
    if item.class == String
      res.push(item)
    end
  end
  return res
end
  
def count_elements(array)
  count = []
  array.each do |hash|
    if count.any?{ |new_hash| new_hash[:name] == hash[:name] }
      count.each do |new_hash|
        if new_hash[:name] == hash[:name]
          new_hash[:count] += 1
        end
      end
    else
    count.push({:name => hash[:name], :count => 1})
    end
  end
  return count
end

def merge_data(keys, data)
  merged = []
  data.each do |hash|
    hash.each do |name, information|
      keys.each do |keys_hash|
        if keys_hash[:first_name] == name
           merged.push(keys_hash.merge(information))
        end
      end
    end
  end
  return merged;
end

def find_cool(array)
  cool_person = []
  array.each do |person|
    person.each do |key, value|
      if value == 'cool'
        cool_person.push(person)
      end
    end
  end
  return cool_person
end

def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |school, location_hash|
    if !organized_hash.has_key?(location_hash[:location])
      organized_hash[location_hash[:location]] = []
    end
    
    organized_hash.each do |key, value|
      if key == location_hash[:location]
        value.push(school)
      end
    end
  end
  return organized_hash
end