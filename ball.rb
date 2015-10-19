require 'yaml'

class Ball
  ANSWERS = YAML.load_file('answers.yml')
  ARRAYCOL = [31, 32, 33, 34]

  def color(rand)
    case rand
    when 0..4
      ARRAYCOL[0]
    when 5..9
      ARRAYCOL[1]
    when 10..14
      ARRAYCOL[2]
    else
      ARRAYCOL[3]
    end
  end

  def shake
    random_ans = rand(ANSWERS.size)
    puts "\e[#{color(random_ans)}m#{ANSWERS[random_ans]}\e[0m"
    ANSWERS[random_ans].to_s
  end
end
