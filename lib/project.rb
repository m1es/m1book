module M1Book
  class Project
    def initialize(book_name)
      @book_name = book_name    
      @install_dir = folderize(@book_name)
    end

    def create_project_folder
      if Dir.exist?(@install_dir)
        puts "Directory already exists. Aborting new project."
      else
        system "mkdir #{@install_dir}"
        system "cp -r #{$ROOT_PATH}/example/ #{@install_dir}"
        system "cp #{$ROOT_PATH}/defaults.yml #{@install_dir}/config.yml"
	puts "Project created. Change into the directory (#{@install_dir}) and run `m1book generate` to create your first build."
	puts "Try changing some default values in 'config.yml', like the title of the book."
	puts "Open up the 'src' directory to see how the project is structured."
	puts "You will find the 'front' and 'main' matter of the book in there."
	puts "Page numbers only show in the main matter, but the count starts from the very first page."
	puts "Happy writing!"
      end
    end

    private

    def folderize(str)
      str.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
  end
end

