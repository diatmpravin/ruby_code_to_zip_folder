require 'rubygems'
require 'zip/zip'
require "fileutils"

directory = '/home/ubuntu/Desktop/demo'
zipfile_name = '/home/ubuntu/Desktop/recursive_directory.zip'

#Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
#    Dir[File.join(directory, '**', '**')].each do |file|
#      zipfile.add(file.sub(directory, ''), file)
#    end
#end

#Dir.mktmpdir do |download_dir|
#  puts download_dir.inspect 
  #a = FileUtils.mkdir_p "#{download_dir}/app42pass.zip"
#  Zip::ZipFile.open("#{download_dir}/app42pass.zip", Zip::ZipFile::CREATE) do |zip|
#    Dir["**/*"].each do |file|
#      zip.add(file, file) { true }
#    end
#  end
#end


#directory = FileUtils.mkdir_p "#{download_dir}/app42pass.zip"
Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zip|
  Dir["**/*"].each do |file|
    zip.add(file, file) { true }
  end
end

