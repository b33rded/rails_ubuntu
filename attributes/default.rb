default['rails_ubuntu']['deploy_user']  = 'vagrant'
default['rails_ubuntu']['deploy_group'] = 'vagrant'

default['rails_ubuntu']['ruby_version'] = '2.6.5'
default['rails_ubuntu']['node_version'] = '12'
default['rails_ubuntu']['proxysql_version'] = '2.0'
default['rails_ubuntu']['open_files']   = 65535     # 0 for no effect.

# Generate /etc/nginx/sites-enabled/<nginx_site> from template.
default['rails_ubuntu']['server_name']  = node['fqdn']
default['rails_ubuntu']['app_type']     = 'rails'   # rails | node
default['rails_ubuntu']['app_env']      = 'production'
default['rails_ubuntu']['app_startup']  = 'app.js'  # Node app_root/entrypoint.
default['rails_ubuntu']['app_name']     = 'myapp'
#default['rails_ubuntu']['nginx_site']  = app_name
#default['rails_ubuntu']['deploy_to']   = '/home/<deploy_user>/<app_name>'
#default['rails_ubuntu']['app_root']    = '<deploy_to>/current'
#default['rails_ubuntu']['app_public']  = '<app_root>/public'

# Local database server.
default['rails_ubuntu']['db_type']      = 'none'    # none | postgres | mysql
#default['rails_ubuntu']['db_user']     =
#default['rails_ubuntu']['db_password'] =
#default['rails_ubuntu']['db_name']     =
default['rails_ubuntu']['db_safe']      = true      # true | false

default['rails_ubuntu']['proxysql_ssl'] = false     # false | true

default['rails_ubuntu']['redis_safe']   = true      # true | false

default['rails_ubuntu']['skip_recipes'] = ''        # 'redis bash_aliases'

default['rails_ubuntu']['bash_aliases'] = <<EOT
alias l='ls -l'
alias la='ls -la'
alias lc='ls -C'
alias lt='ls -lrt'
EOT

default['rails_ubuntu']['apt_install'] =
"git-core build-essential software-properties-common \
 vim curl apt-transport-https ca-certificates dirmngr gnupg"

default['rails_ubuntu']['ruby_libs'] =
"libcurl4-openssl-dev libffi-dev libreadline-dev libsqlite3-dev \
 libssl-dev libxml2-dev libxslt1-dev libyaml-dev sqlite3 zlib1g-dev"
