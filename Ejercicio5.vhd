----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:30 07/24/2022 
-- Design Name: 
-- Module Name:    Ejercicio5 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ejercicio5 is
	port (clk,SD: in std_logic;
			x1,x0,y1,y0: out std_logic);
end Ejercicio5;

architecture Behavioral of Ejercicio5 is
begin
process (clk,SD)
	begin
	if (clk'event and clk='1') then
	if (SD='0') then --robot avanza
		x1<='1';
		x0<='0';
		y1<='1';
		y0<='0';
	else 
	-- se girando a la derecha
		x0<='0';
		y0<='1';	
		x1<='1';
		y1<='0';
   -- Despues de 2000 ms se enciende 
		x1<='0' after 2000 ms;
		y1<='0' after 2000 ms;	
 end if;
end if;
end process; 
end Behavioral;

