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
  robot.hear /good morning|おはよ/i, (msg) ->
    msg.send msg.random [ "朝から社畜おつです！",
                         "おはよ",
                         "ごきげんよう",
                         "Good Morning!"]

  robot.hear /hello/i, (msg) ->
    msg.send msg.random [ "社畜乙です！",
                         "World!",
                         "ごきげんよう",
                         "お疲れ様です" ]
  robot.hear /hi|hey|yo|ha-i/i, (msg) ->
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

  robot.hear /(breakfast|(朝|あさ)(御|はん)(飯|はん))/i, (msg) ->
    msg.send msg.random [
      "ウイダー in ゼリー",
      "ヨーグルト",
      "ポパイ",
      "バナナ", 
      "食べずにがんばろ？" ,
      "は？",
      "社畜"]
    
  robot.hear /ごきげんよう/i, (msg) ->
    msg.send msg.random ["ごきげんよう",
                         "hey!",
                         "は？"]
    
    
