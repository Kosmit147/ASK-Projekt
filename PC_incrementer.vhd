library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC_incrementer is
  port (
    Sid: in std_logic;
    x : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0)
  );
end entity PC_incrementer;

architecture Behavioral of PC_incrementer is
begin
  process (x)
  begin
	 if Sid = '1' then
	   y <= std_logic_vector(unsigned(x) + 1);
	 end if;
  end process;
end architecture Behavioral;
