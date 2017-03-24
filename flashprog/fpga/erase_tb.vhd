--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   23:01:52 03/21/2017
-- Design Name:
-- Module Name:   /home/wasv/Projects/wz80/flashprog/fpga/erase_tb.vhd
-- Project Name:  flashprog
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: erase
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

ENTITY erase_tb IS
END erase_tb;

ARCHITECTURE behavior OF erase_tb IS
   --Inputs
   signal clk : std_logic := '0';
   signal ready : std_logic := '0';

   -- Outputs
   signal we : std_logic;
   signal done : std_logic;
   signal data_out : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.erase PORT MAP (
          clk => clk,
          ready => ready,
          we => we,
          done => done,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;


   -- Stimulus process
   stim_proc: process
   begin
		wait for 100 ns;
		ready <= '1';
        wait;
      -- insert stimulus here
   end process;

END;
