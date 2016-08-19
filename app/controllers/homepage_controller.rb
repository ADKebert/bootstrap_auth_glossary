class HomepageController < ApplicationController
  def index
    @terms = Term.order(created_at: :desc).take(5)
  end
end
