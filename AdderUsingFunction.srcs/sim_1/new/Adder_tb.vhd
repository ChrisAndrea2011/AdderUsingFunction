----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Christina Alphonse
-- 
-- Create Date: 08/12/2020 08:08:22 AM
-- Design Name: 
-- Module Name: Adder_tb - Behavioral
-- Project Name: 
-- Target Devices: Nexys A7-100T
-- Tool Versions: Xilinx Vivado 2019.2
-- Description: Test bench for Adder using function to add 2 4-bit numbers and output 5-bit number.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_tb is
--  Port ( );
end Adder_tb;

architecture Behavioral of Adder_tb is
Component AdderUsingFunction is
    Port ( A : in Unsigned (3 downto 0);
           B : in Unsigned  (3 downto 0);
           C : out Unsigned (4 downto 0));
end Component;
Signal A : Unsigned (3 downto 0);
Signal B : Unsigned (3 downto 0);
Signal C : Unsigned (4 downto 0);
begin
uut: AdderUsingFunction port map ( A, B, C);
process
begin
wait for 100ns;
A <= "0110";
B <= "1001";
wait for 100ns;
A <= "1111";
B <= "0101";
wait for 100ns;
A <= "1000";
B <= "0010";
wait for 100ns;
A <= "1010";
B <= "0110";
wait for 100ns;
end process;
end Behavioral;