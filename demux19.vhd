library IEEE;
use IEEE.std_logic_1164.all;

entity demux19 is
port (
  input   : in  std_logic_vector(7 downto 0);
  sel     : in  std_logic_vector(4 downto 0);
  s0      : out std_logic_vector(7 downto 0);
  s1      : out std_logic_vector(7 downto 0);
  s2      : out std_logic_vector(7 downto 0);
  s3      : out std_logic_vector(7 downto 0);
  s4      : out std_logic_vector(7 downto 0);
  s5      : out std_logic_vector(7 downto 0);
  s6      : out std_logic_vector(7 downto 0);
  s7      : out std_logic_vector(7 downto 0);
  s8      : out std_logic_vector(7 downto 0);
  s9      : out std_logic_vector(7 downto 0);
  s10     : out std_logic_vector(7 downto 0);
  s11     : out std_logic_vector(7 downto 0);
  s12     : out std_logic_vector(7 downto 0);
  s13     : out std_logic_vector(7 downto 0);
  s14     : out std_logic_vector(7 downto 0);
  s15     : out std_logic_vector(7 downto 0);
  s16     : out std_logic_vector(7 downto 0);
  s17     : out std_logic_vector(7 downto 0);
  s18     : out std_logic_vector(7 downto 0)
);
end demux19;

architecture rtl of demux19 is
begin
  process(sel)
  begin
    case sel is
      when "00000" => s0 <= input;
      when "00001" => s1 <= input;
      when "00010" => s2 <= input;
      when "00011" => s3 <= input;
      when "00100" => s4 <= input;
      when "00101" => s5 <= input;
      when "00110" => s6 <= input;
      when "00111" => s7 <= input;
      when "01000" => s8 <= input;
      when "01001" => s9 <= input;
      when "01010" => s10 <= input;
      when "01011" => s11 <= input;
      when "01100" => s12 <= input;
      when "01101" => s13 <= input;
      when "01110" => s14 <= input;
      when "01111" => s15 <= input;
      when "10000" => s16 <= input;
      when "10001" => s17 <= input;
      when "10010" => s18 <= input;
      when others => null; -- Ignoruj nieobsługiwane wartości sel
    end case;
  end process;
end rtl;
