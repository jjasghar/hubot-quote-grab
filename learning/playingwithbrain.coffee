# Description:
#  This is my test script to understand how a things are  is injected and cleared and reported back from redis via hubot
#
# Dependencies:
#   redis-brain.coffee
#
# Configuration:
#   redis somehow
#
# Commands:
#   hubot have a beer - get hubot to drink a beer
#   hubot how many beers have you had? - displays how many beers he's had
#   hubot throw your beer up - makes hubot throw up his beer
#   hubot forget to remember - makes hubot forget what you asked him to remember
#   hubot you should remember <something> - make hubot to remember something
#   hubot what did I ask you to remember - see what you asked hubot to remember
#
# Notes:
#   Again, this is me learning how to manipulate redis-brain.
#
# Author:
#   jjasghar

module.exports = (robot) ->

  robot.respond /have a beer/i, (msg) ->
    beerHad = robot.brain.get('totalBeers') * 1 or 0

    if beerHad > 4
      msg.reply "I'm too drunk..."
    else
      msg.reply 'Sure!'
      robot.brain.set 'totalBeers', beerHad+1

  robot.respond /how many beers have you had/i, (msg) ->
    beerHad = robot.brain.get('totalBeers') * 1 or 0
    msg.reply "It seems you've made me had #{beerHad}"

  robot.respond /throw your beer up/i, (msg) ->
    robot.brain.set 'totalBeers', beerHad = 0
    msg.reply 'hup, buumg, bleeegh .... mmmbuueeeeeghhh *caugh caugh cuagh*!'

  robot.respond /forget to remember/i, (msg) ->
    somethingToRemember = robot.brain.set 'remember', something = "" 
    msg.reply "Where am I? What was I supposed to remember?"

  robot.respond /you should remember (.*)/i, (msg) ->
    something = msg.match[1]
    somethingToRemember = robot.brain.set 'remember', something
    msg.reply "I'll go ahead and remember: #{something}"

  robot.respond /what did I ask you to remember/i, (msg) ->
    something = robot.brain.get('remember')
    msg.reply "You asked me to remember this: #{something}"
