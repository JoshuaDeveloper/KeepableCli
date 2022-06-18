module NotesHandler
  def delete_note(id)
    deleted_note = Services::Notes.delete_note(@user[:token], id)
    found_note = @notes.find { |note| note[:id] == id }
    if deleted_note
      found_note.update(deleted_note)
    else
      @notes.delete(found_note)
    end
  end

  def update_note(id)
    note_data = update_note_form
    return if note_data.empty?

    updated_note = Services::Notes.update_note(@user[:token], note_data, id)
    founded_note = @notes.find { |note| note[:id] == id }
    founded_note.update(updated_note)
  end

  def toggle_note(id)
    found_note = @notes.find { |note| note[:id] == id }
    note_data = { pinned: !found_note[:pinned] }
    toggled_note = Services::Notes.update_note(@user[:token], note_data, id)
    found_note.update(toggled_note)
  end

  def recover_note(id)
    note_data = { deleted_at: nil }

    updated_note = Services::Notes.update_note(@user[:token], note_data, id)
    founded_note = @notes.find { |note| note[:id] == id }
    founded_note.update(updated_note)
  end

  def create_note
    note_data = note_form
    new_note = Services::Notes.create_note(@user[:token], note_data)
    @notes << new_note
  end

  def notes_table
    table = Terminal::Table.new
    table.title = "#{@user[:username]}'s Notes"
    table.headings = ["ID", "Title", "Body", "Pinned"]
    table.rows = notes_to_show.map do |note|
      [note[:id], note[:title].colorize(note[:color].to_sym), note[:body], note[:pinned] || nil]
    end
    table
  end

  def notes_to_show
    if @trash
      sorted_toggled.select { |note| note[:deleted_at] }
    else
      sorted_toggled.reject { |note| note[:deleted_at] }
    end
  end

  def sorted_toggled
    @notes.sort_by { |note| note[:pinned] ? -1 : 1 }
  end
end
