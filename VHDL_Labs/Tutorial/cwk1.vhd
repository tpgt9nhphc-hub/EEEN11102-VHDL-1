library ieee;
use ieee.std_logic_1164.all;

entity cwk1 is
  port (
    a, b, c, d : in std_logic;
    x, y       : out std_logic
  );
end;

architecture behavioural of cwk1 is
  signal nb : std_logic;
  signal m  : std_logic;
  signal t  : std_logic;
begin
  nb <= not b;
  x  <= a or nb;
  m  <= nb when d = '0' else c;
  t  <= x and nb and m;
  y  <= t or nb;
end behavioural;