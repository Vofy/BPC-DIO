
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name uloha5 -dir "C:/BDIO/243511/uloha5/planAhead_run_2" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/uloha5/ukol3.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/uloha5} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ukol3.ucf" [current_fileset -constrset]
add_files [list {ukol3.ucf}] -fileset [get_property constrset [current_run]]
link_design
