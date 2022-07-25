----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:55 07/24/2022 
-- Design Name: 
-- Module Name:    Ejercicio4 - Behavioral 
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

entity Ejercicio4 is
	port (clk,SD,ST : in std_logic;
			x1,x0,y1,y0: out std_logic);
end Ejercicido4;

architecture Behavioral of Ejercicido4 is

begin
process (clk,SD,ST)
	begin
	if (clk'event and clk='1') then
	if (SD='0' and ST='1') then --robot avanza
		x1<='1';
		x0<='1';
		y1<='1';
		y0<='1';
	elsif(SD='1' and ST='1') then
	-- x1 y1 indica la direccion 1 = avanza : 0 = retrocede
	-- se detiene
		x0<='0';
		y0<='0';	
   -- Despues de 1000 ns se enciende 
		x0<='1' after 1000 ns;
		y0<='1' after 1000 ns;	
	-- Se retrocede
		x1<='0';
		y1<='0';
	else 
	-- x1 y1 indica la direccion 1 = avanza : 0 = retrocede
	-- se detiene
		x0<='0';
		y0<='0';	
   		
		x1<='1';
		y1<='1';

 end if;
end if;
end process;
end Behavioral;

