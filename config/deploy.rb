set :application, "sirena"
set :user, "rytijaff"
set :use_sudo, false
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :repository, "/hof/manufactory/sirena/"
set :local_repository, "git@github.com:rytir/sirena.git"
set :deploy_to, "/opt/ruby/railapps/urls/"

set :scm, :git
set :git_enable_submodules, 1

set :port, 22
set :location, "praha5.ff.cuni.cz"


role :web, location
role :app, location
role :db,  location, :primary => true

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
   task :restart, :roles => :app do
     run "touch #{current_path}/tmp/restart.txt'"
   end
end