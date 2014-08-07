require 'rss'
require 'open-uri'
require 'colorize'
require 'action_view'

I18n.enforce_available_locales = false
I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.load_path = Dir[File.join(File.dirname(File.realpath(__FILE__)) + '/locales', '*.yml')]
I18n.backend.load_translations
I18n.locale = :tr

module Safran
  class Parser
    attr_reader :url

    def initialize
      @url = 'http://www.safran.io/feed.rss'
    end

    def parse
      begin
        open(@url) do |rss|
          feed = RSS::Parser.parse(rss)
          feed.items.each do |item|
            print item
          end
        end
      rescue => e
        "Bir hata oluştu: #{e}"
      end
    end

    def print(item)
      time_ago = ActionView::Base.new.time_ago_in_words(item.pubDate)
      puts "#{item.title} [ #{time_ago} #{I18n.t('custom.ago')} ]".colorize(:white)
      puts "#{item.link}".colorize(:blue).underline
      puts ""
    end
  end
end