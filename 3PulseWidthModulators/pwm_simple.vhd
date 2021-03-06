-- File: pwm_simple.vhd
-- Generated by MyHDL 0.11
-- Date: Sat Nov 14 17:35:07 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_011.all;

entity pwm_simple is
    port (
        clk_i: in std_logic;
        pwm_o: out std_logic;
        threshold: in unsigned(7 downto 0)
    );
end entity pwm_simple;
-- Inputs:
--     clk_i: PWM changes state on the rising edge of this clock input.
--     threshold: Bit-length determines counter width and value determines when output goes low.
-- Outputs:
--     pwm_o: PWM output starts and stays high until counter > threshold and then output goes low.

architecture MyHDL of pwm_simple is



signal cnt: unsigned(7 downto 0);

begin





pwm_o <= stdl(cnt < threshold);

PWM_SIMPLE_LOC_INSTS_CHUNK_INSTS_K: process (clk_i) is
begin
    if rising_edge(clk_i) then
        cnt <= (cnt + 1);
    end if;
end process PWM_SIMPLE_LOC_INSTS_CHUNK_INSTS_K;

end architecture MyHDL;
