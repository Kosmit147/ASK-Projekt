library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    generic (
        DATA_WIDTH : integer := 8;
        ADDR_WIDTH : integer := 4
    );
    port (
        clk    : in std_logic;
        load     : in std_logic;
        addr   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_in  : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end RAM;

architecture Behavioral of RAM is
    type ram_type is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ram : ram_type := (others => (others => '0'));
begin
    process (clk)
    begin
        if clk = '1' then
            if load = '1' then
                ram(conv_integer(addr)) <= data_in;
            end if;
            data_out <= ram(conv_integer(addr));
        end if;
    end process;
end Behavioral;