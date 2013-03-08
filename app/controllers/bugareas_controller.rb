class BugareasController < ApplicationController
  # GET /bugareas
  # GET /bugareas.json
  def index
    @bugareas = Bugarea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bugareas }
    end
  end

  # GET /bugareas/1
  # GET /bugareas/1.json
  def show
    @bugarea = Bugarea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bugarea }
    end
  end

  # GET /bugareas/new
  # GET /bugareas/new.json
  def new
    @bugarea = Bugarea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bugarea }
    end
  end

  # GET /bugareas/1/edit
  def edit
    @bugarea = Bugarea.find(params[:id])
  end

  # POST /bugareas
  # POST /bugareas.json
  def create
    @bugarea = Bugarea.new(params[:bugarea])

    respond_to do |format|
      if @bugarea.save
        format.html { redirect_to @bugarea, notice: 'Bugarea was successfully created.' }
        format.json { render json: @bugarea, status: :created, location: @bugarea }
      else
        format.html { render action: "new" }
        format.json { render json: @bugarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bugareas/1
  # PUT /bugareas/1.json
  def update
    @bugarea = Bugarea.find(params[:id])

    respond_to do |format|
      if @bugarea.update_attributes(params[:bugarea])
        format.html { redirect_to @bugarea, notice: 'Bugarea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bugarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugareas/1
  # DELETE /bugareas/1.json
  def destroy
    @bugarea = Bugarea.find(params[:id])
    @bugarea.destroy

    respond_to do |format|
      format.html { redirect_to bugareas_url }
      format.json { head :no_content }
    end
  end
end
