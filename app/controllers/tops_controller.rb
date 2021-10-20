class TopsController < ApplicationController
  before_action :autheniticate_user
  def index
    @to_me_discusses= Discuss.where(user_to_id:current_user.id)
    @from_me_discusses= Discuss.where.not(user_to_id: current_user.id)
  end

  def help
  end
end
