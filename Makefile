

.PHONY:all
all: nohbm hbm versalaicore

.PHONY:nohbm
nohbm:
	mkdir -p synthesis_results_noHBM
	cp Makefile.synthesis synthesis_results_noHBM/Makefile
	make -C synthesis_results_noHBM FPGAPART=xczu48dr-ffvg1517-2-e -j4

.PHONY:hbm
hbm:
	mkdir -p synthesis_results_HBM
	cp Makefile.synthesis synthesis_results_HBM/Makefile
	make -C synthesis_results_HBM FPGAPART=xczu48dr-ffvg1517-2-e -j4

.PHONY:versalaicore
versalaicore:
	mkdir -p synthesis_results_versalaicore
	cp Makefile.synthesis synthesis_results_versalaicore/Makefile
	make -C synthesis_results_versalaicore FPGAPART=xcvc1902-vsva2197-2MP-e-S -j4

clean:
	rm -rf *.log *.jou

distclean: clean
	rm -rf synthesis_results_*