library IEEE;
use IEEE.std_logic_1164.all;

entity mux_reg_mar is
port(
  PCH : in  std_logic_vector(7 downto 0);
  PCL : in  std_logic_vector(7 downto 0);
  DIH : in  std_logic_vector(7 downto 0);
  DIL : in  std_logic_vector(7 downto 0);
  SPH      : in  std_logic_vector(7 downto 0);
  SPL      : in  std_logic_vector(7 downto 0);
  sel      : in  std_logic_vector(1 downto 0);
  res      : out std_logic_vector(15 downto 0));
end mux_reg_mar;

architecture rtl of mux_reg_mar is
begin

p_mux : process(PCH, PCL, sel)
begin
  case sel is
    when "00" => res(15 downto 8) <= PCH; res(7 downto 0) <= PCL;
	 when "01" => res(15 downto 8) <= DIH; res(7 downto 0) <= DIL;
	 when "10" => res(15 downto 8) <= SPH; res(7 downto 0) <= SPL;
    when others => res <= "0000000000000000";
  end case;
end process p_mux;

end rtl;
