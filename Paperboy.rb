class Paperboy

attr_accessor :name, :experience, :quota, :day
attr_reader :earnings

@@Day = 0
@@total_earnings = 0
@@total_quota = 0
@@total_delivered = 0

  def initialize(name)
    @name = name
    @earnings = 0
    @experience = 0
    @quota = 50
  end

  def quota
    @quota += @experience/2.0
  end

  def deliver(start_address, end_address)
    if end_address < start_address
      return "sorry, bad Day #{@@Day+1}, try again"
    elsif end_address > start_address
      @experience = end_address - start_address
      @@total_delivered += @experience
      @earnings = (end_address - start_address)*0.25
      @@total_earnings += @earnings
      @@total_quota += @quota
      @@Day += 1
      puts "Day #{@@Day}: #{@experience} experience gained"
      puts "Day #{@@Day}: $#{@earnings} earned today "
      return "quota for tomorrow is #{quota}, "
    end
  end

  def report
    return "I'm #{@name}, I've delivered #{@@total_delivered} papers and I've earned #{@@total_earnings} so far!! "
  end
    # (start_at, finish_at)

end
