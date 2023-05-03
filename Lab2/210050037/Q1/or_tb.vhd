library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench2 is
end entity;

architecture tb of Testbench2 is

    signal x1,x2: std_logic;
    signal g: std_logic;

    component OR_Gate is
        port(x1: in std_logic;
    x2: in std_logic;
    y: out std_logic);
    end component;
    
begin
    dut_instance: OR_Gate
    port map(x1=>x1 ,x2=>x2 ,y=>g);

    process

    begin

    x1<='0';
    x2<='0' ;

    wait for 1 fs;

    x1<='0';
    x2<='1' ;

    wait for 1 fs;

    x1<='1';
    x2<='0' ;

    wait for 1 fs;

    x1<='1';
    x2<='1' ;

    wait for 1 fs;

    end process;
end architecture;
