class ItemsController < ApplicationController
  # GET /items
  # GET /items.xml
  def index
    @items = Items.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end

  # GET /items/1
  # GET /items/1.xml
  def show
    @items = Items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @items }
    end
  end

  # GET /items/new
  # GET /items/new.xml
  def new
    @items = Items.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @items }
    end
  end

  # GET /items/1/edit
  def edit
    @items = Items.find(params[:id])
  end

  # POST /items
  # POST /items.xml
  def create
    @items = Items.new(params[:items])

    respond_to do |format|
      if @items.save
        flash[:notice] = 'Items was successfully created.'
        format.html { redirect_to(@items) }
        format.xml  { render :xml => @items, :status => :created, :location => @items }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @items.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.xml
  def update
    @items = Items.find(params[:id])

    respond_to do |format|
      if @items.update_attributes(params[:items])
        flash[:notice] = 'Items was successfully updated.'
        format.html { redirect_to(@items) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @items.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.xml
  def destroy
    @items = Items.find(params[:id])
    @items.destroy

    respond_to do |format|
      format.html { redirect_to(items_url) }
      format.xml  { head :ok }
    end
  end
end
