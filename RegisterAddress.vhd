library IEEE;
use IEEE.std_logic_1164.all;

entity RegisterAddress is
  port (
    clk      : in  std_logic;
    reset    : in  std_logic;                 
    load     : in  std_logic;                
    addr_in  : in  std_logic_vector(7 downto 0);
    addr_out : out std_logic_vector(7 downto 0)
  );
end RegisterAddress;


architecture Behavioral of RegisterAddress is
  signal address : std_logic_vector(7 downto 0);
begin

  process(clk, reset)
  begin
    if reset = '1' then
      address <= (others => '0');                       
    elsif rising_edge(clk) then
      if load = '1' then
        address <= addr_in;                           
      end if;
    end if;
  end process;

  addr_out <= address;

end Behavioral;
