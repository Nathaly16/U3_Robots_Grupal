----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:23 07/23/2022 
-- Design Name: 
-- Module Name:    Robot - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Uncomment  the  following  library declaration if using 
--  arithmetic  functions  with  Signed  or Unsigned values 
use IEEE.NUMERIC_STD.ALL;  

Entity Robot is port
( SEL: in std_logic_vector (1 downto 0);
S_LINEA: in std_logic_vector (1 downto 0);
S_LUZ: in std_logic_vector (1 downto 0);
S_OBST: in std_logic_vector (1 downto 0); -- obstaculo
CONTROL:  out  std_logic_vector  (3  downto 0));
end Robot;

architecture BEHAVIORAL of Robot is begin
	process(SEL, S_LINEA, S_LUZ, S_OBST)
		begin --SEGUIDOR DE LINE
		if SEL="00" then
			if S_LINEA="00" then 
				CONTROL<="1010"; 
				--retrocede
				elsif S_LINEA="01"
				then CONTROL<="0110"; --derecha
				elsif S_LINEA="10"
				then CONTROL<="1001"; --izquierda
				else CONTROL<="0101"; --adelante
			end if;
		end if; --SEGUIDOR DE LUZ
		if SEL="01" then 
				if S_LUZ ="00" then
				CONTROL<="1111"; --adelante
				elsif S_LUZ ="01" then
				CONTROL<="0110"; --izquierda
				elsif S_LUZ ="10" then
				CONTROL<="1001"; --derecha
				else CONTROL<="0101"; --parar
			end if;
		end if;
		--EVASOR DE OBSTACULOS
		if SEL="10" then
			if S_OBST="00" then
				CONTROL<="0101"; --retrocede
				elsif S_OBST="01" then CONTROL<="1001"; --derecha
				elsif S_OBST="10" then CONTROL<="0110"; --izquierda
				else CONTROL<="1010";--adelante 
			end if;
		end if; --OTRO CASO
		if SEL="11" then CONTROL<="1111"; --parar
		end if; 
		end process;
end BEHAVIORAL;
