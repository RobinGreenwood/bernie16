class NotesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @note = Note.new(note_params)

    if @note.save
      UserMailer.send_note(@note)
      head :no_content
    else
      puts "Not Saved"
      head :no_content
    end
  end

  private
  def note_params
    params.require(:note).permit(:sender_email, :receiver_email, :text)
  end
end
