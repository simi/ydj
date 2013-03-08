require 'youtube_it'

module Ydj
  def self.download(channel)
    client = YouTubeIt::Client.new
    puts "Downloading #{channel}..."
    page = 1
    array = []
    while urls = client.videos_by(:user => channel, :per_page => 50, :page => page).videos.collect{|v| v.player_url} and urls.any?
      puts "Page #{page}, found #{urls.count} videos"
      urls.each do |url|
        array << url
      end
      page = page + 1
    end
    File.open('list', 'w') {|f| f.write(array.join("\n"))}
  end
end
