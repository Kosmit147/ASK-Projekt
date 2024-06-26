library IEEE;
use IEEE.std_logic_1164.all;

entity sel_splitter is
  port(
    QROM      : in  std_logic_vector(31 downto 0);
    SALU      : out std_logic_vector(2 downto 0);
    SA        : out std_logic_vector(1 downto 0);
	 SBA		  : out std_logic_vector(3 downto 0);
	 Sid       : out std_logic;
	 LDmbr	  : out std_logic;
	 LDmar     : out std_logic;
	 LDram     : out std_logic
	 
  );
end sel_splitter;

architecture rtl of sel_splitter is
begin
  p_splitter : process(QROM)
  begin
    SALU    <= QROM(10 downto 8);
    SA      <= QROM(12 downto 11);
	 SBA		<= QROM(16 downto 13);
	 Sid		<= QROM(17);
	 LDmbr     <= QROM(18);
	 LDmar     <= QROM(19);
	 LDram     <= QROM(20);
  end process p_splitter;
end rtl;
