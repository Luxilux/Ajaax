class EmailsController < ApplicationController
  def index
     @read_emails = Email.where(read: false)
     @not_read_emails = Email.where(read: true)
     
     respond_to do |format|
    format.html
    format.json
  end
   end

   def new
     @email = Email.new
   end

   def create
     @email = Email.create!(allowed_params)

     respond_to do |f|
       f.html { redirect_to emails_url }
       f.js
     end
   end

   def update
     @email = Email.find(params[:id])
     @email.update_attributes!(allowed_params)

     redirect_to emails_url
   end

   def destroy
     @email = Email.destroy(params[:id])

     redirect_to emails_url
   end

   private

   def allowed_params
     params.require(:email).permit(:body, :objet, :read)
   end
 end
