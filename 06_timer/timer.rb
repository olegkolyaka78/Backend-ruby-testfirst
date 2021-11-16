class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
    #@time_result = 0
  end

  #def seconds=(seconds)
    #@seconds = seconds
  #end

  #def seconds
      #@seconds
  #end

  def time_string
    @time_result = [seconds / 3600, (seconds / 60) % 60, seconds % 60].map { |time|
      time.to_s.rjust(2, "0") }.join(":")    
    return @time_result 
    end
  
end
