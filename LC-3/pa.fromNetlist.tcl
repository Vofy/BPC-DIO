
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name uloha3 -dir "C:/BDIO/243511/uloha3/planAhead_run_2" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/uloha3/decoder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/uloha3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ukol4.ucf" [current_fileset -constrset]
add_files [list {ukol4.ucf}] -fileset [get_property constrset [current_run]]
link_design
