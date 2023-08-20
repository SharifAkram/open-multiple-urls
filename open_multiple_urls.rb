# A program that automates the opening of my study environment

require 'launchy'

urls = ['boot.dev',
        'https://chat.openai.com/',
        'https://stackoverflow.com/',
        'youtube.com',
        'github.com',
        'google.com']

urls.each do |url|
  begin
    Launchy.open(url)
  rescue StandardError => e
    puts "Error opening the URL: #{e.message}"
  end
end
