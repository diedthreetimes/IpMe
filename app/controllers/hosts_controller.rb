class HostsController < ApplicationController
  protect_from_forgery :except => :create

  def index
    @hosts = Host.all

    respond_to do |format|
      format.html
      format.json { render :json => @hosts }
    end
  end

  # def new
  #   @host = Host.new

  #   respond_to do |format|
  #     format.html  # new.html.erb
  #     format.json  { render :json => @host }
  #   end
  # end

  # TODO: Respond to xml and have a seperate error code for various validation errors
  # TODO: Remove hosts
  # TODO: Add in status codes
  # TODO: refactor host token as id
  # TODO: refactor errors to display as json
  def create
    @host = Host.new(params[:host])

    respond_to do |format|
      if @host.save
        format.html { redirect_to(@host,
          :notice => 'Host was successfully created.') }
        format.json { render :json => @host,
          :status => :created, :location => @host }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @host.errors,
          :status => :unprocessable_entity }
      end
    end
  end
end
