library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.util.all;

entity sticky_counter is
    generic( n : positive := 15);
    port(
            clk     : in  std_logic;
            enable  : in  std_logic;
            ovf     : out std_logic;
            count   : out std_logic_vector(f_log2(n)-1 downto 0)
        );
end sticky_counter;

architecture behv of sticky_counter is
    signal sCount : std_logic_vector(count'range) := (others => '0');
    signal sOvf   : std_logic := '0';
    signal sEnable: std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' and sEnable = '0' then
                sEnable <= '1';
            elsif sEnable = '1' and sCount < n then
                sCount <= sCount + 1;
            elsif(sCount = n) then
                sOvf <= '1';
            end if;
        end if;
    end process;

    count <= sCount;
    ovf <= sOvf;
end behv;
