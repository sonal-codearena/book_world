server '18.224.23.112', user: 'ubuntu', roles: %w{app db web}

set :ssh_options, {
 keys: %w(/Users/miche/.ssh/id_rsa),
 forward_agent: false,
 auth_methods: %w(publickey)
}

set :application, 'book_store'
set :repo_url, ''
set :deploy_to, '/home/ubuntu/book_store'
set :branch, 'master'
set :puma_conf, "#{shared_path}/config/puma.rb"
