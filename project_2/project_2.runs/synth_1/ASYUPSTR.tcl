# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/1sem/VIVADO/project_2/project_2.cache/wt [current_project]
set_property parent.project_path E:/1sem/VIVADO/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib {
  E:/1sem/VIVADO/project_2/project_2.srcs/sources_1/new/JKFF.vhd
  E:/1sem/VIVADO/project_2/project_2.srcs/sources_1/new/ASYUPSTR.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top ASYUPSTR -part xc7k70tfbv676-1


write_checkpoint -force -noxdef ASYUPSTR.dcp

catch { report_utilization -file ASYUPSTR_utilization_synth.rpt -pb ASYUPSTR_utilization_synth.pb }