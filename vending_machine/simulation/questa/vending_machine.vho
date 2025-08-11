-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "08/11/2025 02:38:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vending_machine IS
    PORT (
	CLOCK_ADC_10 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END vending_machine;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_ADC_10	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vending_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_ADC_10 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_ADC_10~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_ADC_10~input_o\ : std_logic;
SIGNAL \CLOCK_ADC_10~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \button_prev~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \vm|Mux4~0_combout\ : std_logic;
SIGNAL \button_edge~0_combout\ : std_logic;
SIGNAL \vm|Mux5~0_combout\ : std_logic;
SIGNAL \vm|Mux6~4_combout\ : std_logic;
SIGNAL \vm|Mux5~1_combout\ : std_logic;
SIGNAL \vm|Mux5~2_combout\ : std_logic;
SIGNAL \vm|Mux5~4_combout\ : std_logic;
SIGNAL \vm|Mux5~3_combout\ : std_logic;
SIGNAL \vm|Mux5~5_combout\ : std_logic;
SIGNAL \vm|Mux4~1_combout\ : std_logic;
SIGNAL \vm|Mux4~5_combout\ : std_logic;
SIGNAL \vm|Mux4~6_combout\ : std_logic;
SIGNAL \vm|Mux4~2_combout\ : std_logic;
SIGNAL \vm|Mux4~3_combout\ : std_logic;
SIGNAL \vm|Mux4~4_combout\ : std_logic;
SIGNAL \vm|Mux3~2_combout\ : std_logic;
SIGNAL \vm|Mux3~3_combout\ : std_logic;
SIGNAL \slow~0_combout\ : std_logic;
SIGNAL \cd|count[1]~21_combout\ : std_logic;
SIGNAL \cd|count[2]~22_combout\ : std_logic;
SIGNAL \cd|count[2]~23\ : std_logic;
SIGNAL \cd|count[3]~24_combout\ : std_logic;
SIGNAL \cd|count[3]~25\ : std_logic;
SIGNAL \cd|count[4]~26_combout\ : std_logic;
SIGNAL \cd|count[4]~27\ : std_logic;
SIGNAL \cd|count[5]~28_combout\ : std_logic;
SIGNAL \cd|count[5]~29\ : std_logic;
SIGNAL \cd|count[6]~30_combout\ : std_logic;
SIGNAL \cd|count[6]~31\ : std_logic;
SIGNAL \cd|count[7]~32_combout\ : std_logic;
SIGNAL \cd|count[7]~33\ : std_logic;
SIGNAL \cd|count[8]~34_combout\ : std_logic;
SIGNAL \cd|count[8]~35\ : std_logic;
SIGNAL \cd|count[9]~36_combout\ : std_logic;
SIGNAL \cd|count[9]~37\ : std_logic;
SIGNAL \cd|count[10]~38_combout\ : std_logic;
SIGNAL \cd|count[10]~39\ : std_logic;
SIGNAL \cd|count[11]~40_combout\ : std_logic;
SIGNAL \cd|count[11]~41\ : std_logic;
SIGNAL \cd|count[12]~42_combout\ : std_logic;
SIGNAL \cd|count[12]~43\ : std_logic;
SIGNAL \cd|count[13]~44_combout\ : std_logic;
SIGNAL \cd|count[13]~45\ : std_logic;
SIGNAL \cd|count[14]~46_combout\ : std_logic;
SIGNAL \cd|count[14]~47\ : std_logic;
SIGNAL \cd|count[15]~48_combout\ : std_logic;
SIGNAL \cd|count[15]~49\ : std_logic;
SIGNAL \cd|count[16]~50_combout\ : std_logic;
SIGNAL \cd|count[16]~51\ : std_logic;
SIGNAL \cd|count[17]~52_combout\ : std_logic;
SIGNAL \cd|count[17]~53\ : std_logic;
SIGNAL \cd|count[18]~54_combout\ : std_logic;
SIGNAL \cd|count[18]~55\ : std_logic;
SIGNAL \cd|count[19]~56_combout\ : std_logic;
SIGNAL \cd|count[19]~57\ : std_logic;
SIGNAL \cd|count[20]~58_combout\ : std_logic;
SIGNAL \cd|count[20]~59\ : std_logic;
SIGNAL \cd|count[21]~60_combout\ : std_logic;
SIGNAL \cd|count[21]~61\ : std_logic;
SIGNAL \cd|count[22]~62_combout\ : std_logic;
SIGNAL \cd|clk_out~5_combout\ : std_logic;
SIGNAL \cd|clk_out~0_combout\ : std_logic;
SIGNAL \cd|clk_out~1_combout\ : std_logic;
SIGNAL \cd|clk_out~2_combout\ : std_logic;
SIGNAL \cd|clk_out~3_combout\ : std_logic;
SIGNAL \cd|clk_out~4_combout\ : std_logic;
SIGNAL \cd|clk_out~6_combout\ : std_logic;
SIGNAL \cd|clk_out~7_combout\ : std_logic;
SIGNAL \cd|clk_out~feeder_combout\ : std_logic;
SIGNAL \cd|clk_out~q\ : std_logic;
SIGNAL \cd|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \vm|next_state~0_combout\ : std_logic;
SIGNAL \vm|Mux6~5_combout\ : std_logic;
SIGNAL \vm|Mux6~6_combout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \HEX1~1_combout\ : std_logic;
SIGNAL \HEX1~2_combout\ : std_logic;
SIGNAL \HEX1~3_combout\ : std_logic;
SIGNAL \HEX1~4_combout\ : std_logic;
SIGNAL \vm|Mux1~0_combout\ : std_logic;
SIGNAL \vm|Mux2~0_combout\ : std_logic;
SIGNAL \vm|Mux0~0_combout\ : std_logic;
SIGNAL \cd|count\ : std_logic_vector(22 DOWNTO 1);
SIGNAL \vm|current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vm|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~4_combout\ : std_logic;
SIGNAL \vm|ALT_INV_current_state\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_ADC_10 <= CLOCK_ADC_10;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLOCK_ADC_10~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_ADC_10~input_o\);

