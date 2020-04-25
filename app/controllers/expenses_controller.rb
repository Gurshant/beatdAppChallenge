class ExpensesController < ApplicationController
  before_action :set_expense, only: [ :edit, :update, :destroy]

  # GET /expenses
  # GET /expenses.json
  def index
    if !current_user.present?
      redirect_to new_session_path, notice: 'Please Login' 
    else
      @expenses = current_user.expenses.order('created_at DESC')
    end
  end


  # GET /expenses/new
  def new
    if !current_user.present?
      redirect_to new_session_path, notice: 'Please Login' 
    end
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
    if !current_user.present? || current_user.id!=@expense.user_id
      format.html {redirect_to new_session_path, notice: 'Please Login' }
    end
  end

  # POST /expenses
  def create
    @expense = Expense.new(expense_params)
    @expense.user_id=current_user.id
    respond_to do |format|
      if @expense.save
        format.html { redirect_to expenses_path, notice: 'Expense was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if current_user.id==@expense.user_id
      respond_to do |format|
        if @expense.update(expense_params)
          format.html { redirect_to expenses_path, notice: 'Expense was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  # DELETE /expenses/1
  def destroy
    if current_user.id==@expense.user_id
      @expense.destroy
      respond_to do |format|
        format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:name, :cost, :quantity, :category_id)
    end
end
