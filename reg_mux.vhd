library IEEE;
use IEEE.std_logic_1164.all;

entity reg_mux is
  port(
    reg       : in  std_logic_vector(2 downto 0);
	 sel		  : out std_logic_vector(3 downto 0)
  );
end reg_mux;

architecture rtl of reg_mux is
begin
  p_splitter : process(reg)
  begin
    sel(3) <= '1';
	 sel(2 downto 0) <= reg;
  end process p_splitter;
end rtl;
