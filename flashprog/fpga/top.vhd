library ieee;
use ieee.std_logic_1164.all;

entity top is
    port(
        clk      : in  std_logic;
        sin      : in  std_logic;
        we       : out std_logic;
        cts      : out std_logic;
        data_out : out std_logic_vector(23 downto 0)
    );
end top;

architecture struct of top is
    signal sData : std_logic_vector(7 downto 0);
    signal sReady : std_logic;
    signal sDone  : std_logic;
    signal sClk   : std_logic;
begin
    clkdiv0 : entity work.clkdiv
        generic map(factor=>35)
        port map(clk_in=>clk, clk_out=>sClk);

    uart0 : entity work.uart
        port map(sin => sin, clk=>sClk,ready=>sReady,data=>sData, ack=>(not sDone));

    sig_out0 : entity work.sig_out
        port map(clk => sClk, ready => sReady, data_in=>sData,
                we => we, done => sDone, data_out => data_out);

    cts <= sDone;
end struct;
