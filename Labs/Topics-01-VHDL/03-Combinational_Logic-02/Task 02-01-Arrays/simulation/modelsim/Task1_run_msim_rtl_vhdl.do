transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/git/ELEC241-Students-RIJ/ELEC241-Students-RIJ/Labs/Topics-01-VHDL/03-Combinational_Logic-02/Task 02-01-Arrays/array_test.vhd}

