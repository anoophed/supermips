HDL_BASE?=../../hdl
SIM_BASE?=../../sim
VCS_FLAGS?=
TRACE?=DISABLE

all:
	echo "Targets: sim"

vcs_coverage:
	vcs $(VCS_FLAGS) -sverilog \
		+define+TRACE_$(TRACE) \
		+define+CACHE_TRACE_$(TRACE) \
		-cm line \
		-cm cond \
		-cm branch \
		-cm tgl \
		$(SIM_BASE)/vcs_helpers.sv \
		./mem_arb_tb.sv \
		$(HDL_BASE)/mem_arb.sv \
		$(HDL_BASE)/memory.sv
	./simv -cm line -cm cond -cm branch -cm tgl


vcs_clean:
	rm -rf simv DVEfiles inter.vpd csrc simv.daidr simv.vdb ucli.key

sim:
	qhsim -do "source load_sim_simple.tcl"

clean:
	rm -f vsim.wlf transcript
	rm -rf libraries

realclean: clean
	rm -f *~ *.bak
	rm -f modelsim.ini
