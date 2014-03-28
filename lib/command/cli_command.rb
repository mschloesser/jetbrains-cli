class CliCommand

  def initialize(context)
    @context = context
  end

  def execute
    raise 'Override me'
  end
end