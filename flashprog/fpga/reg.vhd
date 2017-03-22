library ieee;
use ieee.std_logic_1164.all;

entity reg is
    generic( n : positive := 7);
    port(
            clk     : in  std_logic;
            data_in : in  std_Logic_vector(n downto 0);
            data_out: out std_logic_vector(n downto 0)
        );
end reg;

architecture behv of reg is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            data_out <= data_in;
        end if;
    end process;
end behv;
