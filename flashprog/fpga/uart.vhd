library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity uart is
     port(
        clk  : in  std_logic;
        sin  : in  std_logic;
        ack  : in  std_logic;
        ready: out std_logic;
        data : out std_logic_vector(7 downto 0)
    );
end uart;

architecture behv of uart is
    signal sData : std_logic_vector(7 downto 0) := (others => '0');
    signal sBitClk : std_logic_vector(1 downto 0) := "00";
    signal sBitCnt : std_logic_vector(3 downto 0) := "0000";
    signal sRxEn : std_logic := '0';
    signal sReady : std_logic := '0';
begin
    process(clk)
        variable vAcked : std_logic := '0';
    begin
        if(rising_edge(clk)) then
            if(sin = '0' and sRxEn = '0') then
                sBitClk <= "00";
                sBitCnt <= "0000";
                sRxEn <= '1';
            end if;
            if(sRxEn = '1') then
                sBitClk <= sBitClk + 1;
            end if;
            if(sBitClk = 3 and sRxEn = '1') then
                sBitClk <= "00";
                if(sBitCnt < 8) then
                    sData <= sin & sData(7 downto 1);
                end if;
                sBitCnt <= sBitCnt + 1;
            end if;
            if(sBitCnt = 9 and sRxEn = '1') then
                data <= sData;
                sRxEn <= '0';
                vAcked := '0';
            end if;
            if(sRxEn = '0' and sBitCnt = 9 and vAcked = '0') then
                sReady <= '1';
            end if;
            if(ack = '1') then
                sReady <= '0';
                vAcked := '1';
            end if;
        end if;
    end process;
    ready <= sReady;
end behv;
