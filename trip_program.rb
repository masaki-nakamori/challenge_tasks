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
    print "プラン番号を選択 > " 
    @slelect_num = gets.to_i - 1
end

#選択プランの確認と各プランの金額計算
def check_plan(plans)
    @price_tour = plans[@slelect_num][:price]
    puts "#{plans[@slelect_num][:destination]}ですね。"
end

#予約人数の確認
def define_people_num
    puts "何名で予約されますか？"
    print "人数を入力 > "
    @people_num = gets.to_i
end

#金額計算
def calculate_total_price(plans)
    puts "#{@people_num}名ですね。"
    tortal_price = (@price_tour * @people_num).round
    if @people_num >= 5
        tortal_price *= 0.9
        puts "5名以上ですので10%割引となります"
    end
    puts "合計金額は#{tortal_price.round}円になります。"
end

choose_plan(plans)
check_plan(plans)
define_people_num()
calculate_total_price(plans)