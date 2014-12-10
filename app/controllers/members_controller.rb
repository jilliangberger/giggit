class MembersController < ApplicationController
  # GET bands/1/old_members
  # GET bands/1/old_members.xml
  def index
    @band = Band.find(params[:band_id])
    @members = @band.members

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @members }
    end
  end

  # GET bands/1/old_members/1
  # GET bands/1/old_members/1.xml
  def show
    @member = Band.find(params[:band_id]).members.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @member }
    end
  end

  # GET bands/1/old_members/new
  # GET bands/1/old_members/new.xml
  def new
    @member = Band.find(params[:band_id]).members.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @member }
    end
  end

  # GET bands/1/old_members/1/edit
  def edit
    @member = Band.find(params[:band_id]).members.find(params[:id])
  end

  # POST bands/1/old_members
  # POST bands/1/old_members.xml
  def create
    @member = Band.find(params[:band_id]).members.build(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to([@member.band, @member], :notice => 'Member was successfully created.') }
        format.xml  { render :xml => @member, :status => :created, :location => [@member.bands, @member] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT bands/1/old_members/1
  # PUT bands/1/old_members/1.xml
  def update
    @member = Band.find(params[:band_id]).members.find(params[:id])

    respond_to do |format|
      if @member.update_attributes(member_params)
        format.html { redirect_to([@member.band, @member], :notice => 'Member was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE bands/1/old_members/1
  # DELETE bands/1/old_members/1.xml
  def destroy
    bands = Band.find(params[:band_id])
    @member = bands.members.find(params[:id])
    @member.destroy

    respond_to do |format|
      format.html { redirect_to bands_members_url(bands) }
      format.xml  { head :ok }
    end
  end

  private

  def member_params
    params.require(:member).permit(:full_name, :instrument)
  end

end
