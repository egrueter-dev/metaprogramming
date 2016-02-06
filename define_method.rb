require 'pry'

class String
  def self.add_new_method(name)
    send(:define_method, name) {
      puts "You created a method named #{name} at runtime"
    }
  end
end

String.add_new_method("Erik")

"string".Erik
