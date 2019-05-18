curl -H "$(cat ~/Downloads/buttondown)" https://api.buttondown.email/v1/subscribers | /usr/local/bin/jq .count > ~/Downloads/buttondown.out
curl -H "$(cat ~/Downloads/github)" https://api.github.com/users/swapagarwal | /usr/local/bin/jq .followers > ~/Downloads/github.out
curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=SwapAgarwal | /usr/local/bin/jq '.[0].followers_count' > ~/Downloads/twitter.out
curl -H "$(cat ~/Downloads/github)" https://api.github.com/repos/swapagarwal/swag-for-dev | /usr/local/bin/jq .stargazers_count > ~/Downloads/swag.out
curl -H "$(cat ~/Downloads/townscript)" https://www.townscript.com/api/registration/getRegisteredUsers\?eventCode\=vueblr-15 | /usr/local/bin/jq -r '.data' | /usr/local/bin/jq '. | length' > ~/Downloads/townscript.out
