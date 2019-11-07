class Api::StatementsController < Api::BasesController
  def index
    statements = current_user.statements.sort_desc

    render json: {
      statements: statements
    }, status: 200
  end

  def create
    statement = current_user.statements.build params_statement

    if statement.save
      render json: {
        statement: statement
      }, status: 200
    else
      render json: {
        errors: statement.errors.messages
      }, status: 404
    end
  end

  private
  def params_statement
    params.require(:statement).permit Statement::PARAMS_ATTRIBUTES
  end
end
