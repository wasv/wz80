--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   23:20:41 03/22/2017
-- Design Name:
-- Module Name:   /home/wasv/Projects/wz80/flashprog/fpga/clkdiv_tb.vhd
-- Project Name:  flashprog
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: clkdiv
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY clkdiv_tb IS
    END clkdiv_tb;

ARCHITECTURE behavior OF clkdiv_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT clkdiv
        PORT(
                clk_in : IN  std_logic;
                clk_out : OUT  std_logic
            );
    END COMPONENT;


   --Inputs
    signal clk_in : std_logic := '0';

   --Outputs
    signal clk_out : std_logic;

   -- Clock period definitions
    constant clk_in_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: clkdiv PORT MAP (
                             clk_in => clk_in,
                             clk_out => clk_out
                         );

   -- Clock process definitions
    clk_in_process :process
    begin
        clk_in <= '0';
        wait for clk_in_period/2;
        clk_in <= '1';
        wait for clk_in_period/2;
    end process;

    process
    begin
        wait;
    end process;
END;
