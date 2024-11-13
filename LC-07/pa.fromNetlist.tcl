
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name uloha7 -dir "C:/BDIO/243511/uloha7/planAhead_run_1" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/uloha7/digitop.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/uloha7} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "digitop.ucf" [current_fileset -constrset]
add_files [list {digitop.ucf}] -fileset [get_property constrset [current_run]]
link_design
