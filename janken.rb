def janken
  puts "1(グー) 2(チョキ) 3(パー) 4(戦わない)"
  hand = ["", "グー", "チョキ", "パー", "戦わない"]
  get_player_hand = gets.chomp.to_i
  player_hand = hand[get_player_hand]
  janken_exception(get_player_hand)
  get_program_hand = rand(1..3)
  program_hand = hand[get_program_hand]
  puts "ポン！"
  puts "------------------------------------"
  puts "あなた：#{player_hand}を出しました"
  puts "相手：#{program_hand}を出しました"
  puts "------------------------------------"
  
  janken_judge(get_player_hand, get_program_hand)
end

def janken_exception(get_player_hand)
  if get_player_hand < 1 || get_player_hand > 4
    puts "正しい数字を入力してください" 
    exit
  elsif get_player_hand == 4
    exit
  end
end

def janken_judge(get_player_hand, get_program_hand)
  if (get_player_hand == 1 && get_program_hand ==2)||(get_player_hand == 2 && get_program_hand == 3)||(get_player_hand == 3 && get_program_hand == 1)
    puts "じゃんけんに勝ちました！"
    achimuitehoi_win
  elsif get_player_hand == get_program_hand
    puts "引き分けです。"
    janken_hikiwake
  else
    puts "じゃんけんに負けました！"
    achimuitehoi_lose
  end
end

def janken_hikiwake
  puts "あいこで..."
  janken
end


def achimuitehoi_win
  puts "あっち向いて〜"
  puts "1(上) 2(下) 3(左) 4(右)"
  direction = ["", "上", "下", "左", "右"]
  get_player_direction = gets.chomp.to_i
  player_direction = direction[get_player_direction]
  achimuitehoi_exception(get_player_direction)
  get_program_direction = rand(1..4)
  program_direction = direction[get_program_direction]
  puts "ホイ！"
  puts "------------------------------------"
  puts "あなた：#{direction[get_player_direction]}"
  puts "相手：#{direction[get_program_direction]}"
  puts "------------------------------------"
  if get_player_direction == get_program_direction 
    puts "あなたの勝ちです。"
    new_game
  else
    new_game
  end
end

def achimuitehoi_lose
  puts "あっち向いて〜"
  puts "1(上) 2(下) 3(左) 4(右)"
  direction = ["", "上", "下", "左", "右"]
  get_player_direction = gets.chomp.to_i
  player_direction = direction[get_player_direction]
  achimuitehoi_exception(get_player_direction)
  get_program_direction = rand(1..4)
  program_direction = direction[get_program_direction]
  puts "ホイ！"
  puts "------------------------------------"
  puts "あなた：#{direction[get_player_direction]}"
  puts "相手：#{direction[get_program_direction]}"
  puts "------------------------------------"
  if get_player_direction == get_program_direction 
    puts "あなたの負けです。"
    new_game
  else
    new_game
  end
end

def achimuitehoi_exception(get_player_direction)
  if get_player_direction < 1 || get_player_direction > 4
    puts "正しい数字を入力してください" 
    exit
  end
end



def new_game
  puts "じゃんけん..."
  janken
end

new_game
