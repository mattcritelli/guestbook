class EntriesController < ApplicationController
  def sign_in
    @previous_name = cookies[:name]
    @name = params[:visitor_name]
    cookies[:name] = @name
    unless @name.blank?
      @entry = Entry.create({:name => @name})
    end

    @entry = Entry.all
  end
end
