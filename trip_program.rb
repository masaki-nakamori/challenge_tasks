#旅行プログラムを作成する
#プランの選択
plans = [
    {:destination => "沖縄旅行", :price => 10000},
    {:destination => "北海道旅行", :price => 20000},
    {:destination => "九州旅行", :price => 15000}
]

def choose_plan(plans)
    puts "旅行プランを選択してください。"
    plans.each_with_index do |plan, i|
        puts "#{i+1}. #{plan[:destination]}（#{plan[:price]}円）"
    end
    #異常入力の時は再入力
    while true
        print "プランの番号を選択 > "
        select_num = gets.to_i - 1
        break if(0..2).include?(select_num)
        puts"1~3の番号を入力してください"
    end
    select_num
end

#選択プランの確認と各プランの金額計算
def check_plan(plans,select_num)
    puts "#{plans[select_num][:destination]}ですね。"
    price_tour = plans[select_num][:price]
end

#予約人数の確認
def define_people_num()
    puts "何名で予約されますか？"
    while true
        print "人数を入力 > "
        people_num = gets.to_i
        break if people_num >= 1
        puts "1名以上選んでください。"
    end
    people_num
end

#金額計算
def calculate_total_price(plans,people_num, price_tour)
    puts "#{people_num}名ですね。"
    tortal_price = price_tour * people_num
    if people_num >= 5
        tortal_price *= 0.9
        puts "5名以上ですので10%割引となります"
    end
    puts "合計金額は#{tortal_price.round}円になります。"
end

select_num = choose_plan(plans)
price_tour = check_plan(plans,select_num)
people_num = define_people_num()
calculate_total_price(plans, people_num, price_tour)