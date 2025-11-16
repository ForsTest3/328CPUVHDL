-- Define a package containing reusable functions
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package MinMax is
    -- Declare functions
    function Min(A, B : integer) return integer;
    function MinAbs(A, B : integer) return integer;
end MinMax;

package body MinMax is
    -- Define Min function
    function Min(A, B : integer) return integer is
    begin
        if A < B then
            return A;
        else
            return B;
        end if;
    end Min;

    -- Define MinAbs function (calling Min inside it)
    function MinAbs(A, B : integer) return integer is
        variable AbsA : integer := abs(A);
        variable AbsB : integer := abs(B);
    begin
        return Min(AbsA, AbsB);  -- Calling Min function
    end MinAbs;
end MinMax;