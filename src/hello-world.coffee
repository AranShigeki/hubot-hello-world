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
    
    
  robot.hear /(bye|(帰|かえ)る|(帰|かえ)ろ)/i, (msg) ->
    msg.send msg.random [
      "その前に仕事終わらせて？",
      "は？",
      "good bye!",
      "今日も一日おつかれさまｖ", 
      "お疲れ様です" ,
      "は？",
      "社畜お疲れ様です！"]
    
  robot.hear /ごきげんよう/i, (msg) ->
    msg.send msg.random ["ごきげんよう",
                         "hey!",
                         "は？"]
    
module.exports = (robot) -&gt;
  status  = {}
 
  robot.respond /(.*)/i, (res) -&gt;
    message = res.match[1]
    return if message is ''
 
    res
      .http('https://"10252d24-5eb7-425a-bf03-997ebe69f605":"CntDmJA7Qksl"
      @gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/90e7acx197-nlc-59885/classify')
      .headers('Content-Type': 'application/json')
      .post(JSON.stringify({ text: message})) (err, response, body) -&gt;
        if err?
          console.log "Encountered an error #{err}"
        else
          data = JSON.parse(body);
          res.send data["top_class"]
    
    
