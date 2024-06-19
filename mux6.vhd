library IEEE;
use IEEE.std_logic_1164.all;

entity mux6 is
  port(
    V  : in  std_logic;
    C  : in  std_logic;
    Z  : in  std_logic;
    S  : in  std_logic;
    one  : in  std_logic;
    zero  : in  std_logic;
    x : in  std_logic_vector(2 downto 0);
    res   : out std_logic
  );
end mux6;

architecture rtl of mux6 is
begin
  p_mux : process(V, C, Z, S, one, zero, x)
  begin
    case x is
      when "000" => res <= V;
      when "001" => res <= C;
      when "010" => res <= Z;
      when "011" => res <= S;
      when "100" => res <= one;
      when "101" => res <= zero;
      when others => res <= '0';
    end case;
  end process p_mux;
end rtl;
