class RetweetController < ApplicationController
  before_action :set_tweet

  def create
    @tweet = @tweet.increment! :retweets_count
    redirect_to tweets_path(@tweet)
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
