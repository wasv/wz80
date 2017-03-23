--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package util is

    function f_log2 (x : positive) return natural;

end util;

package body util is

    -- http://stackoverflow.com/a/12751341
    function f_log2 (x : positive) return natural is
        variable i : natural;
    begin
        i := 0;
        while (2**i < x) and i < 31 loop
            i := i + 1;
        end loop;
        return i;
    end function;
end util;
