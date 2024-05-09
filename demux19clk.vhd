library IEEE;
use IEEE.std_logic_1164.all;

entity demux19clk is
port (
  input   : in  std_logic;
  sel     : in  std_logic_vector(4 downto 0);
  s0      : out std_logic;
  s1      : out std_logic;
  s2      : out std_logic;
  s3      : out std_logic;
  s4      : out std_logic;
  s5      : out std_logic;
  s6      : out std_logic;
  s7      : out std_logic;
  s8      : out std_logic;
  s9      : out std_logic;
  s10     : out std_logic;
  s11     : out std_logic;
  s12     : out std_logic;
  s13     : out std_logic;
  s14     : out std_logic;
  s15     : out std_logic;
  s16     : out std_logic;
  s17     : out std_logic;
  s18     : out std_logic
);
end demux19clk;

architecture rtl of demux19clk is
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
