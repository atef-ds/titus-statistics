class ExpenseClaimersController < ApplicationController
  before_action :set_expense_claimer, only: [:show, :edit, :update, :destroy]

  # GET /expense_claimers
  # GET /expense_claimers.json
  def index
    @expense_claimers = ExpenseClaimer.all.decorate
  end

  # GET /expense_claimers/1
  # GET /expense_claimers/1.json
  def show
  end

  # GET /expense_claimers/new
  def new
    @expense_claimer = ExpenseClaimer.new
  end

  # GET /expense_claimers/1/edit
  def edit
  end

  # POST /expense_claimers
  # POST /expense_claimers.json
  def create
    @expense_claimer = ExpenseClaimer.new(expense_claimer_params)

    respond_to do |format|
      if @expense_claimer.save
        format.html { redirect_to @expense_claimer, notice: 'Expense claimer was successfully created.' }
        format.json { render :show, status: :created, location: @expense_claimer }
      else
        format.html { render :new }
        format.json { render json: @expense_claimer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expense_claimers/1
  # PATCH/PUT /expense_claimers/1.json
  def update
    respond_to do |format|
      if @expense_claimer.update(expense_claimer_params)
        format.html { redirect_to @expense_claimer, notice: 'Expense claimer was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense_claimer }
      else
        format.html { render :edit }
        format.json { render json: @expense_claimer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_claimers/1
  # DELETE /expense_claimers/1.json
  def destroy
    @expense_claimer.destroy
    respond_to do |format|
      format.html { redirect_to expense_claimers_url, notice: 'Expense claimer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_claimer
      @expense_claimer = ExpenseClaimer.find(params[:id]).decorate
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_claimer_params
      params.require(:expense_claimer).permit(:expense_date, :claimer_name, :description, :approved, :amount)
    end
end
