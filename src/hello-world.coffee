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
                         "Good Morning!"]

  robot.hear /hello/i, (msg) ->
    msg.send msg.random [ "社畜乙です！",
                         "World!",
                         "お疲れ様です" ]
  robot.hear /hi|hey|yo/i, (msg) ->
    msg.send msg.random [ "社畜乙です！",
                         "heyyyyyyyyyyyyyyyyyyyyyyy",
                         "ha-1" ]

    
  robot.hear /(lunch|(御|お)(昼|ひる))/i, (msg) ->
    msg.send msg.random [
      "ラーメン",
      "うどんかそば",
      "ポパイ",
      "丼もの",
      "季節限定", 
      "食べずにがんばろ？" ,
      "カレー",
      "定食",
      "今は時間が悪い"]
