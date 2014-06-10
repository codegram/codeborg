# Description:
#   Make the hubot receive webhooks from TravisCI
#
# Commands:
#   None
#
# Notes:
#   None

module.exports = (robot) ->
  robot.router.post '/travis/:room', (req, res) ->
    room = req.params.room
    data = JSON.parse req.body.payload
    status = data.status_message
    branch = data.branch
    commitMessage = data.message
    authorName = data.author_name
    buildURL = data.build_url
    number = data.number
    repoName = data.repository.name

    robot.messageRoom room, "TravisCI: Build #{number} #{status} for commit '#{commitMessage}' by #{authorName} (#{repoName}/#{branch}) #{buildURL}"

    res.send 'OK'
