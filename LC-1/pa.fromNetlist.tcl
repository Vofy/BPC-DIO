
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ukol1 -dir "C:/BDIO/243511/ukol1/planAhead_run_3" -part xc3s200ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/BDIO/243511/ukol1/gates.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/BDIO/243511/ukol1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "gates.ucf" [current_fileset -constrset]
add_files [list {gates.ucf}] -fileset [get_property constrset [current_run]]
link_design
