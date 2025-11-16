LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU is -- ALU includes Reg. 3
	port (clk, res : in std_logic ;
	Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
	opcode : in std_logic_vector(15 downto 0); -- 16-bit opcode from Decoder
	neg1, neg2 : out std_logic;
	out1, out2 : out std_logic_vector(3 downto 0));
end ALU ;

architecture calculation of ALU is
SIGNAL Result : STD_LOGIC_vector(7 downto 0);
	begin
	process ( clk, res )
		begin
		if res = '1' then
			Result <= "00000000" ;
		elsif (clk'EVENT AND clk = '1') then
			case opcode is
		when "0000000000000001" =>
			Result <= reg1 + reg2;
		when "0000000000000010" =>
			Result <= reg1 - reg2;
		when "0000000000000100" =>
			Result <= not(reg1);
		when "0000000000001000" =>
			Result <= reg1 nand reg2;
		when "0000000000010000" =>
			Result <= reg1 nor reg2;
		when "0000000000100000" =>
			Result <= reg1 and reg2;
		when "0000000001000000" =>
			Result <= reg1 xor reg2;
		when "0000000010000000" =>
			Result <= reg1 or reg2;
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