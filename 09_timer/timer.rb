class Timer
  def initialize(seconds=0)
    @seconds = seconds
  end
  
  def seconds
    return @seconds
  end
  
  def seconds=(seconds)
    @seconds = seconds
  end
  
  def time_string
    hours = @seconds / 3600
    seconds_left = @seconds % 3600
    minutes = seconds_left / 60
    seconds = seconds_left % 60
    @time_string = sprintf("%02d:%02d:%02d", hours, minutes, seconds)
    return @time_string
  end
  
end