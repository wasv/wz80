library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rom_tb is
end rom_tb;

architecture behv of rom_tb is
    constant addr_bits : integer := 16;
    constant data_bits : integer := 8;
    signal addr : std_logic_vector(addr_bits-1 downto 0) := (others=>'0');
    signal data : std_logic_vector(data_bits-1 downto 0) := (others=>'0');
begin
    uut: entity work.rom
        generic map( ADDR_WIDTH => addr_bits, DATA_WIDTH => data_bits )
        port map( addr_i => addr, data_o => data);

    addr_proc: process
    begin
        addr <= addr + '1';
        wait for 100 ns;
    end process;
end behv;
