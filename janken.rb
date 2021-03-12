def Hand(mine, enemy)
    if mine == 0
        puts "あなたはグーを出しました"
    elsif mine == 1
        puts "あなたはチョキを出しました"
    elsif mine == 2
        puts "あなたはパーを出しました"
    else
        puts "知らない手を出さないでください"
    end
    if enemy == 0
        puts "相手はグーを出しました"
    elsif enemy == 1
        puts "相手はチョキを出しました"
    elsif enemy == 2
        puts "相手はパーを出しました"
    end
end

def Direction(mine, enemy)
    if mine == 0
        puts "あなた:上"
    elsif mine == 1
        puts "あなた:下"
    elsif mine == 2
        puts "あなた:左"
    elsif mine == 3
        puts "あなた:右"
    end
    if enemy == 0
        puts "相手:上"
    elsif enemy == 1
        puts "相手:下"
    elsif enemy == 2
        puts "相手:左"
    elsif enemy == 3
        puts "相手:右"
    end
end
def Result(mine, enemy)
    lose = "負け"
    win = "勝ち"
    fare = "あいこ"
    if ((enemy == 0 && mine == 1)||(enemy == 1 && mine == 2)||(enemy == 2 && mine == 0))#まけ
        
        return lose
    elsif ((enemy == 0 && mine == 2)||(enemy == 1 && mine == 0)||(enemy == 2 && mine == 1))#かち
        return win
    elsif enemy == mine#あいこ
        return fare
    else
        return "相手：、、、。"
    end
end
def Hoi(result)
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    enemy = rand(0..3)
    mine = gets.to_i
    puts "ホイ！"
    puts "-------------------"
    Direction(mine, enemy)
    puts "-------------------"
    case result
        when "負け"
            if enemy == mine
                puts "あなたの負け"
                return 1
            else#初めからしたい
                puts "つぎへs"
                return 0
            end
        when "勝ち"
            if enemy == mine
                puts "あなたの勝ち"
                return 1
            else#初めからしたい
                puts "つぎへ"
                return 0
            end
    end
end
#main#
for value1 in 0...100 do
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    myHand = gets.to_i
    enemyHand =rand(0..2).to_i
    if myHand == 3
        break
    end
    puts "ホイ！"
    puts "-------------------"
    Hand(myHand, enemyHand)
    puts "-------------------"
    winLose = Result(myHand, enemyHand)
    for value2 in 0...100 do
        if winLose == "あいこ"
            puts "あいこで〜"
            puts "0(グー)1(チョキ)2(パー)3(戦わない)"
            myHand = gets.to_i
            enemyHand =rand(0..2).to_i
            if myHand == 3
                break
            end
            puts "しょ！"
            puts "-------------------"
            Hand(myHand, enemyHand)
            puts "-------------------"
            winLose = Result(myHand, enemyHand)
        else
            break
        end
    end
    if myHand == 3
        break
    end
    hoi = Hoi(winLose)
    if hoi == 0
        next
    elsif hoi == 1
        break
    end
end
