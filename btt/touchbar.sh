if curl -sL --fail http://google.com -o /dev/null; then
  curl -H "$(cat ~/Dropbox/btt/buttondown)" https://api.buttondown.email/v1/subscribers | /usr/local/bin/jq .count > ~/Dropbox/btt/buttondown.out
  # curl -H "$(cat ~/Dropbox/btt/github)" https://api.github.com/users/swapagarwal | /usr/local/bin/jq .followers > ~/Dropbox/btt/github.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=SwapAgarwal | /usr/local/bin/jq '.[0].followers_count' > ~/Dropbox/btt/twitter.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=DXClubIO | /usr/local/bin/jq '.[0].followers_count' > ~/Dropbox/btt/dxclub.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=ReademyHQ | /usr/local/bin/jq '.[0].followers_count' > ~/Dropbox/btt/reademy.out
  curl -H "$(cat ~/Dropbox/btt/github)" https://api.github.com/repos/swapagarwal/swag-for-dev | /usr/local/bin/jq .stargazers_count > ~/Dropbox/btt/swag.out
  curl https://emailoctopus.com/api/1.5/lists/"$(cat ~/Dropbox/btt/emailoctopus)" | /usr/local/bin/jq '.counts.subscribed' > ~/Dropbox/btt/emailoctopus.out
else
  echo "Unable to connect to the internet!"
fi
