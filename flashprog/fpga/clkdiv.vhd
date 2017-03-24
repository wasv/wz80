library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.util.all;

entity clkdiv is
    generic( factor : positive := 10 );
    port(
        clk_in  : in  std_logic;
        clk_out : out std_logic
    );
end clkdiv;

architecture behv of clkdiv is
    signal sClock : std_logic := '0';
begin
    process(clk_in)
        variable vCount : std_logic_vector(f_log2(factor)-1 downto 0) := (others => '0');
    begin
        if rising_edge(clk_in) then
            vCount := vCount + 1;
            if(vCount = factor) then
                vCount := (others => '0');
                sClock <= not sClock;
            end if;
        end if;
    end process;

    clk_out <= sClock;
end behv;
