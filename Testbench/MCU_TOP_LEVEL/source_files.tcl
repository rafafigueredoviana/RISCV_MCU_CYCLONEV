
set RISCV_CORE          "../../../RTL/pulpino/ips/riscv"

set APB_COMPONENTS      "../../../RTL/pulpino/ips/apb"

set AXI_COMPONENTS      "../../../RTL/pulpino/ips/axi"

set PULPINO_FILES       "../../../RTL/pulpino/rtl"

set PULPINO_IPS_FILES       "../../../RTL/pulpino/ips"

set MCU_FILES           "../../../RTL/top_level"

set PULPINO_FILES_MODIFIED       "../../../RTL/Modified_source"

set RISCV_CORE_MODIFIED "../../../RTL/Modified_source/riscv"

set RISCV_SOURCE_MODIFIED "\
  $RISCV_CORE_MODIFIED \
  $RISCV_CORE_MODIFIED/include \
  "

set RISCV_SOURCE_ORIGNAL "\
  $RISCV_CORE \
  $RISCV_CORE/include \
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
set PULPINO_IPS_SOURCE "\
  $PULPINO_IPS_FILES/fpu/hdl/fpu_v0.1 \
  $PULPINO_IPS_FILES/fpu/hdl/fpu_utils \
  $PULPINO_IPS_FILES/fpu/hdl/fpu_div_sqrt_tp_nlp \

  "



set ORIGINAL_SOURCES "\
 $APB_SOURCE \
 $AXI_SOURCE \
 $PULPINO_SOURCE \
 $RISCV_SOURCE_ORIGNAL \
  "

set MODIFIED_SOURCES "\
  $PULPINO_FILES_MODIFIED/apb \
  $PULPINO_FILES_MODIFIED/axi \
  $PULPINO_FILES_MODIFIED/pulpino \
  $PULPINO_FILES_MODIFIED/fpu\
  "
