class HomeController < ApplicationController
  def index
    @wedding_info    = WeddingInformation.first
    @event_galleries = EventGallery.order('sort_order desc')
    @ceremonies      = Ceremony.order('id desc')

    @groom = @wedding_info.groom
    @bride = @wedding_info.bride

    @years = %w(First Second Third Fourth Fifth Sixth Seventh Eight Ninth Tenth)
  end
end
