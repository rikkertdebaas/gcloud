class NavbarController < ApplicationController
  def home
  end

  def diensten
  end

  def samenwerkingen
  end

  def contact
    @message = Message.new
  end

  def over
  end

  def overig
  end
end
