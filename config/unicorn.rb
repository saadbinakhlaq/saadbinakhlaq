worker_processes Integer(ENV['WEB_CONCURRENCY'] || 3)

timeout 15
preload_app true

before_fork do |_server, _worker|
  Signal.trap 'TERM' do
    puts 'Unicorn  master intercepting TERM signal and sending itself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  ActiveRecord::Base.connection.disconnect!
end

after_fork do |_server, _worker|
  Signal.trap 'TERM' do
    puts 'Term ignored. Waiting on master sending QUIT signal instead'
  end

  ActiveRecord::Base.establish_connection
end