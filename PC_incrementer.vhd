library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC_incrementer is
  port (
    Sid: in std_logic;
    PCH : in std_logic_vector(7 downto 0);
	 PCL : in std_logic_vector(7 downto 0);
    PCH_new   : out std_logic_vector(7 downto 0);
	 PCL_new   : out std_logic_vector(7 downto 0);
	 PCH_clk   : out std_logic;
	 PCL_clk   : out std_logic
  );
end entity PC_incrementer;

architecture Behavioral of PC_incrementer is
begin
  process (PCH, PCL, Sid)
	variable tmp : std_logic_vector(15 downto 0);
  begin
	 if Sid = '1' then
	   tmp(15 downto 8) := PCH;
		tmp(7 downto 0) := PCL;
	   tmp := std_logic_vector(unsigned(tmp) + 1);
		PCH_new <= tmp(15 downto 8);
		PCL_new <= tmp(7 downto 0);
		PCH_clk <= '1';
		PCL_clk <= '1';
	 end if;
  end process;
end architecture Behavioral;