\cd|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cd|clk_out~q\);
\vm|ALT_INV_Mux1~0_combout\ <= NOT \vm|Mux1~0_combout\;
\ALT_INV_HEX1~4_combout\ <= NOT \HEX1~4_combout\;
\vm|ALT_INV_current_state\(0) <= NOT \vm|current_state\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|current_state\(0),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|current_state\(0),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|ALT_INV_current_state\(0),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vm|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\CLOCK_ADC_10~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_ADC_10,
	o => \CLOCK_ADC_10~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_ADC_10~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_ADC_10~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_ADC_10~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X56_Y53_N23
button_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_out~clkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_prev~q\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X56_Y53_N22
\vm|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \vm|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y53_N28
\button_edge~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \button_edge~0_combout\ = (!\KEY[0]~input_o\ & \button_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \button_prev~q\,
	combout => \button_edge~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\vm|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~0_combout\ = (\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \vm|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y53_N18
\vm|Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux6~4_combout\ = (\vm|current_state\(1)) # (\vm|current_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vm|current_state\(1),
	datad => \vm|current_state\(0),
	combout => \vm|Mux6~4_combout\);

-- Location: LCCOMB_X56_Y53_N0
\vm|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~1_combout\ = (\vm|current_state\(0) & ((\SW[0]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \vm|current_state\(0),
	combout => \vm|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y53_N14
\vm|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~2_combout\ = (!\KEY[0]~input_o\ & (\button_prev~q\ & ((\vm|Mux5~0_combout\) # (\vm|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \vm|Mux5~0_combout\,
	datac => \button_prev~q\,
	datad => \vm|Mux5~1_combout\,
	combout => \vm|Mux5~2_combout\);

-- Location: LCCOMB_X57_Y53_N22
\vm|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~4_combout\ = (\vm|Mux5~2_combout\ & ((\vm|current_state\(2)) # ((\vm|current_state\(3) & \vm|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(3),
	datab => \vm|current_state\(1),
	datac => \vm|current_state\(2),
	datad => \vm|Mux5~2_combout\,
	combout => \vm|Mux5~4_combout\);

-- Location: LCCOMB_X57_Y53_N24
\vm|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~3_combout\ = (\vm|current_state\(3) & ((\vm|Mux5~2_combout\) # ((!\vm|current_state\(1) & !\vm|current_state\(2))))) # (!\vm|current_state\(3) & (!\vm|current_state\(2) & (\vm|current_state\(1) $ (\vm|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(1),
	datab => \vm|current_state\(3),
	datac => \vm|current_state\(2),
	datad => \vm|Mux5~2_combout\,
	combout => \vm|Mux5~3_combout\);

-- Location: LCCOMB_X57_Y53_N4
\vm|Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux5~5_combout\ = (\vm|Mux5~4_combout\ & (\vm|Mux5~0_combout\ & ((\vm|Mux5~3_combout\) # (!\vm|Mux6~4_combout\)))) # (!\vm|Mux5~4_combout\ & (((\vm|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|Mux5~0_combout\,
	datab => \vm|Mux6~4_combout\,
	datac => \vm|Mux5~4_combout\,
	datad => \vm|Mux5~3_combout\,
	combout => \vm|Mux5~5_combout\);

-- Location: FF_X57_Y53_N5
\vm|current_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_out~clkctrl_outclk\,
	d => \vm|Mux5~5_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vm|current_state\(1));

-- Location: LCCOMB_X56_Y53_N24
\vm|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~1_combout\ = (!\vm|current_state\(3) & ((\SW[0]~input_o\ & ((\vm|current_state\(0)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(3),
	combout => \vm|Mux4~1_combout\);

-- Location: LCCOMB_X56_Y53_N12
\vm|Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~5_combout\ = (\vm|current_state\(1) & ((\vm|Mux4~1_combout\) # ((!\vm|current_state\(0) & \vm|Mux4~0_combout\)))) # (!\vm|current_state\(1) & (((\vm|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(0),
	datab => \vm|Mux4~0_combout\,
	datac => \vm|current_state\(1),
	datad => \vm|Mux4~1_combout\,
	combout => \vm|Mux4~5_combout\);

-- Location: LCCOMB_X56_Y53_N26
\vm|Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~6_combout\ = (\vm|current_state\(2) & (\vm|Mux4~0_combout\ & (\vm|current_state\(3)))) # (!\vm|current_state\(2) & ((\vm|Mux4~5_combout\) # ((\vm|Mux4~0_combout\ & \vm|current_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|Mux4~0_combout\,
	datac => \vm|current_state\(3),
	datad => \vm|Mux4~5_combout\,
	combout => \vm|Mux4~6_combout\);

-- Location: LCCOMB_X56_Y53_N10
\vm|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~2_combout\ = (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \button_edge~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \button_edge~0_combout\,
	combout => \vm|Mux4~2_combout\);

-- Location: LCCOMB_X56_Y53_N16
\vm|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~3_combout\ = (\vm|current_state\(2) & (!\vm|current_state\(3) & (!\vm|current_state\(0) & !\vm|Mux4~2_combout\))) # (!\vm|current_state\(2) & (\vm|current_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|current_state\(3),
	datac => \vm|current_state\(0),
	datad => \vm|Mux4~2_combout\,
	combout => \vm|Mux4~3_combout\);

-- Location: LCCOMB_X56_Y53_N4
\vm|Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux4~4_combout\ = (\button_edge~0_combout\ & ((\vm|Mux4~6_combout\) # ((!\vm|current_state\(1) & \vm|Mux4~3_combout\)))) # (!\button_edge~0_combout\ & (!\vm|current_state\(1) & ((\vm|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_edge~0_combout\,
	datab => \vm|current_state\(1),
	datac => \vm|Mux4~6_combout\,
	datad => \vm|Mux4~3_combout\,
	combout => \vm|Mux4~4_combout\);

-- Location: FF_X56_Y53_N5
\vm|current_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_out~clkctrl_outclk\,
	d => \vm|Mux4~4_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vm|current_state\(2));

-- Location: LCCOMB_X56_Y53_N8
\vm|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux3~2_combout\ = (!\vm|current_state\(3) & ((\vm|current_state\(2) & (!\vm|current_state\(0) & !\vm|current_state\(1))) # (!\vm|current_state\(2) & (\vm|current_state\(0) & \vm|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|current_state\(3),
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(1),
	combout => \vm|Mux3~2_combout\);

-- Location: LCCOMB_X56_Y53_N6
\vm|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux3~3_combout\ = (\button_prev~q\ & (\vm|Mux4~0_combout\ & (!\KEY[0]~input_o\ & \vm|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_prev~q\,
	datab => \vm|Mux4~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \vm|Mux3~2_combout\,
	combout => \vm|Mux3~3_combout\);

-- Location: FF_X56_Y53_N7
\vm|current_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_out~clkctrl_outclk\,
	d => \vm|Mux3~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vm|current_state\(3));

-- Location: LCCOMB_X56_Y53_N18
\slow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \slow~0_combout\ = (\vm|current_state\(3)) # ((\vm|current_state\(2) & ((\vm|current_state\(0)) # (\vm|current_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(3),
	datab => \vm|current_state\(2),
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(1),
	combout => \slow~0_combout\);

-- Location: LCCOMB_X55_Y53_N4
\cd|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[1]~21_combout\ = \slow~0_combout\ $ (\cd|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slow~0_combout\,
	datac => \cd|count\(1),
	combout => \cd|count[1]~21_combout\);

-- Location: FF_X55_Y53_N5
\cd|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[1]~21_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(1));

-- Location: LCCOMB_X55_Y53_N12
\cd|count[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[2]~22_combout\ = (\cd|count\(2) & (\cd|count\(1) $ (GND))) # (!\cd|count\(2) & (!\cd|count\(1) & VCC))
-- \cd|count[2]~23\ = CARRY((\cd|count\(2) & !\cd|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(2),
	datab => \cd|count\(1),
	datad => VCC,
	combout => \cd|count[2]~22_combout\,
	cout => \cd|count[2]~23\);

-- Location: FF_X55_Y53_N13
\cd|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[2]~22_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(2));

-- Location: LCCOMB_X55_Y53_N14
\cd|count[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[3]~24_combout\ = (\cd|count\(3) & (!\cd|count[2]~23\)) # (!\cd|count\(3) & ((\cd|count[2]~23\) # (GND)))
-- \cd|count[3]~25\ = CARRY((!\cd|count[2]~23\) # (!\cd|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(3),
	datad => VCC,
	cin => \cd|count[2]~23\,
	combout => \cd|count[3]~24_combout\,
	cout => \cd|count[3]~25\);

-- Location: FF_X55_Y53_N15
\cd|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[3]~24_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(3));

-- Location: LCCOMB_X55_Y53_N16
\cd|count[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[4]~26_combout\ = (\cd|count\(4) & (\cd|count[3]~25\ $ (GND))) # (!\cd|count\(4) & (!\cd|count[3]~25\ & VCC))
-- \cd|count[4]~27\ = CARRY((\cd|count\(4) & !\cd|count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(4),
	datad => VCC,
	cin => \cd|count[3]~25\,
	combout => \cd|count[4]~26_combout\,
	cout => \cd|count[4]~27\);

-- Location: FF_X55_Y53_N17
\cd|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[4]~26_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(4));

-- Location: LCCOMB_X55_Y53_N18
\cd|count[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[5]~28_combout\ = (\cd|count\(5) & (!\cd|count[4]~27\)) # (!\cd|count\(5) & ((\cd|count[4]~27\) # (GND)))
-- \cd|count[5]~29\ = CARRY((!\cd|count[4]~27\) # (!\cd|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(5),
	datad => VCC,
	cin => \cd|count[4]~27\,
	combout => \cd|count[5]~28_combout\,
	cout => \cd|count[5]~29\);

-- Location: FF_X55_Y53_N19
\cd|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[5]~28_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(5));

-- Location: LCCOMB_X55_Y53_N20
\cd|count[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[6]~30_combout\ = (\cd|count\(6) & (\cd|count[5]~29\ $ (GND))) # (!\cd|count\(6) & (!\cd|count[5]~29\ & VCC))
-- \cd|count[6]~31\ = CARRY((\cd|count\(6) & !\cd|count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(6),
	datad => VCC,
	cin => \cd|count[5]~29\,
	combout => \cd|count[6]~30_combout\,
	cout => \cd|count[6]~31\);

-- Location: FF_X55_Y53_N21
\cd|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[6]~30_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(6));

-- Location: LCCOMB_X55_Y53_N22
\cd|count[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[7]~32_combout\ = (\cd|count\(7) & (!\cd|count[6]~31\)) # (!\cd|count\(7) & ((\cd|count[6]~31\) # (GND)))
-- \cd|count[7]~33\ = CARRY((!\cd|count[6]~31\) # (!\cd|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(7),
	datad => VCC,
	cin => \cd|count[6]~31\,
	combout => \cd|count[7]~32_combout\,
	cout => \cd|count[7]~33\);

-- Location: FF_X55_Y53_N23
\cd|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[7]~32_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(7));

-- Location: LCCOMB_X55_Y53_N24
\cd|count[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[8]~34_combout\ = (\cd|count\(8) & (\cd|count[7]~33\ $ (GND))) # (!\cd|count\(8) & (!\cd|count[7]~33\ & VCC))
-- \cd|count[8]~35\ = CARRY((\cd|count\(8) & !\cd|count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(8),
	datad => VCC,
	cin => \cd|count[7]~33\,
	combout => \cd|count[8]~34_combout\,
	cout => \cd|count[8]~35\);

-- Location: FF_X55_Y53_N25
\cd|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[8]~34_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(8));

-- Location: LCCOMB_X55_Y53_N26
\cd|count[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[9]~36_combout\ = (\cd|count\(9) & (!\cd|count[8]~35\)) # (!\cd|count\(9) & ((\cd|count[8]~35\) # (GND)))
-- \cd|count[9]~37\ = CARRY((!\cd|count[8]~35\) # (!\cd|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(9),
	datad => VCC,
	cin => \cd|count[8]~35\,
	combout => \cd|count[9]~36_combout\,
	cout => \cd|count[9]~37\);

-- Location: FF_X55_Y53_N27
\cd|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[9]~36_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(9));

-- Location: LCCOMB_X55_Y53_N28
\cd|count[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[10]~38_combout\ = (\cd|count\(10) & (\cd|count[9]~37\ $ (GND))) # (!\cd|count\(10) & (!\cd|count[9]~37\ & VCC))
-- \cd|count[10]~39\ = CARRY((\cd|count\(10) & !\cd|count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(10),
	datad => VCC,
	cin => \cd|count[9]~37\,
	combout => \cd|count[10]~38_combout\,
	cout => \cd|count[10]~39\);

-- Location: FF_X55_Y53_N29
\cd|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[10]~38_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(10));

-- Location: LCCOMB_X55_Y53_N30
\cd|count[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[11]~40_combout\ = (\cd|count\(11) & (!\cd|count[10]~39\)) # (!\cd|count\(11) & ((\cd|count[10]~39\) # (GND)))
-- \cd|count[11]~41\ = CARRY((!\cd|count[10]~39\) # (!\cd|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(11),
	datad => VCC,
	cin => \cd|count[10]~39\,
	combout => \cd|count[11]~40_combout\,
	cout => \cd|count[11]~41\);

-- Location: FF_X55_Y53_N31
\cd|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[11]~40_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(11));

-- Location: LCCOMB_X55_Y52_N0
\cd|count[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[12]~42_combout\ = (\cd|count\(12) & (\cd|count[11]~41\ $ (GND))) # (!\cd|count\(12) & (!\cd|count[11]~41\ & VCC))
-- \cd|count[12]~43\ = CARRY((\cd|count\(12) & !\cd|count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(12),
	datad => VCC,
	cin => \cd|count[11]~41\,
	combout => \cd|count[12]~42_combout\,
	cout => \cd|count[12]~43\);

-- Location: FF_X55_Y52_N1
\cd|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[12]~42_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(12));

-- Location: LCCOMB_X55_Y52_N2
\cd|count[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[13]~44_combout\ = (\cd|count\(13) & (!\cd|count[12]~43\)) # (!\cd|count\(13) & ((\cd|count[12]~43\) # (GND)))
-- \cd|count[13]~45\ = CARRY((!\cd|count[12]~43\) # (!\cd|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(13),
	datad => VCC,
	cin => \cd|count[12]~43\,
	combout => \cd|count[13]~44_combout\,
	cout => \cd|count[13]~45\);

-- Location: FF_X55_Y52_N3
\cd|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[13]~44_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(13));

-- Location: LCCOMB_X55_Y52_N4
\cd|count[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[14]~46_combout\ = (\cd|count\(14) & (\cd|count[13]~45\ $ (GND))) # (!\cd|count\(14) & (!\cd|count[13]~45\ & VCC))
-- \cd|count[14]~47\ = CARRY((\cd|count\(14) & !\cd|count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(14),
	datad => VCC,
	cin => \cd|count[13]~45\,
	combout => \cd|count[14]~46_combout\,
	cout => \cd|count[14]~47\);

-- Location: FF_X55_Y52_N5
\cd|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[14]~46_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(14));

-- Location: LCCOMB_X55_Y52_N6
\cd|count[15]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[15]~48_combout\ = (\cd|count\(15) & (!\cd|count[14]~47\)) # (!\cd|count\(15) & ((\cd|count[14]~47\) # (GND)))
-- \cd|count[15]~49\ = CARRY((!\cd|count[14]~47\) # (!\cd|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(15),
	datad => VCC,
	cin => \cd|count[14]~47\,
	combout => \cd|count[15]~48_combout\,
	cout => \cd|count[15]~49\);

-- Location: FF_X55_Y52_N7
\cd|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[15]~48_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(15));

-- Location: LCCOMB_X55_Y52_N8
\cd|count[16]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[16]~50_combout\ = (\cd|count\(16) & (\cd|count[15]~49\ $ (GND))) # (!\cd|count\(16) & (!\cd|count[15]~49\ & VCC))
-- \cd|count[16]~51\ = CARRY((\cd|count\(16) & !\cd|count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(16),
	datad => VCC,
	cin => \cd|count[15]~49\,
	combout => \cd|count[16]~50_combout\,
	cout => \cd|count[16]~51\);

-- Location: FF_X55_Y52_N9
\cd|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[16]~50_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(16));

-- Location: LCCOMB_X55_Y52_N10
\cd|count[17]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[17]~52_combout\ = (\cd|count\(17) & (!\cd|count[16]~51\)) # (!\cd|count\(17) & ((\cd|count[16]~51\) # (GND)))
-- \cd|count[17]~53\ = CARRY((!\cd|count[16]~51\) # (!\cd|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(17),
	datad => VCC,
	cin => \cd|count[16]~51\,
	combout => \cd|count[17]~52_combout\,
	cout => \cd|count[17]~53\);

-- Location: FF_X55_Y52_N11
\cd|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[17]~52_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(17));

-- Location: LCCOMB_X55_Y52_N12
\cd|count[18]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[18]~54_combout\ = (\cd|count\(18) & (\cd|count[17]~53\ $ (GND))) # (!\cd|count\(18) & (!\cd|count[17]~53\ & VCC))
-- \cd|count[18]~55\ = CARRY((\cd|count\(18) & !\cd|count[17]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(18),
	datad => VCC,
	cin => \cd|count[17]~53\,
	combout => \cd|count[18]~54_combout\,
	cout => \cd|count[18]~55\);

-- Location: FF_X55_Y52_N13
\cd|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[18]~54_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(18));

-- Location: LCCOMB_X55_Y52_N14
\cd|count[19]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[19]~56_combout\ = (\cd|count\(19) & (!\cd|count[18]~55\)) # (!\cd|count\(19) & ((\cd|count[18]~55\) # (GND)))
-- \cd|count[19]~57\ = CARRY((!\cd|count[18]~55\) # (!\cd|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(19),
	datad => VCC,
	cin => \cd|count[18]~55\,
	combout => \cd|count[19]~56_combout\,
	cout => \cd|count[19]~57\);

-- Location: FF_X55_Y52_N15
\cd|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[19]~56_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(19));

-- Location: LCCOMB_X55_Y52_N16
\cd|count[20]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[20]~58_combout\ = (\cd|count\(20) & (\cd|count[19]~57\ $ (GND))) # (!\cd|count\(20) & (!\cd|count[19]~57\ & VCC))
-- \cd|count[20]~59\ = CARRY((\cd|count\(20) & !\cd|count[19]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(20),
	datad => VCC,
	cin => \cd|count[19]~57\,
	combout => \cd|count[20]~58_combout\,
	cout => \cd|count[20]~59\);

-- Location: FF_X55_Y52_N17
\cd|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[20]~58_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(20));

-- Location: LCCOMB_X55_Y52_N18
\cd|count[21]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[21]~60_combout\ = (\cd|count\(21) & (!\cd|count[20]~59\)) # (!\cd|count\(21) & ((\cd|count[20]~59\) # (GND)))
-- \cd|count[21]~61\ = CARRY((!\cd|count[20]~59\) # (!\cd|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(21),
	datad => VCC,
	cin => \cd|count[20]~59\,
	combout => \cd|count[21]~60_combout\,
	cout => \cd|count[21]~61\);

-- Location: FF_X55_Y52_N19
\cd|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[21]~60_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(21));

-- Location: LCCOMB_X55_Y52_N20
\cd|count[22]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|count[22]~62_combout\ = \cd|count[21]~61\ $ (!\cd|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cd|count\(22),
	cin => \cd|count[21]~61\,
	combout => \cd|count[22]~62_combout\);

-- Location: FF_X55_Y52_N21
\cd|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|count[22]~62_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \slow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(22));

-- Location: LCCOMB_X55_Y52_N24
\cd|clk_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~5_combout\ = (!\cd|count\(17) & (!\cd|count\(20) & (!\cd|count\(19) & !\cd|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(17),
	datab => \cd|count\(20),
	datac => \cd|count\(19),
	datad => \cd|count\(18),
	combout => \cd|clk_out~5_combout\);

-- Location: LCCOMB_X55_Y53_N6
\cd|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~0_combout\ = (!\cd|count\(2) & (\cd|count\(1) & (!\cd|count\(3) & !\cd|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(2),
	datab => \cd|count\(1),
	datac => \cd|count\(3),
	datad => \cd|count\(4),
	combout => \cd|clk_out~0_combout\);

-- Location: LCCOMB_X55_Y53_N8
\cd|clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~1_combout\ = (!\cd|count\(7) & (!\cd|count\(5) & (!\cd|count\(6) & !\cd|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(7),
	datab => \cd|count\(5),
	datac => \cd|count\(6),
	datad => \cd|count\(8),
	combout => \cd|clk_out~1_combout\);

-- Location: LCCOMB_X55_Y53_N10
\cd|clk_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~2_combout\ = (!\cd|count\(9) & (!\cd|count\(10) & (!\cd|count\(11) & !\cd|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(9),
	datab => \cd|count\(10),
	datac => \cd|count\(11),
	datad => \cd|count\(12),
	combout => \cd|clk_out~2_combout\);

-- Location: LCCOMB_X55_Y52_N26
\cd|clk_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~3_combout\ = (!\cd|count\(15) & (!\cd|count\(13) & (!\cd|count\(16) & !\cd|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(15),
	datab => \cd|count\(13),
	datac => \cd|count\(16),
	datad => \cd|count\(14),
	combout => \cd|clk_out~3_combout\);

-- Location: LCCOMB_X54_Y53_N10
\cd|clk_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~4_combout\ = (\cd|clk_out~0_combout\ & (\cd|clk_out~1_combout\ & (\cd|clk_out~2_combout\ & \cd|clk_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clk_out~0_combout\,
	datab => \cd|clk_out~1_combout\,
	datac => \cd|clk_out~2_combout\,
	datad => \cd|clk_out~3_combout\,
	combout => \cd|clk_out~4_combout\);

-- Location: LCCOMB_X54_Y53_N24
\cd|clk_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~6_combout\ = (!\cd|count\(22) & (!\cd|count\(21) & (\cd|clk_out~5_combout\ & \cd|clk_out~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(22),
	datab => \cd|count\(21),
	datac => \cd|clk_out~5_combout\,
	datad => \cd|clk_out~4_combout\,
	combout => \cd|clk_out~6_combout\);

-- Location: LCCOMB_X54_Y53_N12
\cd|clk_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~7_combout\ = \cd|clk_out~q\ $ (((\KEY[1]~input_o\ & ((\cd|clk_out~6_combout\) # (!\slow~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clk_out~q\,
	datab => \KEY[1]~input_o\,
	datac => \slow~0_combout\,
	datad => \cd|clk_out~6_combout\,
	combout => \cd|clk_out~7_combout\);

-- Location: LCCOMB_X54_Y53_N18
\cd|clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cd|clk_out~feeder_combout\ = \cd|clk_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clk_out~7_combout\,
	combout => \cd|clk_out~feeder_combout\);

-- Location: FF_X54_Y53_N19
\cd|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ADC_10~inputclkctrl_outclk\,
	d => \cd|clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|clk_out~q\);

-- Location: CLKCTRL_G13
\cd|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cd|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cd|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y53_N30
\vm|next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|next_state~0_combout\ = (\button_edge~0_combout\ & ((\SW[0]~input_o\) # ((!\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \button_edge~0_combout\,
	combout => \vm|next_state~0_combout\);

-- Location: LCCOMB_X57_Y53_N28
\vm|Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux6~5_combout\ = (\vm|current_state\(1) & (((!\vm|current_state\(2) & !\vm|current_state\(3))))) # (!\vm|current_state\(1) & (((!\vm|current_state\(0) & !\vm|current_state\(3))) # (!\vm|current_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(1),
	datab => \vm|current_state\(0),
	datac => \vm|current_state\(2),
	datad => \vm|current_state\(3),
	combout => \vm|Mux6~5_combout\);

-- Location: LCCOMB_X56_Y53_N20
\vm|Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux6~6_combout\ = (\vm|current_state\(3) & ((\vm|next_state~0_combout\) # ((\vm|Mux6~5_combout\)))) # (!\vm|current_state\(3) & (\vm|Mux6~5_combout\ & (\vm|next_state~0_combout\ $ (\vm|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|next_state~0_combout\,
	datab => \vm|current_state\(3),
	datac => \vm|current_state\(0),
	datad => \vm|Mux6~5_combout\,
	combout => \vm|Mux6~6_combout\);

-- Location: FF_X56_Y53_N21
\vm|current_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_out~clkctrl_outclk\,
	d => \vm|Mux6~6_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vm|current_state\(0));

-- Location: LCCOMB_X57_Y53_N14
\HEX1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = (\vm|current_state\(3)) # ((!\vm|current_state\(2) & \vm|current_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vm|current_state\(2),
	datac => \vm|current_state\(1),
	datad => \vm|current_state\(3),
	combout => \HEX1~0_combout\);

-- Location: LCCOMB_X57_Y53_N20
\HEX1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~1_combout\ = (\vm|current_state\(2) & (!\vm|current_state\(1) & !\vm|current_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vm|current_state\(2),
	datac => \vm|current_state\(1),
	datad => \vm|current_state\(3),
	combout => \HEX1~1_combout\);

-- Location: LCCOMB_X57_Y53_N26
\HEX1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~2_combout\ = (\vm|current_state\(1)) # (\vm|current_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vm|current_state\(1),
	datad => \vm|current_state\(3),
	combout => \HEX1~2_combout\);

-- Location: LCCOMB_X57_Y53_N8
\HEX1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~3_combout\ = (!\vm|current_state\(3) & ((\vm|current_state\(2)) # (\vm|current_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vm|current_state\(2),
	datac => \vm|current_state\(1),
	datad => \vm|current_state\(3),
	combout => \HEX1~3_combout\);

-- Location: LCCOMB_X57_Y53_N30
\HEX1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HEX1~4_combout\ = (\vm|current_state\(2)) # (\vm|current_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vm|current_state\(2),
	datac => \vm|current_state\(3),
	combout => \HEX1~4_combout\);

-- Location: LCCOMB_X57_Y53_N16
\vm|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux1~0_combout\ = (!\vm|current_state\(0) & ((\vm|current_state\(2) & (\vm|current_state\(1) & !\vm|current_state\(3))) # (!\vm|current_state\(2) & (!\vm|current_state\(1) & \vm|current_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|current_state\(1),
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(3),
	combout => \vm|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y53_N6
\vm|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux2~0_combout\ = (\vm|current_state\(0) & ((\vm|current_state\(2) & (\vm|current_state\(1) & !\vm|current_state\(3))) # (!\vm|current_state\(2) & (!\vm|current_state\(1) & \vm|current_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|current_state\(1),
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(3),
	combout => \vm|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y53_N12
\vm|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vm|Mux0~0_combout\ = (\vm|current_state\(2) & (!\vm|current_state\(3) & ((\vm|current_state\(1)) # (\vm|current_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vm|current_state\(2),
	datab => \vm|current_state\(1),
	datac => \vm|current_state\(0),
	datad => \vm|current_state\(3),
	combout => \vm|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


