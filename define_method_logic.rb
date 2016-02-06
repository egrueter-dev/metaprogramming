require 'pry'
class String

  def self.add_new_method(name, &logic)
    send(:define_method, name) { |*args|
      logic.call(*args)
    }
  end
end

String.add_new_method("add_numbers") do |x, y|
  puts "logic goes here"
  puts x + y
end

"Erik".add_numbers(1, 2)
