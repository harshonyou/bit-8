-- Vhdl test bench created from schematic H:\Desktop\SOF1\lab1\Logic_Gates\Logic.sch - Wed Jun 01 16:44:37 2022
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--

-- Simulation libraries
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;


-- Entity
-- external connection, empty for simulations
ENTITY Logic_Logic_sch_tb IS
END Logic_Logic_sch_tb;
ARCHITECTURE behavioral OF Logic_Logic_sch_tb IS 
	
   COMPONENT Logic
	
	-- Declaration of the schematic
	-- (component) to be simulated,
	-- defining its input and output
	-- ports (pins).
   PORT( 
		SW0	:	IN 	STD_LOGIC;
		SW1	: 	IN 	STD_LOGIC;
		GREEN	: 	OUT 	STD_LOGIC;
		RED	: 	OUT 	STD_LOGIC);
   END COMPONENT;
	
	-- Signals (wires) that will be
	-- used in to the simulation to
	-- apply input stimulus and
	-- observe output responses.
	SIGNAL SW0	 :		STD_LOGIC;
	SIGNAL SW1	 : 	STD_LOGIC;
	SIGNAL GREEN : 	STD_LOGIC;
	SIGNAL RED	 : 	STD_LOGIC;
	

BEGIN
	-- instantation of component to be simulated
	-- i.e. Unit Under Test (UUT), connecting 
	-- (maping) component ports to signals
   UUT: Logic PORT MAP(
		SW0 	=> SW0,
		SW1 	=> SW1,
		GREEN => GREEN,
		RED 	=> RED
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
	-- Input stimulus that
	-- will be used to test
	-- the UUT.
   BEGIN
		SW1 <= '0'; SW0 <= '0'; WAIT FOR 100 ns;
		SW1 <= '0'; SW0 <= '1'; WAIT FOR 100 ns;
		SW1 <= '1'; SW0 <= '0'; WAIT FOR 100 ns;
		SW1 <= '1'; SW0 <= '1'; WAIT FOR 100 ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
