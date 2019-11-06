if curl -sL --fail http://google.com -o /dev/null; then
  curl -H "$(cat ~/Dropbox/btt/buttondown)" https://api.buttondown.email/v1/subscribers | /usr/local/bin/jq .count > ~/Dropbox/btt/buttondown.out
  curl -H "$(cat ~/Dropbox/btt/github)" https://api.github.com/users/swapagarwal | /usr/local/bin/jq .followers > ~/Dropbox/btt/github.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=SwapAgarwal | /usr/local/bin/jq '.[0].followers_count' > ~/Dropbox/btt/twitter.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=DXClubIO | /usr/local/bin/jq '.[0].followers_count' > ~/Dropbox/btt/dxclub.out
  curl -H "$(cat ~/Dropbox/btt/github)" https://api.github.com/repos/swapagarwal/swag-for-dev | /usr/local/bin/jq .stargazers_count > ~/Dropbox/btt/swag.out
  curl -H "$(cat ~/Dropbox/btt/townscript)" https://www.townscript.com/api/registration/getRegisteredUsers\?eventCode\=vueblr-20 | /usr/local/bin/jq -r '.data' | /usr/local/bin/jq '. | length' > ~/Dropbox/btt/townscript.out
else
  echo "Unable to connect to the internet!"
fi
