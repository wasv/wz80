library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use ieee.std_logic_textio.all;
use std.textio.all;

entity rom is
    generic (
        ADDR_WIDTH       : integer := 8;
        DATA_WIDTH       : integer := 8
    );
    port (
        addr_i    : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_o    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end rom;

architecture rtl of rom is

constant MEM_DEPTH : integer := 2**ADDR_WIDTH;
type mem_type is array (0 to MEM_DEPTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);

impure function init_mem(mif_file_name : in string) return mem_type is
    file mif_file : text open read_mode is mif_file_name;
    variable mif_line : line;
    variable temp_bv : std_logic_vector(DATA_WIDTH-1 downto 0);
    variable temp_mem : mem_type;
    variable addr_cnt : integer := 0;
begin
    for addr_cnt in mem_type'range loop
        if not endfile(mif_file) then
            readline(mif_file, mif_line);
            if not endfile(mif_file) then
                hread(mif_line, temp_bv);
                temp_mem(addr_cnt) := std_logic_vector(temp_bv);
            else
                temp_mem(addr_cnt) := (others=>'0');
            end if;
        else
            temp_mem(addr_cnt) := (others=>'0');
        end if;
    end loop;
    return temp_mem;
end function;

constant mem : mem_type := init_mem("./core.dump");

begin
    data_o <= mem(to_integer(unsigned(addr_i)));
end rtl;
