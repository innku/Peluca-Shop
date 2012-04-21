class WigsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /wigs
  # GET /wigs.json
  def index
    @wigs = Wig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wigs }
    end
  end

  # GET /wigs/1
  # GET /wigs/1.json
  def show
    @wig = Wig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wig }
    end
  end

  # GET /wigs/new
  # GET /wigs/new.json
  def new
    @wig = Wig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wig }
    end
  end

  # GET /wigs/1/edit
  def edit
    @wig = Wig.find(params[:id])
  end

  # POST /wigs
  # POST /wigs.json
  def create
    @wig = Wig.new(params[:wig])

    respond_to do |format|
      if @wig.save
        format.html { redirect_to @wig, notice: 'Wig was successfully created.' }
        format.json { render json: @wig, status: :created, location: @wig }
      else
        format.html { render action: "new" }
        format.json { render json: @wig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wigs/1
  # PUT /wigs/1.json
  def update
    @wig = Wig.find(params[:id])

    respond_to do |format|
      if @wig.update_attributes(params[:wig])
        format.html { redirect_to @wig, notice: 'Wig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wigs/1
  # DELETE /wigs/1.json
  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy

    respond_to do |format|
      format.html { redirect_to wigs_url }
      format.json { head :no_content }
    end
  end
end
