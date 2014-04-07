require 'command_parser'
require 'command_provider'
require 'command/init_command'

class JetbrainsCli

  def self.execute(argv)
    begin
      command_parser = CommandParser.new(argv)
      command_context = command_parser.parse

      command_provider = CommandProvider.new
      command = command_provider.provide(command_context)

      command.execute

    rescue Exception => e
      puts e.message
    end
  end
end



