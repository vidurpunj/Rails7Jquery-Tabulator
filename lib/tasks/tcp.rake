namespace :tcp do
  desc "Starting tcp service at port 3006"
  task start: :environment do
    require 'socket'
    server = TCPServer.new 3006
    puts "Started tcp service at port 3006"
    loop do
      Thread.start(server.accept) do |client|
        client.puts "Welcome please eneter your choice!!"
        x = client.recv(1000).chomp
        client.puts "Hello new user you choice = #{x}"
        client.close
      end
    end
  end
end
