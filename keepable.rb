require "httparty"
require "json"
require "terminal-table"
require "colorize"
require_relative "services/sessions"
require_relative "services/notes"
require_relative "services/users"
require_relative "helpers/helpers"
require_relative "handlers/notes_handler"
require_relative "handlers/user_handler"
require_relative "handlers/session_handler"

class KeepableApp
  include Helpers
  include NotesHandler
  include UserHandler
  include SessionHandler

  def initialize
    @user = nil
    @notes = []
    @trash = false
  end

  def start
    puts welcome
    action = ""
    until action == "exit"
      action = login_menu[0]
      case action
      when "login" then login
      when "create_user" then create_user
      when "exit" then puts "Thanks for using Keepable!"
      end
    end
  end

  def notes_page
    @notes = Services::Notes.index_notes(@user[:token])
    action = ""
    until action == "logout"
      puts notes_table
      action, id = notes_menu
      case action
      when "create" then create_note
      when "update" then update_note(id.to_i)
      when "delete" then delete_note(id.to_i)
      when "toggle" then toggle_note(id.to_i)
      when "trash" then trash_page
      when "logout" then next
      end
    end
    action
  end

  def trash_page
    @trash = true
    action = ""
    until action == "back"
      puts notes_table
      action, id = trash_menu
      case action
      when "delete" then delete_note(id.to_i)
      when "recover" then recover_note(id.to_i)
      when "back" then next
      end
    end
    @trash = false
  end
end

app = KeepableApp.new
app.start
