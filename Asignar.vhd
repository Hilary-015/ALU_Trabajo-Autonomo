--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:00:04 06/22/2022
-- Design Name:   
-- Module Name:   C:/Users/Hilary Calva Camacho/Desktop/PROYECTOS VHDL/demoTercero/Asignar.vhd
-- Project Name:  demoTercero
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu_TA
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
 
ENTITY Asignar IS
END Asignar;
 
ARCHITECTURE behavior OF Asignar IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_TA
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         operacion : IN  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal operacion : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu_TA PORT MAP (
          a => a,
          b => b,
          operacion => operacion,
          salida => salida
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	   a <= "00101000";	
		b <= "00000010";
		operacion <= "0000";
		wait for 10 ns;
		operacion <= "0001";
      wait for 10 ns;
		operacion <= "0010";
		wait for 10 ns;
		operacion <= "0011";
		wait for 10 ns;
		operacion <= "0100";
		wait for 10 ns;
		operacion <= "0101";
		wait for 10 ns;
		operacion <= "0110";
		wait for 10 ns;
		operacion <= "0111";
		wait for 10 ns;
		operacion <= "1000"; 
		wait for 10 ns;
		operacion <= "1001";
		wait for 10 ns;
		operacion <= "1010";
		wait for 10 ns;
		operacion <= "1011";
		wait for 10 ns;
		operacion <= "1111";
		wait for 10 ns;
      -- insert stimulus here 
      wait;
   end process;

END;
