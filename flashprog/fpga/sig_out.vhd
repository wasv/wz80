library ieee;
use ieee.std_logic_1164.all;

entity sig_out is
    port(
        clk      : in  std_logic;
        reset      : in  std_logic;
        data_in  : in  std_logic_vector(23 downto 0);
        we       : out std_logic;
        data_out : out std_logic_vector(23 downto 0)
    );
end sig_out;

architecture df of sig_out is
    signal sCount : std_logic_vector(3 downto 0) := (others => '0');
begin
    counter : entity work.counter
        port map(   clk => clk,
                    count => sCount,
                    reset => reset);
    with sCount(3 downto 2) select
        data_out <= x"5555AA" when "00",
                    x"2AAA55" when "01",
                    x"5555A0" when "10",
                    data_in   when "11",
                    (others=>'0') when others;
    we <= not (sCount(1) xor sCount(0));
end df;
