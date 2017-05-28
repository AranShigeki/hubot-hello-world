# Description
#   A Hubot script that responds 'World!'
#
# Configuration:
#   None
#
# Commands:
#   hubot hello - responds 'World!'
#
# Author:
#   bouzuya <m@bouzuya.net>

module.exports = (robot) ->
  robot.hear /morning|おは/i, (msg) ->
    msg.send msg.random [ "朝から社畜おつです！",
                         "おはよ",
                         "ごきげんよう",
                         "Good Morning!"]

  robot.hear /hello/i, (msg) ->
    msg.send msg.random [ "社畜乙です！",
                         "World!",
                         "ごきげんよう",
                         "お疲れ様です" ]
  robot.hear /\bhi\b|hey|\byo\b|ha-i/i, (msg) ->
    msg.send msg.random [ "社畜乙です！",
                         "heyyyyyyyyyyyyyyyyyyyyyyy",
                         "ごきげんよう",
                         "ha-1" ]

    
  robot.hear /(lunch|(御|お)(昼|ひる))/i, (msg) ->
    msg.send msg.random [
      "ラーメン",
      "うどんかそば",
      "ポパイ",
      "丼もの", 
      "食べずにがんばろ？" ,
      "カレー",
      "定食",
      "今は時間が悪い"]

  robot.hear /(breakfast|(朝|あさ)(御|ご)(飯|はん))/i, (msg) ->
    msg.send msg.random [
      "ウイダー in ゼリー",
      "ヨーグルト",
      "ポパイ",
      "バナナ", 
      "食べずにがんばろ？" ,
      "は？",
      "社畜"]

  robot.hear /(dinner|(晩|ばん)(御|ご)(飯|はん))/i, (msg) ->
    msg.send msg.random [
      "その前に仕事終わらせて？",
      "天ぷら",
      "インドカレー",
      "早く帰ろう", 
      "食べずにがんばろ？" ,
      "は？",
      "社畜お疲れ様です！"]
    
    
  robot.hear /(bye|(帰|かえ)る|(帰|かえ)ろ|(帰宅|きたく)|(退社|たいしゃ))/i, (msg) ->
    msg.send msg.random [
      "その前に仕事終わらせて？",
      "は？",
      "good bye!",
      "今日も一日おつかれさまｖ", 
      "お疲れ様です" ,
      "ごきげんよう",
      "社畜お疲れ様です！"]
    
  robot.hear /ごきげんよう/i, (msg) ->
    msg.send msg.random ["ごきげんよう",
                         "hey!",
                         "は？"]
    

    
