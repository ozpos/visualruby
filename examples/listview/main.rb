#!/usr/bin/ruby

# ignore -- this is for development
require File.exists?("./../../vrlib/vrlib.rb") ?  "./../../vrlib/vrlib.rb" : "vrlib"

# from require_all gem:
require_rel 'bin/'

SongListViewGUI.new.show
