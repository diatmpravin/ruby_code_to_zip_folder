

require 'rubygems'
require 'zip/zip'

folder = "/home/ubuntu/Desktop/demo"
input_filenames = ['README.rdoc', 'Gemfile']

zipfile_name = "/home/ubuntu/Desktop/demo.zip"

Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
  input_filenames.each do |filename|
    # Two arguments:
    # - The name of the file as it will appear in the archive
    # - The original file, including the path to find it
    zipfile.add(filename, folder + '/' + filename)
  end
end

