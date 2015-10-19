class Ball
  ANSWERS = ['Don’t count on it',
             'My reply is no',
             'My sources say no',
             'Outlook not so good',
             'Very doubtful',
             'As I see it, yes',
             'Most likely',
             'Outlook good',
             'Signs point to yes',
             'Yes',
             'Reply hazy, try again',
             'Ask again later',
             'Better not tell you now',
             'Cannot predict now',
             'Concentrate and ask again',
             'It is certain',
             'It is decidedly so',
             'Without a doubt',
             'Yes — definitely',
             'You may rely on it']
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
