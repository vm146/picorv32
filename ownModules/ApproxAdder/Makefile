#--------------------------------------------------------
#
IVERILOG_DEBUG ?=
TESTBENCH ?= ApproxAdd1_tb.v
#--------------------------------------------------------
ifeq ($(DEBUG),1)
	IVERILOG_DEBUG := -DDEBUG
endif
#--------------------------------------------------------
YOSYS_SIMCELLS := $(shell yosys-config --datdir/simcells.v)

VCD_FILES := $(patsubst %.v,%.vcd, wildcard *.v)

.PHONY: help
help:
	@echo ""
	@echo "make help"
	@echo "		Print help text"
	@echo ""

.PHONY: test
test: $(VCD_FILES)


.PHONY: sim
sim:
	iverilog -o ApproxAdder ApproxAdd1.v ApproxAdd1_tb.v $(yosys-config --datdir/simcells.v)
	vvp ApproxAdder

# sim:
# %.vcd: %.v
# 	iverilog \
# 		-D 'VCDFILE = "$@"' \
# 		$(IVERILOG_DEBUG) \
# 		-g2012 \
# 		-gassertions \
# 		-l $(YOSYS_SIMCELLS) \
# 		-o $* \
# 		$? \
# 		$(TESTBENCH)
# 	vvp $*

.PHONY: clean
clean:
	rm -fv *.vcd