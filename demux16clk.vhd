library IEEE;
use IEEE.std_logic_1164.all;

entity demux16clk is
port (
  input   : in  std_logic;
  sel     : in  std_logic_vector(3 downto 0);
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
  s15     : out std_logic
);
end demux16clk;

architecture rtl of demux16clk is
begin
  process(sel)
  begin
    case sel is
      when "0000" => s0 <= input;
      when "0001" => s1 <= input;
      when "0010" => s2 <= input;
      when "0011" => s3 <= input;
      when "0100" => s4 <= input;
      when "0101" => s5 <= input;
      when "0110" => s6 <= input;
      when "0111" => s7 <= input;
      when "1000" => s8 <= input;
      when "1001" => s9 <= input;
      when "1010" => s10 <= input;
      when "1011" => s11 <= input;
      when "1100" => s12 <= input;
      when "1101" => s13 <= input;
      when "1110" => s14 <= input;
      when "1111" => s15 <= input;
      when others => null;
    end case;
  end process;
end rtl;
