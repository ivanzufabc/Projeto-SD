LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY clock_divider IS
    GENERIC
    (
        div_num  : INTEGER
    );
    PORT (
        clock_in    : IN  STD_LOGIC;
        enable      : IN  STD_LOGIC;
        reset       : IN  STD_LOGIC;
        clock_out   : OUT STD_LOGIC
    );
END clock_divider;

ARCHITECTURE behavioral OF clock_divider IS

    SIGNAL count    : UNSIGNED(div_num DOWNTO 1) := to_unsigned(1, div_num);
    SIGNAL clk_out  : STD_LOGIC := '0';

BEGIN
    
    clock_out <= clk_out;
    
    PROCESS(clock_in, reset, enable)
    BEGIN
        IF reset = '1' THEN
            count <= to_unsigned(1, div_num);
        ELSIF rising_edge(clock_in) THEN
            IF enable = '1' THEN
                IF count = to_unsigned(0, div_num) THEN
                    clk_out <= not clk_out;
                END IF;
                count <= count + to_unsigned(1, div_num);
            ELSE
                clk_out <= not clk_out;
            END IF;
        END IF;
    END PROCESS;

END behavioral;