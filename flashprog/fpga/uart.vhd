library ieee;
use ieee.std_logic_1164.all;

entity uart is
     port(
        clk  : in  std_logic;
        sin  : in  std_logic;
        ready: out std_logic;
        data : out std_logic_vector(7 downto 0)
    );
end uart;

architecture struct of uart is
    signal sSamples : std_logic_vector(39 downto 0) := (others => '1');
    signal sData : std_logic_vector(7 downto 0) := (others => '0');
    signal sReady : std_logic := '0';
begin
    sr: entity work.shift_reg
            generic map(n => 39)
            port map(sin => sin, clk => clk,
                    reset => sReady, data => sSamples);
    fd: entity work.frame_detect
            port map(samples => sSamples, data => sData,
                    ready => sReady);
    dr: entity work.reg
            generic map(n => 7)
            port map(data_in => sData, data_out => data,
                    clk => sReady);
    ready <= sReady;
end struct;
