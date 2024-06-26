library IEEE;
use IEEE.std_logic_1164.all;

entity PC_incrementer_mux is
port(
  a1      : in  std_logic_vector(7 downto 0);
  a2      : in  std_logic_vector(7 downto 0);
  sel     : in  std_logic;
  b       : out std_logic_vector(7 downto 0));
end PC_incrementer_mux;

architecture rtl of PC_incrementer_mux is
begin

p_mux : process(a1,a2,sel)
begin
  case sel is
    when '0' => b <= a1;
    when '1' => b <= a2;
  end case;
end process p_mux;

end rtl;
