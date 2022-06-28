# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/hdl_sim/imagem1.dat ./ 
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/hdl_sim/imagem2.dat ./ 
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/hdl_sim/SistemaEmbarcadoSubtrator_MemoriaPrograma.dat ./ 
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/imagem1.hex ./ 
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/imagem2.hex ./ 
file copy -force D:/Documents/quartusIIdata/TesteSomador/software/TesteSoftwareSub/mem_init/SistemaEmbarcadoSubtrator_MemoriaPrograma.hex ./ 
