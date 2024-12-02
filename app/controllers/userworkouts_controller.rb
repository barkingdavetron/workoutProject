class UserworkoutsController < ApplicationController
  before_action :set_userworkout, only: %i[ show edit update destroy ]

  # GET /userworkouts or /userworkouts.json
  def index
    @userworkouts = Userworkout.all
  end

  # GET /userworkouts/1 or /userworkouts/1.json
  def show
  end

  # GET /userworkouts/new
  def new
    @userworkout = Userworkout.new
  end

  # GET /userworkouts/1/edit
  def edit
  end

  # POST /userworkouts or /userworkouts.json
  def create
    @userworkout = Userworkout.new(userworkout_params)

    respond_to do |format|
      if @userworkout.save
        format.html { redirect_to @userworkout, notice: "Userworkout was successfully created." }
        format.json { render :show, status: :created, location: @userworkout }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userworkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userworkouts/1 or /userworkouts/1.json
  def update
    respond_to do |format|
      if @userworkout.update(userworkout_params)
        format.html { redirect_to @userworkout, notice: "Userworkout was successfully updated." }
        format.json { render :show, status: :ok, location: @userworkout }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userworkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userworkouts/1 or /userworkouts/1.json
  def destroy
    @userworkout.destroy!

    respond_to do |format|
      format.html { redirect_to userworkouts_path, status: :see_other, notice: "Userworkout was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userworkout
      @userworkout = Userworkout.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def userworkout_params
      params.expect(userworkout: [ :exercise, :User_id ])
    end
end
