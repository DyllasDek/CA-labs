transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex2.vo}

vlog -vlog01compat -work work +incdir+C:/Users/MSI-PC/Desktop/Week10/ex2 {C:/Users/MSI-PC/Desktop/Week10/ex2/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/MSI-PC/Desktop/Week10/ex2 {C:/Users/MSI-PC/Desktop/Week10/ex2/ex2.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/MSI-PC/Desktop/Week10/ex2/tclscript.tcl
