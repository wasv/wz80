library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;

entity counter is
    generic( n : positive  := 3);
    port(
            clk     : in  std_logic;
            enable  : in  std_logic;
            ovf     : out std_logic;
            count   : out std_logic_vector(n downto 0)
        );
end counter;

architecture behv of counter is
    signal sCount : std_logic_vector(n downto 0) := (others => '1');
begin
    process(clk, enable)
    begin
        if rising_edge(clk) and enable = '1' then
            sCount <= sCount + 1;
        end if;
    end process;


    ovf <= and_reduce(sCount);
    count <= sCount(n downto 0);
end behv;
