----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Christina Alphonse
-- 
-- Create Date: 08/12/2020 07:34:20 AM
-- Design Name: 
-- Module Name: AdderUsingFunction - Behavioral
-- Project Name: 
-- Target Devices: Nexys A7-100T
-- Tool Versions: Xilinx Vivado 2019.2
-- Description: Adder uses a function to add 2 4-bit numbers and outputs a 5 bit number.
-- 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AdderUsingFunction is
    Port ( A : in Unsigned (3 downto 0);
           B : in Unsigned  (3 downto 0);
           C : out Unsigned (4 downto 0));
end AdderUsingFunction;

architecture Behavioral of AdderUsingFunction is
Function add_two_values ( x: Unsigned ( 3 downto 0);
                          y : Unsigned ( 3 downto 0)) return Unsigned is
                          variable z: Unsigned ( 4 downto 0);
         begin
--The concatenation (&) operator is used to add a bit, so that the number of bits match on either side.
            z := (('0' & x) +('0'& y));
            return z;
end add_two_values;
begin
        C <= add_two_values(A, B);

end Behavioral;
