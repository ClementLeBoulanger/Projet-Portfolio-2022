class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @message = Message.new
    git_info_commits
    git_info_repos
  end

  private

  def git_info_commits
    require 'open-uri'
    require 'nokogiri'

    url = "https://github.com/ClementLeBoulanger"

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search('.js-yearly-contributions h2').each do |element|
      @commit = element.text.strip.match(/[0-9]*/)
    end
  end

  def git_info_repos
    require 'json'
    require 'open-uri'

    url = 'https://api.github.com/users/ClementLeBoulanger'
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)

    @repo = user['public_repos']
  end
end
