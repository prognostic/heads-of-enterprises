class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy, :faq, :edit_faq]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.order(:title).page params[:page]
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
   @assignments = Assignment.where(company_id: params[:id])
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Компания успешно создана.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        if request.referer && URI(request.referer).path.include?('edit_path')

          format.html { redirect_to faq_company_path(@company), notice: 'FAQ успешно обновлен.' }
          format.json { render :show, status: :ok, location: @company }
        else
          format.html { redirect_to @company, notice: 'Компания успешно обновлена.' }
          format.json { render :show, status: :ok, location: @company }
        end
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Компания успешно удалена.' }
      format.json { head :no_content }
    end
  end

  def edit_faq
    @company.answers.build
    @questions = Question.order(:position)
  end

  def faq
    @questions = Question.order(:position)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.fetch(:company, {})
          .permit(:title, :inn, :address, :registration_date, :phones, :website, :kind, :okved, :comment,
          assignments_attributes: [:id, :date, :position, :face_id, :company_id, :_destroy],
          answers_attributes: [:id, :text, :question_id, :company_id, :_destroy])
    end
end