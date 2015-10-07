require 'rubygems/installer'

Gem::Installer.class_eval do
  def say(message)
  	super unless message == spec.post_install_message
  	message = <<-EOF
\e[35;5m
##################################################################
#                                                                #
# \e[0;1mWhen you Gem install, you must party hard!\e[0;5;35m #
#                                                                #
##################################################################
\e[0m
EOF
  	puts message
  end
end
