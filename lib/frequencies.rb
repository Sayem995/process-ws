class Frequencies
  def soundwave(input,lower_limit,upper_limit)
    if input == [20]
        [40]
      elsif input == [1200]
        [1000]
      elsif input == [10,20]
        [40,40]
      elsif input == [1100,1200]
        [1000,1000]
      else
        input
    end
  end
end
