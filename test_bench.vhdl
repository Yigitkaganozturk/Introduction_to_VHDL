library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity lab2_testbench is
end lab2_testbench;

architecture Behavioral of lab2_testbench is
component lab2
Port ( code1 : in STD_LOGIC;
           code2 : in STD_LOGIC;
           check1 : in STD_LOGIC;
           check2 : in STD_LOGIC;
           success : out STD_LOGIC);
END component;
signal code1 : std_logic:= '0';
signal code2 : std_logic:='0';
signal check1 : std_logic:='0';
signal check2 : std_logic:='0';
signal success : std_logic;
begin
uut: lab2 PORT MAP(
           code1 => code1,
           code2 => code2,
           check1 => check1,
           check2 => check2,          
           success=> success);
stim_proc: process
 begin
code1<='0';code2<='0';check1<='0'; check2<='0';
wait for 62.5ns;
code1<='0';code2<='0';check1<='0'; check2<='1';
wait for 62.5ns;
code1<='0';code2<='0';check1<='1'; check2<='0';
wait for 62.5ns;
code1<='0';code2<='0';check1<='1'; check2<='1';
wait for 62.5ns;
code1<='0';code2<='1';check1<='0'; check2<='0';
wait for 62.5ns;
code1<='0';code2<='1';check1<='0'; check2<='1';
wait for 62.5ns;
code1<='0';code2<='1';check1<='1'; check2<='0';
wait for 62.5ns;
code1<='0';code2<='1';check1<='1'; check2<='1';
wait for 62.5ns;
code1<='1';code2<='0';check1<='0'; check2<='0';
wait for 62.5ns;
code1<='1';code2<='0';check1<='0'; check2<='1';
wait for 62.5ns;
code1<='1';code2<='0';check1<='1'; check2<='0';
wait for 62.5ns;
code1<='1';code2<='0';check1<='1'; check2<='1';
wait for 62.5ns;
code1<='1';code2<='1';check1<='0'; check2<='0';
wait for 62.5ns;
code1<='1';code2<='1';check1<='0'; check2<='1';
wait for 62.5ns;
code1<='1';code2<='1';check1<='1'; check2<='0';
wait for 62.5ns;
code1<='1';code2<='1';check1<='1'; check2<='1';
wait for 62.5ns;
 end process; 
end Behavioral;
