transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ex3.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Andrey/Desktop/FPGA/Week10/ex3 {C:/Users/Andrey/Desktop/FPGA/Week10/ex3/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrey/Desktop/FPGA/Week10/ex3 {C:/Users/Andrey/Desktop/FPGA/Week10/ex3/ex3.v}
vlog -vlog01compat -work work +incdir+C:/Users/Andrey/Desktop/FPGA/Week10/ex3 {C:/Users/Andrey/Desktop/FPGA/Week10/ex3/ex2.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/Andrey/Desktop/FPGA/Week10/ex3/tclscript.tcl
