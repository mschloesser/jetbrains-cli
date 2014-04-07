Gem::Specification.new do |s|
  s.name        = 'jetbrains-cli'
  s.version     = '0.1.0'
  s.date        = '2014-03-29'
  s.summary     = "Create projects for Jetbrains IDEs from the command line"
  s.description = "With this simple command line tool you are able to quickly create projects for your Jetbrains IDE (IntelliJ, PhpStorm, etc.). "
  s.authors     = [ "Michael Schlösser" ]
  s.email       = 'mail@schloessersjung.de'
  s.files       = %w(lib/jetbrains-cli.rb lib/command_parser.rb lib/command_provider.rb lib/command/cli_command.rb lib/command/init_command.rb template/modules.xml template/web-module.iml bin/jetbrains)
  s.homepage    = 'http://www.github.com/mschloesser/jetbrains-cli'
  s.license       = 'MIT'
  s.executables << 'jetbrains'
end