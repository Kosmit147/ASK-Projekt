library IEEE;
use IEEE.std_logic_1164.all;

entity mux19 is
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
  a10      : in  std_logic_vector(7 downto 0);
  a11      : in  std_logic_vector(7 downto 0);
  a12      : in  std_logic_vector(7 downto 0);
  a13      : in  std_logic_vector(7 downto 0);
  a14      : in  std_logic_vector(7 downto 0);
  a15      : in  std_logic_vector(7 downto 0);
  a16      : in  std_logic_vector(7 downto 0);
  a17      : in  std_logic_vector(7 downto 0);
  a18      : in  std_logic_vector(7 downto 0);
  a19      : in  std_logic_vector(7 downto 0);
  sel     : in  std_logic_vector(4 downto 0);
  b       : out std_logic_vector(7 downto 0));
end mux19;

architecture rtl of mux19 is
  -- declarative part: empty
begin

p_mux : process(a1,a2,a3,a4,sel)
begin
  case sel is
    when "00000" => b <= a1;
    when "00001" => b <= a2;
    when "00010" => b <= a3;
    when "00011" => b <= a4;
    when "00100" => b <= a5;
    when "00101" => b <= a6;
    when "00110" => b <= a7;
    when "00111" => b <= a8;
    when "01000" => b <= a9;
    when "01001" => b <= a10;
    when "01010" => b <= a11;
    when "01011" => b <= a12;
    when "01100" => b <= a13;
    when "01101" => b <= a14;
    when "01110" => b <= a15;
    when "01111" => b <= a16;
    when "10000" => b <= a17;
    when "10001" => b <= a18;
    when "10010" => b <= a19;

    when others => b <= a4;
  end case;
end process p_mux;

end rtl;