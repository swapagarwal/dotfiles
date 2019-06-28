if curl -sL --fail http://google.com -o /dev/null; then
  curl -H "$(cat ~/Downloads/btt/buttondown)" https://api.buttondown.email/v1/subscribers | /usr/local/bin/jq .count > ~/Downloads/btt/buttondown.out
  curl -H "$(cat ~/Downloads/btt/github)" https://api.github.com/users/swapagarwal | /usr/local/bin/jq .followers > ~/Downloads/btt/github.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=SwapAgarwal | /usr/local/bin/jq '.[0].followers_count' > ~/Downloads/btt/twitter.out
  curl -H "$(cat ~/Downloads/btt/github)" https://api.github.com/repos/swapagarwal/swag-for-dev | /usr/local/bin/jq .stargazers_count > ~/Downloads/btt/swag.out
  curl -H "$(cat ~/Downloads/btt/townscript)" https://www.townscript.com/api/registration/getRegisteredUsers\?eventCode\=vueblr-16 | /usr/local/bin/jq -r '.data' | /usr/local/bin/jq '. | length' > ~/Downloads/btt/townscript.out
else
  echo "Unable to connect to the internet!"
fi
