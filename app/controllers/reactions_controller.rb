class ReactionsController < ApplicationController
  def create
    confession = Confession.find(params[:confession_id])
    if Reaction.where(confession: confession, ip: request.remote_ip).exists?
      head :forbidden
    else
      Reaction.create(confession: confession, reaction_type: params[:reaction_type], ip: request.remote_ip)
      head :ok
    end
  end
end
