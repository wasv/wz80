library ieee;
use ieee.std_logic_1164.ALL;

entity top is
    port (
        oe, ce    : in  std_logic;
        addr_i    : in  std_logic_vector(14 downto 0);
        data_o    : out std_logic_vector(7 downto 0)
    );
end top;

architecture struct of top is
    signal sDataA : std_logic_vector(7 downto 0);
    signal sDataB : std_logic_vector(7 downto 0);
    signal sData  : std_logic_vector(7 downto 0);
begin
    rom0: entity work.rom
        generic map( ADDR_WIDTH => 14,
                     DATA_WIDTH => 8,
                     DATA_FILE  => "coreA.dump")
        port map( addr_i => addr_i(13 downto 0), data_o => sDataA);
    rom1: entity work.rom
        generic map( ADDR_WIDTH => 14,
                     DATA_WIDTH => 8,
                     DATA_FILE  => "coreB.dump")
        port map( addr_i => addr_i(13 downto 0), data_o => sDataB);

    with addr_i(14) select
        sData  <= sDataA when '0',
                  sDataB when '1',
                  (others => '0') when others;

    data_o <= sData when oe = '0' and ce = '0' else (others => 'Z');
end struct;
