module UserHandler
  def create_user
    credentials = credentials_form
    @user = Services::Users.signup(credentials)
    notes_page
  rescue HTTParty::ResponseError => e
    parsed_error = JSON.parse(e.message)
    puts parsed_error
  end
end
