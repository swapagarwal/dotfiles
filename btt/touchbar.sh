if curl -sL --fail http://google.com -o /dev/null; then
  curl -H "$(cat ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/buttondown)" https://api.buttondown.email/v1/subscribers | /usr/local/bin/jq .count > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/buttondown.out
  # curl -H "$(cat ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/github)" https://api.github.com/users/swapagarwal | /usr/local/bin/jq .followers > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/github.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=SwapAgarwal | /usr/local/bin/jq '.[0].followers_count' > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/twitter.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=DX_club_ | /usr/local/bin/jq '.[0].followers_count' > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/dxclub.out
  curl https://cdn.syndication.twimg.com/widgets/followbutton/info.json\?screen_names\=ReademyHQ | /usr/local/bin/jq '.[0].followers_count' > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/reademy.out
  # curl -H "$(cat ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/github)" https://api.github.com/repos/swapagarwal/swag-for-dev | /usr/local/bin/jq .stargazers_count > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/swag.out
  curl https://emailoctopus.com/api/1.5/lists/"$(cat ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/emailoctopus)" | /usr/local/bin/jq '.counts.subscribed' > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/emailoctopus.out
  curl https://api.convertkit.com/v3/subscribers\?api_secret="$(cat ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/convertkit)" | /usr/local/bin/jq '.total_subscribers' > ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/btt/convertkit.out
else
  echo "Unable to connect to the internet!"
fi
