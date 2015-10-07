require 'rubygems/installer'

Gem::Installer.class_eval do
  def say(message)
  	super unless message == spec.post_install_message
  	puts "When you install gems, you must party hard!"
  end
end
