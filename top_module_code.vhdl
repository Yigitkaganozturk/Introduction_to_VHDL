library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab2 is
    Port ( code1 : in STD_LOGIC;
           code2 : in STD_LOGIC;
           check1 : in STD_LOGIC;
           check2 : in STD_LOGIC;
           success : out STD_LOGIC);
end lab2;

architecture Behavioral of lab2 is

begin
success <= ((check1 and check2)and (code1 or code2))or (code1 and code2);

end Behavioral;
