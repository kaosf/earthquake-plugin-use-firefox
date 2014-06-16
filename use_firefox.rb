Earthquake.init do
  command :openfirefox do |m|
    matches = twitter.status(m[1])['retweeted_status'].nil? ?
      URI.extract(twitter.status(m[1])["text"],["http", "https"]) :
      URI.extract(twitter.status(m[1])['retweeted_status']["text"],["http", "https"])
    unless matches.empty?
      matches.each do |match_url|
        `firefox #{match_url}`
      end
    else
      puts "no link found".c(41)
    end
  end

  command :browsefirefox do |m|
    url = case m[1]
      when /^\d+$/
        "https://twitter.com/#{twitter.status(m[1])['user']['screen_name']}/status/#{m[1]}"
      else
        "https://twitter.com/#{m[1][/[^'"]+/]}"
      end
    `firefox #{url}`
  end
end

Earthquake.alias_command ':of', ':openfirefox'
Earthquake.alias_command ':brf', ':browsefirefox'
