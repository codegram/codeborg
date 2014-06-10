# Description:
#   Make the hubot receive webhooks
#
# Commands:
#   None
#
# Notes:
#   None

module.exports = (robot) ->
  robot.router.post '/travis/empresaula', (req, res) ->
    room = '#empresaula'
    data = JSON.parse req.body.payload
    status = data.status
    branch = data.branch
    commitMessage = data.message
    authorName = data.author_name
    buildURL = data.build_url
    number = data.number

    robot.messageRoom room, "TravisCI: Build #{number} #{status} for commit '#{commitMessage}' by #{authorName} (empresaula/#{branch}) #{buildURL}"

    res.send 'OK'
