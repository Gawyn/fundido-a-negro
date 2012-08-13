class Backoffice::DocumentsController < Backoffice::BackofficeController
  respond_to :html, :json

  def index
    @documents = current_user.editor? ? current_user.documents : Document.all
    @options = Document::STATUS.map { |status| [status, status] }
    @options << ["", "-"]
  end

  def update
    @document = Document.find(params[:id])
    @document.update_attributes(params[:document])
    respond_with @document
  end

  def publish
    @document = Document.find(params[:id])
    @document.update_attribute(:published, true)
    redirect_to backoffice_documents_path
  end

  def unpublish
    @document = Document.find(params[:id])
    @document.update_attribute(:published, false)
    redirect_to backoffice_documents_path
  end
end
