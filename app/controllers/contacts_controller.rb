class ContactsController < ApplicationController
  def index
  end

  def create
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.append(:messages, partial: 'create')
      end
    end
  end
end
