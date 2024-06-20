library IEEE;
use IEEE.std_logic_1164.all;

entity mux_reg_mar is
port(
  PCH       : in  std_logic_vector(7 downto 0);
  PCL       : in  std_logic_vector(7 downto 0);
  ADH			: in  std_logic_vector(7 downto 0);
  ADL			: in  std_logic_vector(7 downto 0);
  SPH			: in  std_logic_vector(7 downto 0);
  SPL			: in  std_logic_vector(7 downto 0);
  sel       : in  std_logic_vector(4 downto 0);
  res       : out std_logic_vector(15 downto 0));
end mux_reg_mar;

architecture rtl of mux_reg_mar is
begin

p_mux : process(PCH, PCL, sel)
begin
  case sel is
    when "00000" => res(15 downto 8) <= PCH; res(7 downto 0) <= PCL;
	 when "00001" => res(15 downto 8) <= ADH; res(7 downto 0) <= ADL;
	 when "00010" => res(15 downto 8) <= SPH; res(7 downto 0) <= SPL;
    when others => res <= "0000000000000000";
  end case;
end process p_mux;

end rtl;