  # In this task you should use #prepend and #include methods
  # in different combinations to achieve desired result, described at the bottom
  # Hint: class method #ancestors should help you to understand ancestors chain in different cases
  # Good Luck!

  module A
    def hello
      super if defined?(super)
      puts "hello from A"
    end
  end

  module B
    def hello
      super if defined?(super)
      puts "hello from B"
    end
  end

  class C
=begin
[#1 prepend A
   include B ]
[#2 prepend B
    prepend A]
[#3 prepend A
    prepend B]
[#4 include A
    include B]
[#5 include B
    include A]
=end

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

c = C.new
c.hello #1 should be called in order => A,C,B
        #2 should be called in order => A,B,C
        #3 should be called in order => B,A,C
        #4 should be called in order => C,B,A
        #5 should be called in order => C,A,B



















