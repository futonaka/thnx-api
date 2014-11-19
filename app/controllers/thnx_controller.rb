class ThnxController < ApplicationController
  def create
    from_id = params['id']
    to_id   = params['to_id']

    Thnx.create(from: from_id, to: to_id, sent_at: DateTime.now)
    render :json => 'success'
  end

  def index
    thnx_recv_uesr_id = params['id']

    thnxes = Thnx.where(to: thnx_recv_uesr_id, received_at: nil)
    update_time = DateTime.now
    thnxes.each do |thnx|
      thnx.update(received_at: update_time)
    end

    render :json => thnxes
  end
end
