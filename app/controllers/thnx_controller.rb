class ThnxController < ApplicationController
  def create
    from_id = params['id']
    to_id   = params['to_id']
    message = params['message']

    Thnx.create(from: from_id, to: to_id, sent_at: DateTime.now, message: message)
    render :json => 'success'
  end

  def index
    thnx_recv_uesr_id = params['id']

    thnxes = Thnx.where(to: thnx_recv_uesr_id, received_at: nil)
    update_time = DateTime.now
    thnxes.to_a.map! do |thnx|
      thnx.update(received_at: update_time)
      thnx.attributes.merge({"from_name" => User.find_by(id: thnx.from).name})
    end

    render :json => thnxes
  end
end
