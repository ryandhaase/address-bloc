require_relative 'entry.rb'
require 'csv'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end

  def remove_entry(name)
    index = 0
    @entries.each do |entry|
      if name == entry.name
        entries.delete(entry)
        break
      else
        index += 1
      end
    end
  end

  def import_from_csv(file_name)
  end
end
