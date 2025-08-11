LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY vending_machine IS
    GENERIC
    (
        div_num         : INTEGER := 22
    );
    PORT (
        CLOCK_ADC_10    : in  STD_LOGIC;
        KEY             : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        SW              : IN  STD_LOGIC_VECTOR(2 DOWNTO 0); -- SW(0)=5¢, SW(1)=10¢, SW(2)=25¢
        HEX0            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX1            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX2            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX3            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX4            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        HEX5            : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END vending_machine;

ARCHITECTURE behavioral OF vending_machine IS

    COMPONENT vending_machine_fsm IS
    PORT
    (
        nickel_in   : IN  STD_LOGIC;
        dime_in     : IN  STD_LOGIC;
        quarter_in  : IN  STD_LOGIC;
        clock       : IN  STD_LOGIC;
        reset       : IN  STD_LOGIC;
        nickel_out  : OUT STD_LOGIC;
        dime_out    : OUT STD_LOGIC;
        candy_out   : OUT STD_LOGIC;
        state       : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT vending_machine_fsm;
    
    COMPONENT clock_divider IS
    GENERIC
    (
        div_num  : INTEGER
    );
    PORT (
        clock_in    : in  STD_LOGIC;
        enable      : IN  STD_LOGIC;
        reset       : IN  STD_LOGIC;
        clock_out   : OUT STD_LOGIC
    );
    END COMPONENT clock_divider;

	type t_segments IS ARRAY (-1 TO 5) OF STD_LOGIC_VECTOR(6 DOWNTO 0);

    SIGNAL vm_nickel_in     : STD_LOGIC;
    SIGNAL vm_dime_in       : STD_LOGIC;
    SIGNAL vm_quarter_in    : STD_LOGIC;
    SIGNAL vm_clock         : STD_LOGIC := '0';
    SIGNAL vm_nickel_out    : STD_LOGIC;
    SIGNAL vm_dime_out      : STD_LOGIC;
    SIGNAL vm_candy_out     : STD_LOGIC;
    SIGNAL vm_state         : STD_LOGIC_VECTOR(3 DOWNTO 0);
    
    SIGNAL reset            : STD_LOGIC;

    SIGNAL button_prev      : STD_LOGIC := '0';
    SIGNAL button_edge      : STD_LOGIC;

    SIGNAL display          : STD_LOGIC_VECTOR(5 DOWNTO 1);
    CONSTANT segments       : t_segments := ("1111111", "1000000", "1111001", "0100100", "0110000", "0011001", "0010010");
    
    SIGNAL slow             : STD_LOGIC;

BEGIN

    slow <= vm_state(3) or (vm_state(2) and vm_state(0)) or (vm_state(2) and vm_state(1));
    
    cd : COMPONENT clock_divider
    GENERIC MAP
    (
        div_num  => div_num
    )
    PORT MAP (
        clock_in    => CLOCK_ADC_10,
        reset       => reset,
        enable      => slow,
        clock_out   => vm_clock
    );

    PROCESS(vm_clock, KEY(1))
    BEGIN
        IF KEY(1) = '0' THEN
            button_prev <= '0';
        ELSIF rising_edge(vm_clock) THEN
            button_prev <= KEY(0);
        END IF;
    END PROCESS;

    reset           <= not KEY(1);
    button_edge     <= button_prev and (not KEY(0));
    vm_nickel_in    <= SW(0) and button_edge;
    vm_dime_in      <= SW(1) and button_edge;
    vm_quarter_in   <= SW(2) and button_edge;

    vm : COMPONENT vending_machine_fsm
    PORT MAP 
    (
        nickel_in   => vm_nickel_in,
        dime_in     => vm_dime_in,
        quarter_in  => vm_quarter_in,
        clock       => vm_clock,
        reset       => reset,
        nickel_out  => vm_nickel_out,
        dime_out    => vm_dime_out,
        candy_out   => vm_candy_out,
        state       => vm_state
    );

    -- Displays
    HEX5 <= segments(1) WHEN vm_candy_out = '1' ELSE
            segments(0);

    HEX4 <= segments(-1);

    HEX3 <= segments(1) WHEN vm_dime_out = '1' ELSE
            segments(0);

    HEX2 <= segments(5) WHEN vm_nickel_out = '1' ELSE
            segments(0);
    
    display(4) <= vm_state(3);
    display(3) <= vm_state(2) and vm_state(1);
    display(2) <= vm_state(2) and (not vm_state(1));
    display(1) <= (not vm_state(2)) and vm_state(1);
    HEX1 <= segments(4) WHEN display(4) = '1' ELSE
            segments(3) WHEN display(3) = '1' ELSE
            segments(2) WHEN display(2) = '1' ELSE
            segments(1) WHEN display(1) = '1' ELSE
            segments(0);

    display(5) <= vm_state(0);
    HEX0 <= segments(5) WHEN display(5) = '1' ELSE
            segments(0);

END behavioral;