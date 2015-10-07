require 'rubygems/installer'

Gem::Installer.class_eval do
  def say(message)
    message = "When you install gems, you must PARTY HARD!"
  end
end
