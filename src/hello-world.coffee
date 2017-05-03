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
    msg.send "朝から社畜おつです！"

  robot.hear /hello/i, (msg) ->
    msg.send '社畜乙です！'

  robot.respond /(lunch|御(|お)昼)/i, (msg) ->
    lunch = msg.random [
      "ラーメン"
      "うどんかそば"
      "ポパイ"
      "丼もの"
      "季節限定" 
      "食べずにがんばろ？" 
      "カレー"
      "定食"
      "今は時間が悪い"
    ]
msg.reply = "lunch"
