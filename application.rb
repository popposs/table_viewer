require 'sinatra/base'
require 'haml'

class Application < Sinatra::Base
  set :app_file, __FILE__
  set :haml, { :format       => :html5,
               :attr_wrapper => '"'     }
  set :inline_templates, true
  set :public_folder, 'public'
  
  get '/' do
		send_file 'index.html'
  end
end

