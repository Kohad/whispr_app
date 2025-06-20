class ConfessionsController < ApplicationController
  before_action :check_rate_limit, only: :create

  def index
    @confessions = Confession.order(created_at: :desc).limit(50)
    @confession = Confession.new
  end

  def trending
    @confessions = Confession.all.sort_by(&:score).reverse.take(50)
  end

  def create
    @confession = Confession.new(confession_params.merge(ip: request.remote_ip))
    if @confession.save
      redirect_to root_path, notice: "Confession posted."
    else
      render :index
    end
  end

  private

  def confession_params
    params.require(:confession).permit(:body)
  end

  def check_rate_limit
    if Confession.where(ip: request.remote_ip).where('created_at >= ?', Time.now.beginning_of_day).count >= 3
      redirect_to root_path, alert: "Rate limit exceeded (3 posts/day)."
    end
  end
end