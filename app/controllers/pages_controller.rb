class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    git_info
  end

  private

  def git_info
    require 'open-uri'
    require 'nokogiri'

    url = "https://github.com/ClementLeBoulanger"

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.js-yearly-contributions h2').each do |element|
      @commit = element.text.strip.match(/[0-9]*/)
    end
  end
end
