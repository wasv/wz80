--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   16:56:24 03/22/2017
-- Design Name:
-- Module Name:   /home/wasv/Projects/wz80/flashprog/fpga/uart_tb.vhd
-- Project Name:  flashprog
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: uart
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
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.ALL;

ENTITY uart_tb IS
    END uart_tb;

ARCHITECTURE behavior OF uart_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT uart
        PORT(
                clk : IN  std_logic;
                sin : IN  std_logic;
                ready : OUT  std_logic;
                data : OUT  std_logic_vector(7 downto 0)
            );
    END COMPONENT;



   --Inputs
    signal clk : std_logic := '0';
    signal sin : std_logic := '0';

   --Outputs
    signal ready : std_logic;
    signal data : std_logic_vector(7 downto 0);

   -- Clock period definitions
    constant clk_period : time := 12.5 ns;
    constant sim_data : std_logic_vector := "11"&"0100100111"&"11"&"0101010101";

BEGIN

   -- Instantiate the Unit Under Test (UUT)
    uut: uart PORT MAP (
                           clk => clk,
                           sin => sin,
                           ready => ready,
                           data => data
                       );

   -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;


    -- Stimulus process
    stim_proc: process
    begin
        for i in sim_data'range loop
            sin <= sim_data(i);
            wait for clk_period*4;
        end loop;

        wait;

    end process;

END;
