# frozen_string_literal: true

lock '~> 3.17.2'

set :application, 'application_name'
set :repo_url, 'git@github.com:user/repository_name.git'

set :deploy_to, '/home/deploy/application_name'
set :branch, :main
set :linked_files, %w[config/master.key]
