class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact, :faq, :terms]

  def home
  end

  def about
  end

  def contact
  end

  def faq
  end

  def terms
  end
end
