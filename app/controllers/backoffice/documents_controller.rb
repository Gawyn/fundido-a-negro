class Backoffice::DocumentsController < Backoffice::BackofficeController
  def index
    @documents = current_user.editor? ? current_user.documents : Document.all
  end
end
