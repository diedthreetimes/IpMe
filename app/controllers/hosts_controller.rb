class HostsController < ApplicationController
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
