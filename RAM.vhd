library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    generic (
        DATA_WIDTH : integer := 8;  -- Szerokość słowa danych
        ADDR_WIDTH : integer := 4   -- Szerokość adresu
    );
    port (
        clk    : in std_logic;                          -- Sygnał zegarowy
        we     : in std_logic;                          -- Sygnał zapisu
        addr   : in std_logic_vector(ADDR_WIDTH-1 downto 0);  -- Sygnał adresowy
        data_in  : in std_logic_vector(DATA_WIDTH-1 downto 0);  -- Dane wejściowe
        data_out : out std_logic_vector(DATA_WIDTH-1 downto 0)  -- Dane wyjściowe
    );
end RAM;

architecture Behavioral of RAM is
    type ram_type is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ram : ram_type := (others => (others => '0'));  -- Inicjalizacja pamięci
begin
    process (clk)
    begin
        if clk = '1' then
            if we = '1' then
                ram(conv_integer(addr)) <= data_in;  -- Zapis danych do pamięci
            end if;
            data_out <= ram(conv_integer(addr));  -- Odczyt danych z pamięci
        end if;
    end process;
end Behavioral;