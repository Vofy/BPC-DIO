
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name uloha8-nove -dir "C:/BDIO/243511/uloha8-nove/planAhead_run_3" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/uloha8-nove/uloha.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/uloha8-nove} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "uloha.ucf" [current_fileset -constrset]
add_files [list {uloha.ucf}] -fileset [get_property constrset [current_run]]
link_design
