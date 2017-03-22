library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity sig_out is
    port(
        clk      : in  std_logic;
        ready    : in  std_logic;
        data_in  : in  std_logic_vector(7 downto 0);
        we       : out std_logic;
        done     : out std_logic;
        data_out : out std_logic_vector(23 downto 0)
    );
end sig_out;

architecture df of sig_out is
    signal sDone  : std_logic;
    signal sEnable: std_logic;
    signal sCount : std_logic_vector(3 downto 0) := (others => '0');
    signal sData  : std_logic_vector(23 downto 0) := (others => '0');
begin
    mux_counter : entity work.counter
        port map(   clk => clk,
                    count => sCount,
                    enable => sEnable,
                    ovf => sDone);

    sEnable <= ready or not sDone;

    addr_counter : entity work.counter
        generic map(n => 15)
        port map(   clk => ready,
                    count => sData(23 downto 8),
                    enable => sDone);

    sData(7 downto 0) <= data_in;

    with sCount(3 downto 2) select
        data_out <= x"5555AA" when "00",
                    x"2AAA55" when "01",
                    x"5555A0" when "10",
                    sData     when "11",
                    (others=>'0') when others;

    we <= not (sCount(1) xor sCount(0));
    done <= sDone;
end df;
