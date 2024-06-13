library IEEE;
use IEEE.std_logic_1164.all;

entity mux6 is
  port(
    a1  : in  std_logic_vector(7 downto 0);
    a2  : in  std_logic_vector(7 downto 0);
    a3  : in  std_logic_vector(7 downto 0);
    a4  : in  std_logic_vector(7 downto 0);
    a5  : in  std_logic_vector(7 downto 0);
    a6  : in  std_logic_vector(7 downto 0);
    sel : in  std_logic_vector(2 downto 0);
    b   : out std_logic_vector(7 downto 0)
  );
end mux6;

architecture rtl of mux6 is
begin
  p_mux : process(a1, a2, a3, a4, a5, a6, sel)
  begin
    case sel is
      when "000" => b <= a1;
      when "001" => b <= a2;
      when "010" => b <= a3;
      when "011" => b <= a4;
      when "100" => b <= a5;
      when "101" => b <= a6;
      when others => b <= (others => '0');
    end case;
  end process p_mux;
end rtl;
