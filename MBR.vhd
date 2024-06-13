-- MBR.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MBR is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end MBR;

architecture Behavioral of MBR is
    signal data : STD_LOGIC_VECTOR (7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            data <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                data <= data_in;
            end if;
        end if;
    end process;
    data_out <= data;
end Behavioral;
