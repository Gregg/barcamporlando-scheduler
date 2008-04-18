class TalksController < ApplicationController
  before_filter :find_event
  before_filter :find_talk, :only => %w(edit update destroy)

  # GET /events/1/talks
  # GET /events/1/talks.xml
  def index
    @talks = @event.talks

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @talks }
      format.json  { render :json => @talks }
    end
  end

  # GET /events/1/talks/new
  # GET /events/1/talks/new.xml
  def new
    @talk = @event.talks.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @talk }
    end
  end

  # GET /events/1/talks/1/edit
  def edit
  end

  # POST /events/1/talks
  # POST /events/1/talks.xml
  def create
    @talk = @event.talks.new(params[:talk])

    respond_to do |format|
      if @talk.save
        flash[:notice] = 'Talk was successfully created.'
        format.html { redirect_to(event_talks_path(@event)) }
        format.xml  { render :xml => @talk, :status => :created, :location => @talk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1/talks/1
  # PUT /events/1/talks/1.xml
  def update
    respond_to do |format|
      if @talk.update_attributes(params[:talk])
        flash[:notice] = 'Talk was successfully updated.'
        format.html { redirect_to(event_talks_path(@event)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @talk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1/talks/1
  # DELETE /events/1/talks/1.xml
  def destroy
    @talk.destroy

    respond_to do |format|
      format.html { redirect_to(event_talks_path(@event)) }
      format.xml  { head :ok }
    end
  end

  def find_event
    @event = Event.find(params[:event_id])
  end
  protected :find_event

  def find_talk
    @talk = @event.talks.find(params[:id])
  end
  protected :find_talk
end
