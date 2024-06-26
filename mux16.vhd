library IEEE;
use IEEE.std_logic_1164.all;

entity mux16 is
port(
  a1      : in  std_logic_vector(7 downto 0);
  a2      : in  std_logic_vector(7 downto 0);
  a3      : in  std_logic_vector(7 downto 0);
  a4      : in  std_logic_vector(7 downto 0);
  a5      : in  std_logic_vector(7 downto 0);
  a6      : in  std_logic_vector(7 downto 0);
  a7      : in  std_logic_vector(7 downto 0);
  a8      : in  std_logic_vector(7 downto 0);
  a9      : in  std_logic_vector(7 downto 0);
  a10     : in  std_logic_vector(7 downto 0);
  a11     : in  std_logic_vector(7 downto 0);
  a12     : in  std_logic_vector(7 downto 0);
  a13     : in  std_logic_vector(7 downto 0);
  a14     : in  std_logic_vector(7 downto 0);
  a15     : in  std_logic_vector(7 downto 0);
  a16     : in  std_logic_vector(7 downto 0);
  sel     : in  std_logic_vector(3 downto 0);
  b       : out std_logic_vector(7 downto 0));
end mux16;

architecture rtl of mux16 is
begin

p_mux : process(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,sel)
begin
  case sel is
    when "0000" => b <= a1;
    when "0001" => b <= a2;
    when "0010" => b <= a3;
    when "0011" => b <= a4;
    when "0100" => b <= a5;
    when "0101" => b <= a6;
    when "0110" => b <= a7;
    when "0111" => b <= a8;
    when "1000" => b <= a9;
    when "1001" => b <= a10;
    when "1010" => b <= a11;
    when "1011" => b <= a12;
    when "1100" => b <= a13;
    when "1101" => b <= a14;
    when "1110" => b <= a15;
    when "1111" => b <= a16;

    when others => b <= "00000000";
  end case;
end process p_mux;

end rtl;
