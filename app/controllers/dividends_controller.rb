class DividendsController < ApplicationController
  # GET /dividends
  # GET /dividends.xml
  def index
		@dividends = Dividend.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.js # index.js.erb
      format.xml  { render :xml => @dividends }
    end
  end

  # GET /dividends/1
  # GET /dividends/1.xml
  def show
    @dividend = Dividend.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dividend }
    end
  end

  # GET /dividends/new
  # GET /dividends/new.xml
  def new
    @dividend = Dividend.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dividend }
    end
  end

  # GET /dividends/1/edit
  def edit
    @dividend = Dividend.find(params[:id])
  end

  # POST /dividends
  # POST /dividends.xml
  def create
    @dividend = Dividend.new(params[:dividend])

    respond_to do |format|
      if @dividend.save
        format.html { redirect_to(@dividend, :notice => 'Dividend was successfully created.') }
        format.xml  { render :xml => @dividend, :status => :created, :location => @dividend }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dividend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dividends/1
  # PUT /dividends/1.xml
  def update
    @dividend = Dividend.find(params[:id])

    respond_to do |format|
      if @dividend.update_attributes(params[:dividend])
        format.html { redirect_to(@dividend, :notice => 'Dividend was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dividend.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dividends/1
  # DELETE /dividends/1.xml
  def destroy
    @dividend = Dividend.find(params[:id])
    @dividend.destroy

    respond_to do |format|
      format.html { redirect_to(dividends_url) }
      format.xml  { head :ok }
    end
  end
end
