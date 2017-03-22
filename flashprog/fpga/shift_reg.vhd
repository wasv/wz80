library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
    generic( n : positive  := 15);
    port(
            reset  : in  std_logic;
            clk  : in  std_logic;
            sin  : in  std_logic;
            data : out std_logic_vector(n downto 0)
        );
end shift_reg;

architecture behv of shift_reg is
    signal sData : std_logic_vector(n downto 0) := (others => '1');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            sData <= (others => '1');
        elsif rising_edge(clk) then
            sData(n-1 downto 0) <= sData(n downto 1);
            sData(n) <= sin;
        end if;
    end process;

    data <= sData;
end behv;
