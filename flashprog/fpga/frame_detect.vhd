library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity frame_detect is
    port(
        samples     : in  std_logic_vector(39 downto 0);
        data        : out std_logic_vector(7  downto 0);
        ready       : out std_logic
    );
end frame_detect;

architecture df of frame_detect is
    signal sValid : std_logic_vector(9 downto 0) := (others => '0');
begin
    sValid(0) <= samples(1) nor samples(2);

    bits_valid : for i in 1 to 8 generate
        sValid(i) <= samples((i*4)+1) xnor samples((i*4)+2);
        data(i-1) <= samples((i*4)+1);
    end generate;

    sValid(9) <= samples(37) and samples(38);

    ready <= and_reduce(sValid);
end df;
