def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  
 pigeon_list = {}
  first_key = ""

  pigeon_data.each do |first_key, data1|
    #puts "==============================="
    #puts "first key = #{first_key}"
    #puts "data1 = #{data1}"
    data1.each do |sec_key, data2|
      #puts "first key = #{first_key}"
      #puts "sec_key = #{sec_key}"
      #puts "data2 = #{data2}"
      data2.each do |name|
        sec_key_string = sec_key.to_s
        #puts "name = #{name}"
        if pigeon_list[name] == nil
          pigeon_list[name] = {first_key => [sec_key_string]}
          #puts "pigeon_list = #{pigeon_list}"
        elsif first_key == :color
          pigeon_list[name][first_key] << sec_key_string
        elsif first_key == :gender || first_key == :lives
          pigeon_list[name][first_key] = [sec_key_string]
        end  
        #puts "2--pigeon_list = #{pigeon_list}"
      end
    end
  end
  puts pigeon_list
  pigeon_list

end #nyc_pigeon_organizer
