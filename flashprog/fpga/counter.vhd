library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.util.all;

entity counter is
    generic( n : positive := 15);
    port(
            clk     : in  std_logic;
            enable  : in  std_logic;
            ovf     : out std_logic;
            count   : out std_logic_vector(f_log2(n)-1 downto 0)
        );
end counter;

architecture behv of counter is
    signal sCount : std_logic_vector(count'range) := (others => '0');
    signal sOvf   : std_logic := '1';
    signal sEnable: std_logic := '1';
begin
    process(clk)
        variable vEnable : std_logic := '0';
    begin
        if rising_edge(clk) then
            if enable = '1' then
                sEnable <= '1';
                sOvf <= '0';
            elsif sEnable = '1' then
                sCount <= sCount + 1;
                if(sCount = n) then
                    sEnable <= '0';
                    sCount <= (others=>'0');
                    sOvf <= '1';
                end if;
            end if;
        end if;
    end process;

    count <= sCount;
    ovf <= sOvf;
end behv;
