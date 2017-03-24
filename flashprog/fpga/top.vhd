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
    signal sSig_out: std_logic_vector(23 downto 0);
    signal sErase_out : std_logic_vector(23 downto 0);
    signal sSig_we: std_logic;
    signal sErase_we : std_logic;
    signal sErasing  : std_logic;
    signal sReady : std_logic;
    signal sDone  : std_logic;
    signal sClk   : std_logic := '0';
    signal sStart : std_logic;
    signal sSig_out_ready : std_logic;
begin
    clkdiv0 : entity work.clkdiv
        generic map(factor=>35)
        port map(clk_in=>clk, clk_out=>sClk);

    erase0 : entity work.erase
        port map(ready => sReady, clk=>sClk, done => sErasing,
                we => sErase_we, data_out => sErase_out);

    delay_cnt : entity work.sticky_counter
        generic map(n => 46080)
        port map(enable => sErasing, clk => sClk, ovf => sStart);

    uart0 : entity work.uart
        port map(sin => sin, clk=>sClk, ready=>sReady,data=>sData, ack=>(not sDone));

    sSig_out_ready <= sStart and sReady;

    sig_out0 : entity work.sig_out
        port map(clk => sClk, ready => sSig_out_ready, data_in=>sData,
                we => sSig_we, done => sDone, data_out => sSig_out);

    with sStart select
        data_out <= sSig_out when '1',
                    sErase_out when '0',
                    (others=>'0') when others;
    with sStart select
        we <=   sSig_we when '1',
                sErase_we when '0',
                '0' when others;
    cts <= not(sDone and not sReady);
end struct;
