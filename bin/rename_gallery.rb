#!/usr/bin/ruby
require 'fileutils'
include FileUtils


Dir.glob('images/gallery_originals/*.JPG') do |rb_file|
  if rb_file =~ /\-(\d+)\./
    puts "cp #{rb_file}, \"images/gallery/#{sprintf("%03d", $1.to_i)}.JPG\""
    cp rb_file, "images/gallery/" + sprintf("%03d", $1.to_i) + ".JPG"

  #  imgs << $1.to_i
  else
    puts rb_file
  end

#  imgs << rb_file[15..18]
end
