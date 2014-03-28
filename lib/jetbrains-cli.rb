require 'lib/command_parser'
require 'lib/command_provider'
require 'lib/command/init_command'

begin
  command_parser = CommandParser.new(ARGV)
  command_context = command_parser.parse

  command_provider = CommandProvider.new
  command = command_provider.provide(command_context)

  command.execute

rescue Exception => e
  puts e.message
end

