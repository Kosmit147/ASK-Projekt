library IEEE;
use IEEE.std_logic_1164.all;

entity sel_splitter is
  port(
    QROM      : in  std_logic_vector(21 downto 0);
    S_BBm     : out std_logic;
    S_BB_IR   : out std_logic;
    S_selBB   : out std_logic;
    S_BAm     : out std_logic;
    S_BA_IR   : out std_logic;
    S_selBA   : out std_logic;
    SALU      : out std_logic;
    SA        : out std_logic;
	 Sid        : out std_logic;
	 Srd		  : out std_logic;
	 Swr       : out std_logic
  );
end sel_splitter;

architecture rtl of sel_splitter is
begin
  p_splitter : process(QROM)
  begin
    S_BBm   <= QROM(0);
    S_BB_IR <= QROM(1);
    S_selBB <= QROM(2);
    S_BAm   <= QROM(3);
    S_BA_IR <= QROM(4);
    S_selBA <= QROM(5);
    SALU    <= QROM(6);
    SA      <= QROM(7);
	 Sid		<= QROM(8);
	 Srd     <= QROM(9);
	 Swr     <= QROM(10);
  end process p_splitter;
end rtl;
