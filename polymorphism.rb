class Cricketer
  def role
    puts "Role not defined"
  end
end

class Batter < Cricketer
  def role
      puts "I am a batter"
  end
end

class Bowler < Cricketer
  def role
      puts "I am a bowler"
  end
end

bt = Batter.new
bw = Bowler.new

bt.role
bw.role
