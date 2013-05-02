class BroadsController < ApplicationController
  # GET /broads
  # GET /broads.json
  def index
    @broads = Broad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @broads }
    end
  end

  # GET /broads/1
  # GET /broads/1.json
  def show
    @broad = Broad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @broad }
    end
  end

  # GET /broads/new
  # GET /broads/new.json
  def new
    @broad = Broad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @broad }
    end
  end

  # GET /broads/1/edit
  def edit
    @broad = Broad.find(params[:id])
  end

  # POST /broads
  # POST /broads.json
  def create
    @broad = Broad.new(params[:broad])

    respond_to do |format|
      if @broad.save
        format.html { redirect_to @broad, notice: 'Broad was successfully created.' }
        format.json { render json: @broad, status: :created, location: @broad }
      else
        format.html { render action: "new" }
        format.json { render json: @broad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /broads/1
  # PUT /broads/1.json
  def update
    @broad = Broad.find(params[:id])

    respond_to do |format|
      if @broad.update_attributes(params[:broad])
        format.html { redirect_to @broad, notice: 'Broad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @broad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /broads/1
  # DELETE /broads/1.json
  def destroy
    @broad = Broad.find(params[:id])
    @broad.destroy

    respond_to do |format|
      format.html { redirect_to broads_url }
      format.json { head :no_content }
    end
  end
end
