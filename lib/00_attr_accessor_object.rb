class AttrAccessorObject
  def self.my_attr_accessor(*names) # [:age,:username,:password]
      names.each do |name|
        
      define_method(name) do 
        # "@#{name}"  "@age" => @age
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end
  end

#   def age
#     @age
#   end

#   def age=(num)
#     @age = num
#   end
end
