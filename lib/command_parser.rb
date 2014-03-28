class CommandParser

  @@allowed_commands = [ :init ]

  def initialize(argv)
    @argv = argv
  end

  def parse
    raise ArgumentError, 'Not enough parameters' if @argv.length == 0

    command = @argv[0].to_sym
    raise ArgumentError, 'Invalid command provided' unless @@allowed_commands.include?(command)

    case command
      when :init
      {
        :command => command,
        :options => {}
      }
    end
  end

end