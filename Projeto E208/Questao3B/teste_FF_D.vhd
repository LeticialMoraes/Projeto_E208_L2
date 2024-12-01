--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:19:58 11/30/2024
-- Design Name:   
-- Module Name:   C:/Users/tko18/Desktop/Projeto E208/Questao3B/teste_FF_D.vhd
-- Project Name:  Questao3B
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FF_D
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY teste_FF_D IS
END teste_FF_D;
 
ARCHITECTURE behavior OF teste_FF_D IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FF_D
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         q_bar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal q_bar : std_logic;

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FF_D PORT MAP (
          d => d,
          clk => clk,
          q => q,
          q_bar => q_bar
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
  begin		
      -- hold reset state for 100 ns.
    wait for 100 ns;	
    d <= '0';
    wait for 100 ns;
    clk <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
	 clk <= '0';
    wait for 100 ns;
	 
	 
	 d<= '1';
	 wait for 100 ns;
	 clk <= '0';
	 wait for 100 ns;
	 clk<= '1';
	 wait for 100 ns;
	 clk <= '0';
	 wait for 100 ns;

 
    wait;
end process;
END;