set :rails_env, 'sandbox'
set :deploy_to, '/var/www/davidsproj'

role :app, %w{dcdlrhr902}
role :web, %w{dcdlrhr902}
role :db,  %w{dcdlrhr902}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'dcdlrhr902', user: 'deploy', roles: %w{web app db}
