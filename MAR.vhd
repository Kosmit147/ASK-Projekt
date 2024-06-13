library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MAR is
    Port (
        clk   : in  STD_LOGIC;
        rst   : in  STD_LOGIC;
        load  : in  STD_LOGIC;
        addr_in  : in  STD_LOGIC_VECTOR(15 downto 0);
        addr_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MAR;

architecture Behavioral of MAR is
    signal address : STD_LOGIC_VECTOR(15 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            address <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                address <= addr_in;
            end if;
        end if;
    end process;

    addr_out <= address;
end Behavioral;