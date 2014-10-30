class HomepageController < ApplicationController
    skip_before_action :require_signin, only: [:home]
    def home
    end
end
