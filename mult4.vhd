library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mult4 is
  port(
    A  : in  std_logic_vector(7 downto 4);
    res   : out std_logic_vector(7 downto 0)
  );
end mult4;

architecture rtl of mult4 is
begin
  p_mux : process(A)
  begin
    res <= std_logic_vector(unsigned(A) * 4);
  end process p_mux;
end rtl;
