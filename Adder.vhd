library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
  port (
    x : in std_logic_vector(7 downto 0);
    y : out std_logic_vector(7 downto 0)
  );
end entity Adder;

architecture Behavioral of Adder is
begin
  process (x)
  begin
    y <= x + 1;
  end process;
end architecture Behavioral;
