require 'youtube_it'

module Ydj
  def self.download(channel)
    client = YouTubeIt::Client.new
    puts "Downloading #{channel}..."
    page = 1
    while urls = client.videos_by(:user => channel, :per_page => 50, :page => page).videos.collect{|v| v.player_url} and urls.any?
      puts "Page #{page}, found #{urls.count} videos"
      urls.each do |url|
        system("youtube-dl --audio-quality 320k --max-quality 22 -o '%(title)s.%(ext)s' -x --audio-format mp3 #{url}")
      end
      page = page + 1
    end
  end
end
