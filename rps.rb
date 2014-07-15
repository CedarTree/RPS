class RPS 
  MOVES = ['r', 's', 'p']

  def play
    loop do
      input 
       if @player == "q"
        break  
       end
      output
      show_result
    end
  end

  def display_intro 
    puts  "*****************************"
    puts  "Rock, Paper, Scissors:"
    puts  "Your move? (R/P/S, q to quit)" 
  end

  def input
    display_intro
    @computer = MOVES.sample
    @player = $stdin.gets.chomp.downcase
  end

  def output
    case [@player, @computer]
      when ['p','r'], ['s','p'], ['r','s']
       puts "Player beats AI"
      when ['r','r'], ['s','s'], ['p','p']
       puts "Tie"
      else
       puts "AI beats Player"
    end
  end

  def show_result
    puts "Player played: #{@player.upcase} "
    puts "AI played: #{@computer.upcase}" 
  end
end 

rps = RPS.new  
rps.play


