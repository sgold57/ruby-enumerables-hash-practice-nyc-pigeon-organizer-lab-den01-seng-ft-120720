require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, specifics|
    specifics.each do |specific, name_array|
      name_array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][attribute] == nil
          pigeon_list[name][attribute] = []
        end
        if !pigeon_list[name][attribute].include?(specific.to_s)
          pigeon_list[name][attribute] << specific.to_s
        end
      end
    end
  end
  pigeon_list
end
