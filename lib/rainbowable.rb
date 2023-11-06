module Rainbowable
  def rainbow
    to_s.each_char.map.with_index do |char,count|
      color = 31 + count % 6
      "\e[#{color}m#{char}"
    end.join + "\e[0m"
  end
end


module Loggable
  def log(text)
    puts "@@@@@@@@@@@@ #{text} @@@@@@@@@@@"
  end

  def hello
      puts "log hello #{super}"
  end
end
