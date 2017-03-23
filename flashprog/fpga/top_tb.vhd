--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   20:58:54 03/22/2017
-- Design Name:
-- Module Name:   /home/wasv/Projects/wz80/flashprog/fpga/top_tb.vhd
-- Project Name:  flashprog
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: top
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

ENTITY top_tb IS
    END top_tb;

ARCHITECTURE behavior OF top_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT top
        PORT(
                clk : IN  std_logic;
                sin : IN  std_logic;
                we : OUT  std_logic;
                cts : OUT  std_logic;
                data_out : OUT  std_logic_vector(23 downto 0)
            );
    END COMPONENT;


    --Inputs
    signal clk : std_logic := '0';
    signal sin : std_logic := '1';

    --Outputs
    signal we : std_logic;
    signal cts : std_logic;
    signal data_out : std_logic_vector(23 downto 0);

    -- Clock period definitions
    constant clk_period : time := 12.5 ns;
    constant sim_data : std_logic_vector := "0100100111"&"0101010101"&"0111100001";

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: top PORT MAP (
                          clk => clk,
                          sin => sin,
                          we => we,
                          cts => cts,
                          data_out => data_out
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
        -- hold reset state for 100 ns.
        wait for 100 ns;

        -- insert stimulus here
        for i in 0 to 9 loop
            sin <= sim_data(i);
            wait for clk_period*4;
        end loop;

        wait until rising_edge(cts);
        for i in 10 to 19 loop
            sin <= sim_data(i);
            wait for clk_period*4;
        end loop;

        wait until rising_edge(cts);
        for i in 20 to 29 loop
            sin <= sim_data(i);
            wait for clk_period*4;
        end loop;
        wait;
    end process;

END;
