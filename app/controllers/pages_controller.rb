class PagesController < ApplicationController
  skip_before_action :authenticate_scope!, only: :home
  def home
  end
end
