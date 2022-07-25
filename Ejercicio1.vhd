----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:50 07/23/2022 
-- Design Name: 
-- Module Name:    Ejercicio1 - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejercicio1 is
	port (clk, SI,SD : in std_logic;
			x1,x0,y1,y0: buffer std_logic);
	attribute pin_number:String;
	attribute pin_number of Ejercicio1: entity is 
		"clk:1 SI:5 SD:6 x1:15 x0:16 y1:18 y0:19";
		
end Ejercicio1;

architecture Behavioral of Ejercicio1 is
begin
 inicio: process (clk,SI,SD,x1,x0,y1,y0)
	begin
	if (clk'event and clk='1') then
	if (SI='0' and SD='0') then --robot avanza
		x1<='1';
		x0<='0';
		y1<='1';
		y0<='0';
	if (SI='1' and SD='0') then -- robot gira izquierda
		x1<='0';
		x0<='1';
		y1<='1';
		y0<='0';
	elsif (SI='0' and SD='1') then --robot gira derecha
		x1<='1';
		x0<='0';
		y1<='0';
		y0<='1';
	else --robot mantiene su estado
		x1<= x1;
		x0<= x0;
		y1<= y1;
		y0<= y0;
	end if;
	end if;
	end process inicio;
 end Behavioral;
