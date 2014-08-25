class WordsController < ApplicationController
  def index
    session[:count] ||= 0
    @word = params[:word]
  end

  def make_word
    session[:count] += 1
    redirect_to words_url(word: SecureRandom.hex(7))
  end

  def reset
    session[:count] = nil
    redirect_to words_url
  end  
end
