
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuit_tb is
end;

architecture bench of circuit_tb is
  -- Clock period
  -- Generics
  -- Ports
  signal a      : std_logic;
  signal b      : std_logic;
  signal enable : std_logic;
  signal y      : std_logic;
begin

  circuit_inst : entity work.circuit
    port map
    (
      a      => a,
      b      => b,
      enable => enable,
      y      => y
    );
  -- clk <= not clk after clk_period/2;
  process
  begin
    a <= '0',
      '1' after 10 ns,
      '0' after 20 ns,
      '1' after 30 ns,
      '0' after 40 ns,
      '1' after 50 ns,
      '0' after 60 ns,
      '1' after 70 ns;

    b <= '0',
      '1' after 20 ns,
      '0' after 40 ns,
      '1' after 60 ns;

    enable <= '0',
      '1' after 40 ns;

    wait for 80 ns;
  end process;
end;