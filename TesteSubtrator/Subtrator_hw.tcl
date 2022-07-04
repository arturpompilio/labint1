# TCL File Generated by Component Editor 18.1
# Sun Jul 03 00:46:36 BRT 2022
# DO NOT MODIFY


# 
# Subtrator "Subtrator de pixel" v1.0
#  2022.07.03.00:46:36
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Subtrator
# 
set_module_property DESCRIPTION ""
set_module_property NAME Subtrator
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Meus Componentes"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "Subtrator de pixel"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL Teste_Subtrator_Interface
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file Subtrator_Interface.v VERILOG PATH Subtrator_Interface.v
add_fileset_file Subtrator.v VERILOG PATH Subtrator.v

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL Teste_Subtrator_Interface
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file Subtrator_Interface.v VERILOG PATH Subtrator_Interface.v
add_fileset_file Subtrator.v VERILOG PATH Subtrator.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point Leitura
# 
add_interface Leitura avalon end
set_interface_property Leitura addressUnits WORDS
set_interface_property Leitura associatedClock clock
set_interface_property Leitura associatedReset reset
set_interface_property Leitura bitsPerSymbol 8
set_interface_property Leitura burstOnBurstBoundariesOnly false
set_interface_property Leitura burstcountUnits WORDS
set_interface_property Leitura explicitAddressSpan 0
set_interface_property Leitura holdTime 0
set_interface_property Leitura linewrapBursts false
set_interface_property Leitura maximumPendingReadTransactions 0
set_interface_property Leitura maximumPendingWriteTransactions 0
set_interface_property Leitura readLatency 0
set_interface_property Leitura readWaitTime 1
set_interface_property Leitura setupTime 0
set_interface_property Leitura timingUnits Cycles
set_interface_property Leitura writeWaitTime 0
set_interface_property Leitura ENABLED true
set_interface_property Leitura EXPORT_OF ""
set_interface_property Leitura PORT_NAME_MAP ""
set_interface_property Leitura CMSIS_SVD_VARIABLES ""
set_interface_property Leitura SVD_ADDRESS_GROUP ""

add_interface_port Leitura read read Input 1
add_interface_port Leitura readdata readdata Output 32
set_interface_assignment Leitura embeddedsw.configuration.isFlash 0
set_interface_assignment Leitura embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment Leitura embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment Leitura embeddedsw.configuration.isPrintableDevice 0


# 
# connection point Pixel_Img_1
# 
add_interface Pixel_Img_1 conduit end
set_interface_property Pixel_Img_1 associatedClock clock
set_interface_property Pixel_Img_1 associatedReset reset
set_interface_property Pixel_Img_1 ENABLED true
set_interface_property Pixel_Img_1 EXPORT_OF ""
set_interface_property Pixel_Img_1 PORT_NAME_MAP ""
set_interface_property Pixel_Img_1 CMSIS_SVD_VARIABLES ""
set_interface_property Pixel_Img_1 SVD_ADDRESS_GROUP ""

add_interface_port Pixel_Img_1 writedata1 readdata Input 32


# 
# connection point Pixel_Img_2
# 
add_interface Pixel_Img_2 conduit end
set_interface_property Pixel_Img_2 associatedClock clock
set_interface_property Pixel_Img_2 associatedReset reset
set_interface_property Pixel_Img_2 ENABLED true
set_interface_property Pixel_Img_2 EXPORT_OF ""
set_interface_property Pixel_Img_2 PORT_NAME_MAP ""
set_interface_property Pixel_Img_2 CMSIS_SVD_VARIABLES ""
set_interface_property Pixel_Img_2 SVD_ADDRESS_GROUP ""

add_interface_port Pixel_Img_2 writedata2 readdata Input 32


# 
# connection point Done_Img1
# 
add_interface Done_Img1 conduit end
set_interface_property Done_Img1 associatedClock clock
set_interface_property Done_Img1 associatedReset reset
set_interface_property Done_Img1 ENABLED true
set_interface_property Done_Img1 EXPORT_OF ""
set_interface_property Done_Img1 PORT_NAME_MAP ""
set_interface_property Done_Img1 CMSIS_SVD_VARIABLES ""
set_interface_property Done_Img1 SVD_ADDRESS_GROUP ""

add_interface_port Done_Img1 done1 write Input 1


# 
# connection point Done_Img2
# 
add_interface Done_Img2 conduit end
set_interface_property Done_Img2 associatedClock clock
set_interface_property Done_Img2 associatedReset reset
set_interface_property Done_Img2 ENABLED true
set_interface_property Done_Img2 EXPORT_OF ""
set_interface_property Done_Img2 PORT_NAME_MAP ""
set_interface_property Done_Img2 CMSIS_SVD_VARIABLES ""
set_interface_property Done_Img2 SVD_ADDRESS_GROUP ""

add_interface_port Done_Img2 done2 write Input 1

