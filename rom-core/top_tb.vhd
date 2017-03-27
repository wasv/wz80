LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;


ENTITY top_tb IS
END top_tb;

ARCHITECTURE behavior OF top_tb IS

   --Inputs
   signal oe : std_logic := '1';
   signal addr_i : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal data_o : std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.top PORT MAP (
          oe => oe,
          ce => addr_i(15),
          addr_i => addr_i(14 downto 0),
          data_o => data_o
        );

   -- Stimulus process
   stim_proc: process
   begin
      wait for 50 ns;
      oe <= '0';
      wait for 50 ns;
      oe <= '1';
      addr_i <= addr_i + 1;

   end process;

END;
