class EmailsController < ApplicationController

  def show
    get_emails = Gmail.new(current_user)
    get_emails.individual_messages_ids
    analysis = Analysis.create(content_source: 'gmail')
    redirect_to analysis_path(analysis.id)
  end

end
