require 'thor'
require 'config'
require 'book'
require 'project'

module M1Book
  class Cli < Thor
    desc 'new BOOK_NAME', 'Create a new book project'
    def new(book_name)
      Project.new(book_name).create_project_folder
    end

    desc 'generate', 'Generate the book'
    def generate
      config = Config.new
      Book.new(config.settings).generate
    end
  end
end
