require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
require "capistrano/rbenv"
require "capistrano/bundler"
require 'capistrano/puma'
require 'capistrano/rails'
require "capistrano/rails/assets"
require "capistrano/rails/migrations"

set :rbenv_type, :ubuntu
set :rbenv_ruby, '2.5.1'

install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
