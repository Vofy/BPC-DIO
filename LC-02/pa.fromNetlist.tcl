
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name uloha2 -dir "C:/BDIO/243511/uloha2/planAhead_run_5" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/uloha2/ukol6.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/uloha2} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ukol6.ucf" [current_fileset -constrset]
add_files [list {ukol6.ucf}] -fileset [get_property constrset [current_run]]
link_design
