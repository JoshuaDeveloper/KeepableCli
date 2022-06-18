module SessionHandler
  def login
    credentials = credentials_form
    @user = Services::Sessions.login(credentials)
    notes_page
  rescue HTTParty::ResponseError => e
    parsed_error = JSON.parse(e.message)
    puts parsed_error
  end
end
