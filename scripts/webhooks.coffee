# Description:
#   Make the hubot receive webhooks
#
# Commands:
#   None
#
# Notes:
#   None

module.exports = (robot) ->
  robot.router.post '/webhooks/:appname', (req, res) ->
    data = JSON.parse req.body.payload
    room = data.room
    appname = req.params.appname
    text = data.text

    capitalizedAppname = appname.split(' ').map (word) ->
      word[0].toUpperCase() + word[1..-1].toLowerCase()
    capitalizedAppname = capitalizedAppname.join ' '

    robot.messageRoom room, "Webhook from #{capitalizedAppname}: #{text}"

    res.send 'OK'
