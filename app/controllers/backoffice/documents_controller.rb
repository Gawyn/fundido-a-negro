class Backoffice::DocumentsController < Backoffice::BackofficeController
  load_and_authorize_resource

  def index
    @documents = case current_user.role
      when "admin"
        Document.all
      when "editor"
        current_user.documents
    end
  end
end
