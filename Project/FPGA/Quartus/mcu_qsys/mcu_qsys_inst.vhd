	component mcu_qsys is
		port (
			clk_clk                          : in    std_logic                     := 'X';             -- clk
			reset_reset_n                    : in    std_logic                     := 'X';             -- reset_n
			memory_mem_a                     : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba                    : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                    : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                  : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                   : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                  : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                 : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                 : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                  : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n               : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                    : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs                   : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n                 : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt                   : out   std_logic;                                        -- mem_odt
			memory_mem_dm                    : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin                 : in    std_logic                     := 'X';             -- oct_rzqin
			hps_io_hps_io_gpio_inst_LOANIO49 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO49
			hps_io_hps_io_gpio_inst_LOANIO50 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO50
			hps_0_uart0_cts                  : in    std_logic                     := 'X';             -- cts
			hps_0_uart0_dsr                  : in    std_logic                     := 'X';             -- dsr
			hps_0_uart0_dcd                  : in    std_logic                     := 'X';             -- dcd
			hps_0_uart0_ri                   : in    std_logic                     := 'X';             -- ri
			hps_0_uart0_dtr                  : out   std_logic;                                        -- dtr
			hps_0_uart0_rts                  : out   std_logic;                                        -- rts
			hps_0_uart0_out1_n               : out   std_logic;                                        -- out1_n
			hps_0_uart0_out2_n               : out   std_logic;                                        -- out2_n
			hps_0_uart0_rxd                  : in    std_logic                     := 'X';             -- rxd
			hps_0_uart0_txd                  : out   std_logic;                                        -- txd
			hps_0_h2f_loan_io_in             : out   std_logic_vector(66 downto 0);                    -- in
			hps_0_h2f_loan_io_out            : in    std_logic_vector(66 downto 0) := (others => 'X'); -- out
			hps_0_h2f_loan_io_oe             : in    std_logic_vector(66 downto 0) := (others => 'X')  -- oe
		);
	end component mcu_qsys;

	u0 : component mcu_qsys
		port map (
			clk_clk                          => CONNECTED_TO_clk_clk,                          --               clk.clk
			reset_reset_n                    => CONNECTED_TO_reset_reset_n,                    --             reset.reset_n
			memory_mem_a                     => CONNECTED_TO_memory_mem_a,                     --            memory.mem_a
			memory_mem_ba                    => CONNECTED_TO_memory_mem_ba,                    --                  .mem_ba
			memory_mem_ck                    => CONNECTED_TO_memory_mem_ck,                    --                  .mem_ck
			memory_mem_ck_n                  => CONNECTED_TO_memory_mem_ck_n,                  --                  .mem_ck_n
			memory_mem_cke                   => CONNECTED_TO_memory_mem_cke,                   --                  .mem_cke
			memory_mem_cs_n                  => CONNECTED_TO_memory_mem_cs_n,                  --                  .mem_cs_n
			memory_mem_ras_n                 => CONNECTED_TO_memory_mem_ras_n,                 --                  .mem_ras_n
			memory_mem_cas_n                 => CONNECTED_TO_memory_mem_cas_n,                 --                  .mem_cas_n
			memory_mem_we_n                  => CONNECTED_TO_memory_mem_we_n,                  --                  .mem_we_n
			memory_mem_reset_n               => CONNECTED_TO_memory_mem_reset_n,               --                  .mem_reset_n
			memory_mem_dq                    => CONNECTED_TO_memory_mem_dq,                    --                  .mem_dq
			memory_mem_dqs                   => CONNECTED_TO_memory_mem_dqs,                   --                  .mem_dqs
			memory_mem_dqs_n                 => CONNECTED_TO_memory_mem_dqs_n,                 --                  .mem_dqs_n
			memory_mem_odt                   => CONNECTED_TO_memory_mem_odt,                   --                  .mem_odt
			memory_mem_dm                    => CONNECTED_TO_memory_mem_dm,                    --                  .mem_dm
			memory_oct_rzqin                 => CONNECTED_TO_memory_oct_rzqin,                 --                  .oct_rzqin
			hps_io_hps_io_gpio_inst_LOANIO49 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO49, --            hps_io.hps_io_gpio_inst_LOANIO49
			hps_io_hps_io_gpio_inst_LOANIO50 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO50, --                  .hps_io_gpio_inst_LOANIO50
			hps_0_uart0_cts                  => CONNECTED_TO_hps_0_uart0_cts,                  --       hps_0_uart0.cts
			hps_0_uart0_dsr                  => CONNECTED_TO_hps_0_uart0_dsr,                  --                  .dsr
			hps_0_uart0_dcd                  => CONNECTED_TO_hps_0_uart0_dcd,                  --                  .dcd
			hps_0_uart0_ri                   => CONNECTED_TO_hps_0_uart0_ri,                   --                  .ri
			hps_0_uart0_dtr                  => CONNECTED_TO_hps_0_uart0_dtr,                  --                  .dtr
			hps_0_uart0_rts                  => CONNECTED_TO_hps_0_uart0_rts,                  --                  .rts
			hps_0_uart0_out1_n               => CONNECTED_TO_hps_0_uart0_out1_n,               --                  .out1_n
			hps_0_uart0_out2_n               => CONNECTED_TO_hps_0_uart0_out2_n,               --                  .out2_n
			hps_0_uart0_rxd                  => CONNECTED_TO_hps_0_uart0_rxd,                  --                  .rxd
			hps_0_uart0_txd                  => CONNECTED_TO_hps_0_uart0_txd,                  --                  .txd
			hps_0_h2f_loan_io_in             => CONNECTED_TO_hps_0_h2f_loan_io_in,             -- hps_0_h2f_loan_io.in
			hps_0_h2f_loan_io_out            => CONNECTED_TO_hps_0_h2f_loan_io_out,            --                  .out
			hps_0_h2f_loan_io_oe             => CONNECTED_TO_hps_0_h2f_loan_io_oe              --                  .oe
		);

