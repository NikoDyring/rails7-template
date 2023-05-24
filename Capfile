# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

require 'capistrano/rails'
require 'capistrano/rbenv'
require 'capistrano/puma'
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Systemd

set :puma_threads, [4, 16]
set :puma_workers, 0

set :application, 'application_name'
set :stage, :production
set :deploy_via, :remote_cache
set :deploy_to, '/home/deploy/application_name'
set :puma_bind, "unix://#{shared_path}"
set :puma_state, shared_path.to_s
set :puma_pid, shared_path.to_s
set :puma_access_log, shared_path.to_s
set :puma_error_log, shared_path.to_s
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :puma_service_unit_name, "puma_#{fetch(:application)}_#{fetch(:stage)}"

append :linked_files, 'config/master.key'
append :linked_dirs, 'log', 'tmp/ids', 'tmp/cache', 'public/uploads'

set :rbenv_type, :user
set :rbenv_ruby, '3.1.2'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
