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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/06/2025 22:28:21"
                                                            
-- Vhdl Test Bench template for design  :  vending_machine
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vending_machine_vhd_tst IS
    GENERIC(
    div_n : INTEGER := 1
    );
END vending_machine_vhd_tst;
ARCHITECTURE vending_machine_arch OF vending_machine_vhd_tst IS
    -- constants                                                 
    -- signals                                                   
    SIGNAL CLOCK_ADC_10 : STD_LOGIC;
    SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
    COMPONENT vending_machine
        GENERIC
        (
        div_num : INTEGER := 22
        );
        PORT (
        CLOCK_ADC_10 : IN STD_LOGIC;
        HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT;
    
    CONSTANT half_clock     : TIME := 50 ns;
    CONSTANT full_clock     : TIME := half_clock * 2;
    CONSTANT vm_clock       : TIME := full_clock * 2;
    CONSTANT vm_slow_clock  : TIME := (2**div_n) * vm_clock;
    
    SIGNAL done : BOOLEAN := FALSE;
BEGIN
    i1 : vending_machine
    GENERIC MAP (
    div_num => div_n
    )
    PORT MAP (
-- list connections between master ports and signals
    CLOCK_ADC_10 => CLOCK_ADC_10,
    HEX0 => HEX0,
    HEX1 => HEX1,
    HEX2 => HEX2,
    HEX3 => HEX3,
    HEX4 => HEX4,
    HEX5 => HEX5,
    KEY => KEY,
    SW => SW
    );
    init : PROCESS                                               
    -- seleciona o caso de teste baseado na soma dos valores das moedas
    -- opções: 25, 30, 35, 40, 45
        VARIABLE test_case : INTEGER := 40;
    BEGIN                                                        
            -- code that executes only once                      
        KEY <= "11";
        SW  <= "000";
        WAIT FOR full_clock;
        CASE test_case IS
        WHEN 25 =>
            SW <= "001";
            WAIT FOR vm_clock;
            btn_25a : FOR i IN 1 TO 5 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_25a;
            WAIT FOR vm_slow_clock * 3;

            SW <= "010";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "001";
            WAIT FOR vm_clock;
            btn_25b : FOR i IN 1 TO 3 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_25b;
            WAIT FOR vm_slow_clock * 3;

            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;
        
        WHEN 30 =>
            SW <= "001";
            WAIT FOR vm_clock;
            btn_30a : FOR i IN 1 TO 4 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_30a;
            SW <= "010";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;

            SW <= "010";
            WAIT FOR vm_clock;
            btn_30b : FOR i IN 1 TO 3 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_30b;
            WAIT FOR vm_slow_clock * 3;

            SW <= "001";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;
        
        WHEN 35 =>
            SW <= "001";
            WAIT FOR vm_clock;
            btn_35a : FOR i IN 1 TO 2 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_35a;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;

            SW <= "010";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;
        
        WHEN 40 =>
            SW <= "001";
            WAIT FOR vm_clock;
            btn_40a : FOR i IN 1 TO 3 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_40a;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;

            SW <= "001";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "010";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;
        
        WHEN 45 =>
            SW <= "001";
            WAIT FOR vm_clock;
            btn_45a : FOR i IN 1 TO 4 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_45a;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;

            SW <= "010";
            WAIT FOR vm_clock;
            btn_45b : FOR i IN 1 TO 2 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_45b;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;

            SW <= "001";
            WAIT FOR vm_clock;
            btn_45c : FOR i IN 1 TO 2 LOOP
                KEY(0) <= '0';
                WAIT FOR vm_clock;
                KEY(0) <= '1';
                WAIT FOR vm_clock;
            END LOOP btn_45c;
            SW <= "010";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            SW <= "100";
            WAIT FOR vm_clock;
            KEY(0) <= '0';
            WAIT FOR vm_clock;
            KEY(0) <= '1';
            WAIT FOR vm_clock;
            WAIT FOR vm_slow_clock * 3;
        WHEN OTHERS =>
            WAIT;

        END CASE;
        done <= TRUE;
        WAIT;                                                       
    END PROCESS init;                                           
    always : PROCESS                                              
    -- optional sensitivity list                                  
    -- (        )                                                 
    -- variable declarations                                      
    BEGIN                                                         
            -- code executes for every event on sensitivity list  
        CLOCK_ADC_10 <= '0';
        WAIT FOR 50 ns;
        CLOCK_ADC_10 <= '1';
        WAIT FOR 50 ns;
        IF done then
            WAIT;
        END IF;
    END PROCESS always;                                          

END vending_machine_arch;
