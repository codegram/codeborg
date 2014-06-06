# Codeborg

This is a version of GitHub's Campfire bot, hubot. He's pretty cool.

This is the productivity tool for Codegram, integrated with Slack. We're
building a prodtivity-killer hubot instance, but that's another story.

## Scripts

These are the scripts Codeborg uses:

* `auth`
* `dnsimple`
* `dribbble`
* `eardropping`
* `eval`
* `excuse`
* `newrelic`
* `ping`
* `redis-brain`
* `shipit`
* `status`
* `youtube-info`

You can find more info about them at the
[hubot-scripts](https://github.com/github/hubot-scripts) repo.

### `rules`

This script reminds Codeborg about Asimov's Rules of Robotics. It includes the
[Zeroth
Law](http://en.wikipedia.org/wiki/Three_Laws_of_Robotics#Zeroth_Law_added), by
R. Daneel Olivaw.

```
> codeborg the rules
```

The regexp to match this plugin is `/(what are )?the (three |3
)?(rules|laws)/`.

### `webhooks`

This simple script lets Codeborg be able to listen to webhooks sent by other
apps. Remember that you'll need to configure Codeborg to run as a web process
on Heroku.

Using `curl`, build the request like this:

```
$ curl -X POST --data-urlencode 'payload={"text": "Texting webhooks", "room":
"#dev"}' http://<your_app>.herokuapp.com/webhooks/testapp
```
