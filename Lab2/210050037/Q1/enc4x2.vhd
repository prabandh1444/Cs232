library IEEE;
use IEEE.std_logic_1164.all;

entity encoder4x2 is
    port(I: in std_logic_vector (3 downto 0);
    Y: out std_logic_vector(1 downto 0));
end entity;
    
architecture behaviour of encoder4x2 is
    component OR_Gate is
        port(x1: in std_logic;
        x2: in std_logic;
        y: out std_logic);
        end component;
        signal temp1,temp2: std_logic;
        begin
            dut_instance: OR_Gate
    port map(x1=>I(3) ,x2=>I(2) ,y=>temp1);

                Y(1) <= temp1;

            dut_instance1: OR_Gate
    port map(x1=>I(3) ,x2=>I(1) ,y=>temp2);
             
                Y(0) <= temp2;              
end architecture;