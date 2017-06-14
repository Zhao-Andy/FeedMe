require 'stream_rails'

StreamRails.configure do |config|
  config.api_key = ENV['STREAM_RAILS_KEY']
  config.api_secret = ENV['STREAM_RAILS_SECRET']
  config.timeout = 30
  config.location    = 'us-east'

  config.news_feeds = { flat: 'timeline_flat', aggregated: 'timeline_aggregated' }
  config.notification_feed = 'notification'
end
