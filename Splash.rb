require "gtk3"

def load_everything
  require "rubygems"
  require "gtksourceview3"
  require "yaml" #needed
  require "net/http" #needed
  require "net/https" #needed
  require "find" #needed
  require "fileutils" #needed
  require "rubygems/installer"
  require "rubygems/uninstaller"
  require "rubygems/package"
  require "rubygems/specification"
  require "date"
  
  require 'require_all'

  require_rel 'vrlib/lib/'
  require_rel 'bin/'

  VR_Main.new(ARGV).show_glade()

end

$splash = Gtk::Window.new()
image = Gtk::Image.new(:file => "img/splash.png")
$splash.add image
$splash.decorated = false
$splash.position = :center_always
$splash.show_all


GLib::Timeout.add(40) {     
    load_everything 
}

Gtk.main

