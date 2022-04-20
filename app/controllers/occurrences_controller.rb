class OccurrencesController < ApplicationController
  before_action :set_policeman, only: %i[ create edit update destroy ]
  before_action :set_occurrence, only: %i[ edit update destroy ]

  # GET /occurrences/1/edit
  def edit
  end

  # POST /occurrences or /occurrences.json
  def create
    @occurrence = @policeman.occurrences.create(occurrence_params)

    respond_to do |format|
      if @occurrence.save
        format.html { redirect_to policeman_path(@policeman), notice: "Occurrence was successfully created." }
        format.json { render :show, status: :created, location: @occurrence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occurrences/1 or /occurrences/1.json
  def update
    respond_to do |format|
      if @occurrence.update(occurrence_params)
        format.html { redirect_to policeman_path(@policeman), notice: "Occurrence was successfully updated." }
        format.json { render :show, status: :ok, location: @occurrence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occurrences/1 or /occurrences/1.json
  def destroy
    @occurrence.destroy

    redirect_to policeman_path(@policeman)
  end

  private
    # Use callbacks to share common setup or constraints between actions.

  def set_policeman
    @policeman = Policeman.find(params[:policeman_id])
  end

  def set_occurrence
    @occurrence = @policeman.occurrences.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
    def occurrence_params
      params.require(:occurrence).permit(:type_name, :value, :date)
    end
end
