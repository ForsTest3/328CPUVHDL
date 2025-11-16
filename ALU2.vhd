LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
--use work.MinMax.all; --import package

entity ALU2 is -- ALU includes Reg. 3
	port (clk, res : in std_logic ;
	Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
	opcode : in std_logic_vector(15 downto 0); -- 8-bit opcode from Decoder
	neg1, neg2 : out std_logic;
	out1, out2 : out std_logic_vector(3 downto 0));
end ALU2 ;

architecture calculation of ALU2 is --using a for problem 2
SIGNAL Result : STD_LOGIC_vector(7 downto 0);
	begin
	process ( clk, res )
		begin
		if res = '1' then
			Result <= "00000000" ;
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
			
		when "0000000000000001" =>
			 Result <= std_logic_vector(unsigned(Reg1) + 2);  --increment by 2
			
		when "0000000000000010" =>
			Result <= "00" & Reg2(7 downto 2); -- Append "00" at MSB
			
		when "0000000000000100" =>
			Result <= "1111" & Reg1(7 downto 4); -- Append "1111" at MSB
			
		when "0000000000001000" =>
			 if unsigned(Reg1) < unsigned(Reg2) then
				Result <= Reg1;
			  else
					Result <= Reg2;
			  end if; --minMax function thingy
			--could also be done by calling Result <= Min(reg1,reg2);
		when "0000000000010000" =>
			Result <= Reg1(1 downto 0) & Reg1(7 downto 2); --rotate right
			
		when "0000000000100000" =>
			Result <= Reg2(0) & Reg2(1) & Reg2(2) & Reg2(3) &
                              Reg2(4) & Reg2(5) & Reg2(6) & Reg2(7); --invert big significance
		when "0000000001000000" =>
			Result <= reg1 xor reg2; --xor of both
		when "0000000010000000" =>
			Result <= std_logic_vector(unsigned(Reg1) + unsigned(Reg2) - 4); --sum then subtract 4
		when others =>
			Result <= "00000000";
		
end case ;
end if ;
end process ;
out1 <= Result (3 downto 0);
out2 <= Result (7 downto 4);
neg2<=Result(7);
neg1<=Result(3);
end calculation ;