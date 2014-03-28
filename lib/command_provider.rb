class CommandProvider

  def provide(context)
    case context[:command]
      when :init
        InitCommand.new(context)
      else
        raise ArgumentError, 'Invalid command provided'
    end
  end

end