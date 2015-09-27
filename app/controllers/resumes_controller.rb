class ResumesController < ApplicationController
  def show
    @resume = Resume.joins(:user).find_by(users: {email: 'saad.18@gmail.com'})
  end
end
