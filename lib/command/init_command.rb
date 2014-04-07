require 'command/cli_command'
require 'fileutils'

class InitCommand < CliCommand

  def execute

    current_dir = Dir.pwd

    options = {}

    # project name defaults to current dir
    options[:name] = File.basename(current_dir)

    project_dir = "#{current_dir}/.idea";

    raise 'Project dir already exists' if File.exists?(project_dir) and File.directory?(project_dir)

    Dir.mkdir(project_dir)
    File.open("#{project_dir}/.name", 'w') do |f|
      f << options[:name]
    end

    #module_name = "#{project_dir}/#{options[:name]}.iml"
    module_file = File.join(File.dirname(__FILE__), '..', '..', 'template', 'web-module.iml')
    FileUtils.copy_file module_file, "#{project_dir}/#{options[:name]}.iml"

    module_registry = File.join(File.dirname(__FILE__), '..', '..', 'template', 'modules.xml')
    module_registry_content = File.read(module_registry)
    tmp = module_registry_content.gsub('%MODULE_NAME%', options[:name])

    File.open("#{project_dir}/modules.xml", 'w') do |f|
      f << tmp
    end
  end

end