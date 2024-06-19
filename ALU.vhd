library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is
  port(
    AB : in std_logic_vector(7 downto 0);
	 AC : in std_logic_vector(7 downto 0);
    SALU : in  std_logic_vector(2 downto 0);
	 result : out std_logic_vector(7 downto 0);
    FLAGS   : out std_logic_vector(3 downto 0)
  );
end ALU;

architecture rtl of ALU is
begin
  p_alu : process(AB, AC, SALU)
  begin
    case SALU is
      when "000" => result <= std_logic_vector(unsigned(AB) + unsigned(AC)); -- Dodawanie
      when "001" => result <= std_logic_vector(unsigned(AB) - unsigned(AC)); -- Odejmowanie
      when "010" => result <= std_logic_vector(unsigned(AB) * unsigned(AC)); -- Mnożenie
      when "011" => result <= std_logic_vector(unsigned(AB) / unsigned(AC)); -- Dzielenie
      when "100" => result <= std_logic_vector(AB and AC); -- AND
      when "101" => result <= std_logic_vector(AB or AC); -- OR
		when "110" => result <= std_logic_vector(AB xor AC); -- XOR
      when others => result <= "0000";
    end case;
  end process p_alu;
end rtl;
