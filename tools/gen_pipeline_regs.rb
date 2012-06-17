require 'yaml'
require 'erb'

regs = YAML::load(File.open("pipeline_regs.yml"))
erb = ERB.new(File.read("tmpl_pipeline_reg.erb"))

regs.each do |reg,signals|
  module_name = "pipreg_#{reg.downcase}"
  stages = reg.downcase.split(/_/)
  in_stage = stages[0]
  out_stage = stages[1]

  puts "Generating pipeline register between #{in_stage.upcase} and #{out_stage.upcase}"

  in_signals = []
  out_signals = []
  signals.each do |s|
    b = s.split(/\//)
    sig_name = b[0]
    sig_width = b[1].to_i
    in_signals  << { :name => "#{in_stage}_#{sig_name}",  :low => 0, :high => sig_width-1 }
    out_signals << { :name => "#{out_stage}_#{sig_name}", :low => 0, :high => sig_width-1 }
  end

  text = erb.result(binding)
  File.open("../hdl/#{module_name}.sv", 'w') { |f| f.write(text) }
end
