
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name uloha6 -dir "C:/BDIO/243511/uloha6/planAhead_run_2" -part xc3s200ft256-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "D_schematic.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ukol4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ukol4 $srcset
add_files [list {D_schematic.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200ft256-5
