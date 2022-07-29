----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:12 07/23/2022 
-- Design Name: 
-- Module Name:    SeguidorLinea - Behavioral 
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

entity SeguidorLinea is
	port (clk, SI,SD : in std_logic;
			x1,x0,y1,y0: out std_logic);
	--attribute pin_number:String;
	--attribute pin_number of SeguidorLinea: entity is 
	--	"clk:1 SI:5 SD:6 x1:15 x0:16 y1:18 y0:19";
		
end SeguidorLinea;

architecture Behavioral of SeguidorLinea is
begin
	process (clk,SI,SD)
		begin
			if (clk'event and clk='1') then
			--  1 encendido --  0 apagado 
				if (SI='0' and SD='0') then -- robot avanza
					x1<='1';
					x0<='0';
					y1<='1';
					y0<='0';
				elsif (SI='1' and SD='0') then -- robot gira izquierda
					x1<='0';
					x0<='1';
					y1<='1';
					y0<='0';
				elsif (SI='0' and SD='1') then --robot gira derecha
					x1<='1';
					x0<='0';
					y1<='0';
					y0<='1';
				else  --robot se detiene
					x1<='0';
					x0<='0';
					y1<='0';
					y0<='0';
				end if;
			end if;
	--end if;
	end process inicio;

end Behavioral;
