library ieee;
use ieee.std_logic_1164.all;

entity erase is
    port(
        clk      : in  std_logic;
        ready    : in  std_logic;
        we       : out std_logic;
        done     : out std_logic;
        data_out : out std_logic_vector(23 downto 0)
    );
end erase;

architecture df of erase is
    signal sDone   : std_logic;
    signal sReady  : std_logic;
    signal sStarted: std_logic := '0';
    signal sCount  : std_logic_vector(4 downto 0) := (others => '0');
    signal sData   : std_logic_vector(23 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if ready = '1' and sStarted = '0' then
                sReady <= '1';
                sStarted <= '1';
            else
                sReady <= '0';
            end if;
        end if;
    end process;

    mux_counter : entity work.sticky_counter
        generic map(n => 23)
        port map(   clk => clk,
                    count => sCount,
                    enable => sReady,
                    ovf => sDone
                    );

    with sCount(4 downto 2) select
        data_out <= x"5555AA" when "000",
                    x"2AAA55" when "001",
                    x"555580" when "010",
                    x"5555AA" when "011",
                    x"2AAA55" when "100",
                    x"555510" when "101",
                    (others=>'0') when others;

    we <= not (sCount(1) xor sCount(0));

    done <= sStarted and sDone;
end df;
