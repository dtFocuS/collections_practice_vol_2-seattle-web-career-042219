# your code goes here

def begins_with_r(array)
  starts_r = true
  array.each do |item|
    starts_r = false if item[0] != "r"
  end
  starts_r
end

def contain_a(array)
  target_array = []
  array.each do |item|
    target_array << item if item.include?('a')
  end
  target_array
end

def first_wa(array)
  appearance = false
  target = ""
  array.each do |item|
    if item[0] == 'w' && item[1] == 'a' && appearance == false
      target = item
      appearance = true
    end
  end
  target
end

def remove_non_strings(array)
  target_array = []
  array.each do |item|
    target_array << item if item.is_a?(String)
  end
  target_array
end

def count_elements(array)
  count = 0
  new_hash = {}
  current_value = ""
  target_array = []
  array.each do |item|
    item.each do |key, value| #{:name => "blake"}
      if current_value == value
        count += 1 
        #appearance = true
        new_hash[:count] = count
      else
        count = 1
        new_hash = {}
        new_hash[:count] = count
        new_hash[key] = value
        current_value = value
        target_array << new_hash
      end
    end
  end
  target_array
end

def merge_data(keys, data)
  merge_array = []
  keys.each do |key| #key = {}
    data.each do |item| #item = {"blake => {}, "ashely" => {}}
      item.each do |category, value|
        merge_array << key.merge(value) if key[:first_name] == category
      end
    end
  end
  merge_array
end

def find_cool(array)
  target_array = []
  array.each do |item| #item = {}
    item.each do |key, value|
      target_array << item if value == "cool"
    end
  end  
  target_array
end

def organize_schools(hash)
  location_hash = {}
  hash.each do |key, value|#key = "flatiron school", value = {:location =>"NYC"}
    value.each do |location, data|
      if location_hash.key?(data)
        location_hash[data] << key
      else
        array = []
        location_hash[data] = array << key
      end
    end
  end
  location_hash
end
