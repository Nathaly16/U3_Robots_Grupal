----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:08 07/23/2022 
-- Design Name: 
-- Module Name:    Ejercicio2 - Behavioral 
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

entity Ejercicio2 is
	port (clk,SD : in std_logic;
			x1,x0: out std_logic);
end Ejercicio2;

architecture Behavioral of Ejercicio2 is
begin
 inicio: process (clk,SD)
	begin
	if (clk'event and clk='1') then
	if (SD='0') then --robot avanza
		x1<='1';
		x0<='1';
	else --robot se detiene
		x1<= '0';
		x0<= '0';
	end if;
	end if;
	end process inicio;
 end Behavioral;

