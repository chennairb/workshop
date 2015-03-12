class WelcomeController < ApplicationController
  http_basic_authenticate_with name:     ENV['ADMIN_USER'],
                               password: ENV['ADMIN_PASS'],
                               except:   [:home]

  def home
    @participant = Participant.new
  end
end
