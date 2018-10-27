set RISCV_CORE_MODIFIED "../../../RTL/Modified_source/riscv"
set RISCV_CORE          "../../../RTL/pulpino/ips/riscv"

set APB_COMPONENTS      "../../../RTL/pulpino/ips/apb"
set APB_COMPONENTS_MODIFIED      "../../../RTL/Modified_source/apb"

set AXI_COMPONENTS      "../../../RTL/pulpino/ips/axi"
set AXI_COMPONENTS_MODIFIED      "../../../RTL/Modified_source/axi"

set PULPINO_FILES       "../../../RTL/pulpino/rtl"
set PULPINO_FILES_MODIFIED       "../../../RTL/Modified_source/pulpino"

set MCU_FILES           "../../../RTL"

set RISCV_SOURCE_MODIFIED "\
  $RISCV_CORE_MODIFIED \
  $RISCV_CORE_MODIFIED/include \
  "

set APB_SOURCE "\
  $APB_COMPONENTS/apb_event_unit \
  $APB_COMPONENTS/apb_event_unit/include \
  $APB_COMPONENTS/apb_gpio \
  $APB_COMPONENTS/apb_node \
  $APB_COMPONENTS/apb_uart_sv \
  "

set AXI_SOURCE "\
  $AXI_COMPONENTS/axi_mem_if_DP \
  $AXI_COMPONENTS/axi_node \
  $AXI_COMPONENTS/axi_slice \
  $AXI_COMPONENTS/axi_slice_dc \
  $AXI_COMPONENTS/axi2apb \
  $AXI_COMPONENTS/core2axi \
  "

set PULPINO_SOURCE "\
  $PULPINO_FILES \
  $PULPINO_FILES/includes \
  $PULPINO_FILES/components \
  "
set RISCV_MCU_SOURCE "\
 $MCU_FILES/Components \
 $MCU_FILES/top_level \
  "


set MODIFIED_SOURCES "\
  $RISCV_SOURCE_MODIFIED \
  $APB_COMPONENTS_MODIFIED \
  $AXI_COMPONENTS_MODIFIED \
  $PULPINO_FILES_MODIFIED \
  "
