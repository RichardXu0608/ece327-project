
-- 
-- Definition of  top_lab3
-- 
--      02/15/14 13:29:32
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_11 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_11 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_11 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_11u_11u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx26, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, 
      nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, PWR, 
      NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(10) <= nx27 ;
   q(9) <= nx29 ;
   q(8) <= nx31 ;
   q(7) <= nx33 ;
   q(6) <= nx35 ;
   q(5) <= nx37 ;
   q(4) <= nx39 ;
   q(3) <= nx41 ;
   q(2) <= nx43 ;
   q(1) <= nx45 ;
   q(0) <= nx47 ;
   GND <= '0' ;
   DFFPC (nx26,GND,aclear,clock,nx27) ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   inc : inc_11u_11u_0_0 port map ( cin=>PWR, a(10)=>nx27, a(9)=>nx29, a(8)
      =>nx31, a(7)=>nx33, a(6)=>nx35, a(5)=>nx37, a(4)=>nx39, a(3)=>nx41, 
      a(2)=>nx43, a(1)=>nx45, a(0)=>nx47, d(10)=>nx48, d(9)=>nx49, d(8)=>
      nx50, d(7)=>nx51, d(6)=>nx52, d(5)=>nx53, d(4)=>nx54, d(3)=>nx55, d(2)
      =>nx56, d(1)=>nx57, d(0)=>nx58, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx26 <= nx48 AND NOT_SCLEAR ;
   nx28 <= nx49 AND NOT_SCLEAR ;
   nx30 <= nx50 AND NOT_SCLEAR ;
   nx32 <= nx51 AND NOT_SCLEAR ;
   nx34 <= nx52 AND NOT_SCLEAR ;
   nx36 <= nx53 AND NOT_SCLEAR ;
   nx38 <= nx54 AND NOT_SCLEAR ;
   nx40 <= nx55 AND NOT_SCLEAR ;
   nx42 <= nx56 AND NOT_SCLEAR ;
   nx44 <= nx57 AND NOT_SCLEAR ;
   nx46 <= nx58 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_0_12 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_0_12 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_0_12 is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component inc_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, 
      nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, nx47, nx48, nx49, 
      nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, nx58, nx59, nx60, nx61, 
      nx62, nx63, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(11) <= nx29 ;
   q(10) <= nx31 ;
   q(9) <= nx33 ;
   q(8) <= nx35 ;
   q(7) <= nx37 ;
   q(6) <= nx39 ;
   q(5) <= nx41 ;
   q(4) <= nx43 ;
   q(3) <= nx45 ;
   q(2) <= nx47 ;
   q(1) <= nx49 ;
   q(0) <= nx51 ;
   GND <= '0' ;
   DFFPC (nx28,GND,aclear,clock,nx29) ;
   DFFPC (nx30,GND,aclear,clock,nx31) ;
   DFFPC (nx32,GND,aclear,clock,nx33) ;
   DFFPC (nx34,GND,aclear,clock,nx35) ;
   DFFPC (nx36,GND,aclear,clock,nx37) ;
   DFFPC (nx38,GND,aclear,clock,nx39) ;
   DFFPC (nx40,GND,aclear,clock,nx41) ;
   DFFPC (nx42,GND,aclear,clock,nx43) ;
   DFFPC (nx44,GND,aclear,clock,nx45) ;
   DFFPC (nx46,GND,aclear,clock,nx47) ;
   DFFPC (nx48,GND,aclear,clock,nx49) ;
   DFFPC (nx50,GND,aclear,clock,nx51) ;
   inc : inc_12u_12u_0_0 port map ( cin=>PWR, a(11)=>nx29, a(10)=>nx31, a(9)
      =>nx33, a(8)=>nx35, a(7)=>nx37, a(6)=>nx39, a(5)=>nx41, a(4)=>nx43, 
      a(3)=>nx45, a(2)=>nx47, a(1)=>nx49, a(0)=>nx51, d(11)=>nx52, d(10)=>
      nx53, d(9)=>nx54, d(8)=>nx55, d(7)=>nx56, d(6)=>nx57, d(5)=>nx58, d(4)
      =>nx59, d(3)=>nx60, d(2)=>nx61, d(1)=>nx62, d(0)=>nx63, cout=>DANGLING
      (0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx28 <= nx52 AND NOT_SCLEAR ;
   nx30 <= nx53 AND NOT_SCLEAR ;
   nx32 <= nx54 AND NOT_SCLEAR ;
   nx34 <= nx55 AND NOT_SCLEAR ;
   nx36 <= nx56 AND NOT_SCLEAR ;
   nx38 <= nx57 AND NOT_SCLEAR ;
   nx40 <= nx58 AND NOT_SCLEAR ;
   nx42 <= nx59 AND NOT_SCLEAR ;
   nx44 <= nx60 AND NOT_SCLEAR ;
   nx46 <= nx61 AND NOT_SCLEAR ;
   nx48 <= nx62 AND NOT_SCLEAR ;
   nx50 <= nx63 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
    is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component dec_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, 
      nx27, nx28, nx29, nx30: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx20 ;
   q(2) <= nx22 ;
   q(1) <= nx24 ;
   q(0) <= nx26 ;
   GND <= '0' ;
   nx13 <= cnt_en OR sload ;
   nx16 <= nx13 AND clk_en ;
   DFFPCE (nx19,GND,aclear,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,aclear,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,aclear,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,aclear,nx16,clock,nx26) ;
   dec : dec_4u_4u_0_0 port map ( cin=>GND, a(3)=>nx20, a(2)=>nx22, a(1)=>
      nx24, a(0)=>nx26, d(3)=>nx27, d(2)=>nx28, d(1)=>nx29, d(0)=>nx30, cout
      =>DANGLING(0));
   nx19 <= data(3) when sload = '1' else nx27 ;
   nx21 <= data(2) when sload = '1' else nx28 ;
   nx23 <= data(1) when sload = '1' else nx29 ;
   nx25 <= data(0) when sload = '1' else nx30 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_aclear_clock_clk_en_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_aclear_clock_clk_en_0_4 ;

architecture INTERFACE of counter_up_sclear_aclear_clock_clk_en_0_4 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, nx21, nx22, 
      nx23, nx24, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,clk_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,clk_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,clk_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,clk_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx21, d(2)=>nx22, d(1)=>nx23, d(0)=>nx24, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx13 <= nx21 AND NOT_SCLEAR ;
   nx15 <= nx22 AND NOT_SCLEAR ;
   nx17 <= nx23 AND NOT_SCLEAR ;
   nx19 <= nx24 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic) ;
end UARTS ;

architecture RTL_unfold_1210 of UARTS is 
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component mux_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_11
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_0_12
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_aclear_clock_clk_en_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component eq_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component eq_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   signal RxRDY_EXMPLR93: std_logic ;
   
   signal Tx_Reg: std_logic_vector (4 DOWNTO 1) ;
   
   signal GND: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, PWR, 
      rtlc8n73: std_logic ;
   
   signal Tx_Reg_14n6ss1: std_logic_vector (4 DOWNTO 0) ;
   
   signal not_LD, not_rtlcs3, rtlc14n164, rtlc14n168, rtlc14n219, 
      not_TxFSM_1, not_rtlcn0, not_TopTx, rtlc14n224, rtlc14_X_0_n225, 
      rtlc14n235, not_rtlc14_X_0_n225, rtlc14n290, not_rtlcn2, 
      not_rtlc14n168, not_rtlcn4, not_Rx, rtlc17n303, rtlc17n308, not_TopRx, 
      rtlc17n359, rtlc17_X_0_n360, not_rtlc17_X_0_n360, rtlc17n405, 
      not_rtlc17n405, rtlc17n442, not_rtlc17n308, rtlc17n459, rtlc17n460, 
      not_rtlcn6, rtlc17n474, not_rtlc17n474, rtlcn0, rtlcn2, rtlcn4, rtlcn6, 
      not_TxFSM_0, rtlcn31, rtlcn37, rtlcn42, rtlcn47, rtlcn51, rtlcn57, 
      rtlcn75, rtlcn76, not_rtlcn118, not_RxFSM_0, rtlcn96, not_rtlcs5, 
      not_Rx_r, rtlcn99, rtlcn100, rtlcn101, rtlcn102, not_rtlc14n290, 
      rtlcn118, rtlcn119, not_rtlcn75, not_rtlcn76, rtlcn122, rtlcs0, rtlcs1, 
      rtlcs3, rtlcs4, rtlcs5, not_RxBitCnt_2, not_RxBitCnt_1, not_RxBitCnt_0, 
      not_RxDiv_9, not_RxDiv_5, not_RxDiv_1, not_RxFSM_5, not_TxDiv_10, 
      not_TxDiv_6, not_TxDiv_2, not_TxBitCnt_3, not_TxBitCnt_2, 
      not_TxBitCnt_1, rtlcs6, rtlcs7, rtlcn142: std_logic ;
   
   signal DANGLING : std_logic_vector (26 downto 0 );

begin
   TxBusy <= GND ;
   RxRDY <= RxRDY_EXMPLR93 ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlc8n73 <= RxFSM_0 OR rtlcs0 ;
   rtlc14n290 <= rtlcs4 OR rtlc14n219 ;
   rtlc14n164 <= not_TopTx OR not_rtlcs3 ;
   not_TopTx <= NOT TopTx ;
   rtlc14n224 <= not_TopTx AND TxFSM(1) ;
   rtlc14n219 <= TxFSM(1) AND TxFSM(0) ;
   rtlc14_109_or_0 : or_3u_3u port map ( a(2)=>rtlc14n219, a(1)=>not_rtlcn0, 
      a(0)=>rtlc14n224, d=>rtlc14_X_0_n225);
   not_rtlc14_X_0_n225 <= NOT rtlc14_X_0_n225 ;
   not_TxFSM_1 <= NOT TxFSM(1) ;
   rtlc14n235 <= TopTx AND not_TxFSM_1 ;
   not_rtlcs3 <= NOT rtlcs3 ;
   rtlc17n405 <= RxFSM_5 OR RxFSM_6 ;
   not_rtlc17n405 <= NOT rtlc17n405 ;
   rtlc17n474 <= RxFSM_0 OR RxFSM_3 ;
   not_rtlc17n474 <= NOT rtlc17n474 ;
   rtlc17n303 <= not_TopRx OR not_Rx_r ;
   rtlc17n359 <= not_TopRx AND RxFSM_3 ;
   not_rtlc17_X_0_n360 <= NOT rtlc17_X_0_n360 ;
   not_Rx <= NOT Rx ;
   rtlc17_X_0_n360 <= not_rtlc17n474 OR rtlc17n359 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   rtlc_48_select_1 : select_3_3 port map ( a(2)=>RxFSM_0, a(1)=>
      not_rtlcn118, a(0)=>RxFSM_6, b(2)=>Rx_r, b(1)=>not_TopRx, b(0)=>not_Rx, 
      d=>rtlcn6);
   Tx_Reg_mux_14i1 : mux_3u_3u port map ( a(2)=>Tx_Reg(1), a(1)=>GND, a(0)=>
      PWR, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>TxFSM(0), d=>Tx_Reg_14n6ss1(0));
   rtlc_92_mux_3 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      PWR, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlc14n168);
   rtlc_93_mux_4 : mux_4u_4u port map ( a(3)=>PWR, a(2)=>not_TopTx, a(1)=>
      not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), b(0)=>
      TxFSM(0), d=>rtlcn2);
   rtlc_94_mux_5 : mux_4u_4u port map ( a(3)=>not_TopTx, a(2)=>rtlc14n164, 
      a(1)=>not_TopTx, a(0)=>not_LD, b(3)=>GND, b(2)=>GND, b(1)=>TxFSM(1), 
      b(0)=>TxFSM(0), d=>rtlcn4);
   not_LD <= NOT LD ;
   not_TopRx <= NOT TopRx ;
   not_RxFSM_0 <= NOT RxFSM_0 ;
   rtlcn96 <= RxFSM_5 AND not_TopRx ;
   rtlcn76 <= not_rtlc17n405 OR rtlcn96 ;
   rtlcn75 <= RxFSM_5 AND TopRx ;
   not_TxFSM_0 <= NOT TxFSM(0) ;
   not_rtlcs5 <= NOT rtlcs5 ;
   rtlcn31 <= not_rtlcs5 AND RxFSM_2 ;
   not_Rx_r <= NOT Rx_r ;
   rtlcn99 <= not_Rx_r AND RxFSM_1 ;
   rtlcn37 <= RxFSM_3 OR rtlcn99 ;
   rtlcn100 <= RxFSM_5 AND Rx_r ;
   rtlcn42 <= RxFSM_6 OR rtlcn100 ;
   rtlcn47 <= rtlcs5 AND RxFSM_2 ;
   rtlcn51 <= not_RxFSM_0 AND rtlcs0 ;
   rtlcn101 <= RxFSM_5 AND not_Rx_r ;
   rtlcn102 <= Rx_r AND RxFSM_1 ;
   rtlcn57 <= rtlcn101 OR rtlcn102 ;
   not_rtlc14n290 <= NOT rtlc14n290 ;
   not_rtlcn118 <= NOT rtlcn118 ;
   Tx_Reg_14n6ss1(1) <= Tx_Reg(2) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(2) <= Tx_Reg(3) when TxFSM(1) = '1' else Din(3) ;
   Tx_Reg_14n6ss1(3) <= Tx_Reg(4) when TxFSM(1) = '1' else Din(3) ;
   not_rtlcn4 <= NOT rtlcn4 ;
   not_rtlc14n168 <= NOT rtlc14n168 ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn6 <= NOT rtlcn6 ;
   rtlc17n460 <= RxRDY_EXMPLR93 OR RxFSM_6 ;
   not_rtlcn75 <= NOT rtlcn75 ;
   rtlcn119 <= Rx_r OR not_rtlcn75 ;
   not_rtlcn76 <= NOT rtlcn76 ;
   rtlcn122 <= not_rtlcn76 AND rtlcn119 ;
   rtlc17n459 <= RxRDY_EXMPLR93 OR rtlcn122 ;
   not_rtlc17n308 <= NOT rtlc17n308 ;
   rtlcn118 <= RxFSM_0 OR RxFSM_6 ;
   not_RxBitCnt_2 <= NOT RxBitCnt(2) ;
   not_RxBitCnt_1 <= NOT RxBitCnt(1) ;
   not_RxBitCnt_0 <= NOT RxBitCnt(0) ;
   rtlc_331_and_7 : and_4u_4u port map ( a(3)=>RxBitCnt(3), a(2)=>
      not_RxBitCnt_2, a(1)=>not_RxBitCnt_1, a(0)=>not_RxBitCnt_0, d=>rtlcs5
   );
   not_RxDiv_9 <= NOT RxDiv(9) ;
   not_RxDiv_5 <= NOT RxDiv(5) ;
   not_RxDiv_1 <= NOT RxDiv(1) ;
   rtlc_341_and_8 : and_4u_4u port map ( a(3)=>not_RxDiv_9, a(2)=>
      not_RxDiv_5, a(1)=>not_RxDiv_1, a(0)=>rtlcs6, d=>rtlcs0);
   not_RxFSM_5 <= NOT RxFSM_5 ;
   rtlc17n308 <= rtlc17n303 OR not_RxFSM_5 ;
   not_TxDiv_10 <= NOT TxDiv(10) ;
   not_TxDiv_6 <= NOT TxDiv(6) ;
   not_TxDiv_2 <= NOT TxDiv(2) ;
   rtlc_352_and_9 : and_4u_4u port map ( a(3)=>not_TxDiv_10, a(2)=>
      not_TxDiv_6, a(1)=>not_TxDiv_2, a(0)=>rtlcs7, d=>rtlcs1);
   rtlcn0 <= TxFSM(1) OR TxFSM(0) ;
   not_TxBitCnt_3 <= NOT TxBitCnt(3) ;
   not_TxBitCnt_2 <= NOT TxBitCnt(2) ;
   not_TxBitCnt_1 <= NOT TxBitCnt(1) ;
   rtlc_358_and_10 : and_4u_4u port map ( a(3)=>not_TxBitCnt_3, a(2)=>
      not_TxBitCnt_2, a(1)=>not_TxBitCnt_1, a(0)=>TxBitCnt(0), d=>rtlcs3);
   rtlcs4 <= not_TxFSM_1 AND not_TxFSM_0 ;
   rtlc17n442 <= TopRx AND RxFSM_3 ;
   modgen_counter_RxDiv : counter_up_sclear_aclear_clock_0_11 port map ( 
      clock=>CLK, q(10)=>RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>
      RxDiv(7), q(6)=>RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>
      RxDiv(3), q(2)=>RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>PWR, 
      aclear=>RST, sload=>GND, data(10)=>DANGLING(0), data(9)=>DANGLING(1), 
      data(8)=>DANGLING(2), data(7)=>DANGLING(3), data(6)=>DANGLING(4), 
      data(5)=>DANGLING(5), data(4)=>DANGLING(6), data(3)=>DANGLING(7), 
      data(2)=>DANGLING(8), data(1)=>DANGLING(9), data(0)=>DANGLING(10), 
      aset=>GND, sclear=>rtlc8n73, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxDiv : counter_up_sclear_aclear_clock_0_12 port map ( 
      clock=>CLK, q(11)=>TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>
      TxDiv(8), q(7)=>TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>
      TxDiv(4), q(3)=>TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>
      TxDiv(0), clk_en=>PWR, aclear=>RST, sload=>GND, data(11)=>DANGLING(11), 
      data(10)=>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), 
      data(7)=>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), 
      data(4)=>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), 
      data(1)=>DANGLING(21), data(0)=>DANGLING(22), aset=>GND, sclear=>
      rtlcs1, updn=>PWR, cnt_en=>PWR);
   modgen_counter_TxBitCnt : counter_dn_cnt_en_sload_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>TxBitCnt(3), q(2)=>TxBitCnt(2), q(1)=>
      TxBitCnt(1), q(0)=>TxBitCnt(0), clk_en=>not_rtlc14_X_0_n225, aclear=>
      RST, sload=>rtlc14n235, data(3)=>PWR, data(2)=>GND, data(1)=>GND, 
      data(0)=>PWR, aset=>GND, sclear=>GND, updn=>GND, cnt_en=>TxFSM(1));
   modgen_counter_RxBitCnt : counter_up_sclear_aclear_clock_clk_en_0_4
       port map ( clock=>CLK, q(3)=>RxBitCnt(3), q(2)=>RxBitCnt(2), q(1)=>
      RxBitCnt(1), q(0)=>RxBitCnt(0), clk_en=>not_rtlc17_X_0_n360, aclear=>
      RST, sload=>GND, data(3)=>DANGLING(23), data(2)=>DANGLING(24), data(1)
      =>DANGLING(25), data(0)=>DANGLING(26), aset=>GND, sclear=>RxFSM_0, 
      updn=>PWR, cnt_en=>PWR);
   rtlceq_s14_eq_11 : eq_8u_8u port map ( a(7)=>RxDiv(10), a(6)=>RxDiv(8), 
      a(5)=>RxDiv(7), a(4)=>RxDiv(6), a(3)=>RxDiv(4), a(2)=>RxDiv(3), a(1)=>
      RxDiv(2), a(0)=>RxDiv(0), b(7)=>GND, b(6)=>GND, b(5)=>TxDivisor_5, 
      b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, b(2)=>TxDivisor_5, b(1)=>GND, 
      b(0)=>GND, d=>rtlcs6);
   rtlceq_s16_eq_12 : eq_9u_9u port map ( a(8)=>TxDiv(11), a(7)=>TxDiv(9), 
      a(6)=>TxDiv(8), a(5)=>TxDiv(7), a(4)=>TxDiv(5), a(3)=>TxDiv(4), a(2)=>
      TxDiv(3), a(1)=>TxDiv(1), a(0)=>TxDiv(0), b(8)=>GND, b(7)=>GND, b(6)=>
      TxDivisor_5, b(5)=>TxDivisor_5, b(4)=>TxDivisor_5, b(3)=>TxDivisor_5, 
      b(2)=>GND, b(1)=>GND, b(0)=>TxDivisor_5, d=>rtlcs7);
   DFFPC (Rx,RST,GND,CLK,Rx_r) ;
   DFFPC (PWR,GND,RST,CLK,TxDivisor_5) ;
   DFFPC (rtlcn51,GND,RST,CLK,TopRx) ;
   DFFPC (rtlcs1,GND,RST,CLK,TopTx) ;
   DFFPCE (not_rtlc14n290,GND,RST,not_rtlcn4,CLK,TxFSM(1)) ;
   DFFPCE (not_TxFSM_0,GND,RST,not_rtlcn4,CLK,TxFSM(0)) ;
   DFFPCE (Tx_Reg_14n6ss1(4),RST,GND,not_rtlc14n168,CLK,Tx_Reg(4)) ;
   DFFPCE (Tx_Reg_14n6ss1(3),RST,GND,not_rtlc14n168,CLK,Tx_Reg(3)) ;
   DFFPCE (Tx_Reg_14n6ss1(2),RST,GND,not_rtlc14n168,CLK,Tx_Reg(2)) ;
   DFFPCE (Tx_Reg_14n6ss1(1),RST,GND,not_rtlc14n168,CLK,Tx_Reg(1)) ;
   DFFPCE (Tx_Reg_14n6ss1(0),RST,GND,not_rtlcn2,CLK,Tx) ;
   DFFPCE (rtlcn57,GND,RST,not_rtlcn6,CLK,RxFSM_6) ;
   DFFPCE (rtlcn47,GND,RST,not_rtlcn6,CLK,RxFSM_5) ;
   DFFPCE (rtlcn31,GND,RST,not_rtlcn6,CLK,RxFSM_3) ;
   DFFPCE (rtlcn37,GND,RST,not_rtlcn6,CLK,RxFSM_2) ;
   DFFPCE (RxFSM_0,GND,RST,not_rtlcn6,CLK,RxFSM_1) ;
   DFFPCE (rtlcn42,RST,GND,not_rtlcn6,CLK,RxFSM_0) ;
   DFFPCE (RxFSM_6,GND,RST,rtlc17n460,CLK,RxErr) ;
   DFFPCE (Rx_Reg(7),GND,RST,not_rtlc17n308,CLK,Dout(7)) ;
   DFFPCE (Rx_Reg(6),GND,RST,not_rtlc17n308,CLK,Dout(6)) ;
   DFFPCE (Rx_Reg(5),GND,RST,not_rtlc17n308,CLK,Dout(5)) ;
   DFFPCE (Rx_Reg(4),GND,RST,not_rtlc17n308,CLK,Dout(4)) ;
   DFFPCE (Rx_Reg(3),GND,RST,not_rtlc17n308,CLK,Dout(3)) ;
   DFFPCE (Rx_Reg(2),GND,RST,not_rtlc17n308,CLK,Dout(2)) ;
   DFFPCE (Rx_Reg(1),GND,RST,not_rtlc17n308,CLK,Dout(1)) ;
   DFFPCE (Rx_Reg(0),GND,RST,not_rtlc17n308,CLK,Dout(0)) ;
   DFFPCE (Rx_r,GND,RST,rtlc17n442,CLK,Rx_Reg(7)) ;
   DFFPCE (Rx_Reg(7),GND,RST,rtlc17n442,CLK,Rx_Reg(6)) ;
   DFFPCE (Rx_Reg(6),GND,RST,rtlc17n442,CLK,Rx_Reg(5)) ;
   DFFPCE (Rx_Reg(5),GND,RST,rtlc17n442,CLK,Rx_Reg(4)) ;
   DFFPCE (Rx_Reg(4),GND,RST,rtlc17n442,CLK,Rx_Reg(3)) ;
   DFFPCE (Rx_Reg(3),GND,RST,rtlc17n442,CLK,Rx_Reg(2)) ;
   DFFPCE (Rx_Reg(2),GND,RST,rtlc17n442,CLK,Rx_Reg(1)) ;
   DFFPCE (Rx_Reg(1),GND,RST,rtlc17n442,CLK,Rx_Reg(0)) ;
   DFFPC (rtlcn142,GND,RST,CLK,RxRDY_EXMPLR93) ;
   Tx_Reg_14n6ss1(4) <= Din(3) OR TxFSM(1) ;
   modgen_and_0 : and_4u_4u port map ( a(3)=>Rx_r, a(2)=>RxFSM_5, a(1)=>
      TopRx, a(0)=>rtlc17n459, d=>rtlcn142);
end RTL_unfold_1210 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_16 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_16 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, nx69, 
      nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, nx81, 
      nx82, nx83, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,clk_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,clk_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,clk_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,clk_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,clk_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,clk_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,clk_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,clk_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,clk_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,clk_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,clk_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,clk_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,clk_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,clk_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,clk_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,clk_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx68, d(14)=>nx69, d(13)=>nx70, 
      d(12)=>nx71, d(11)=>nx72, d(10)=>nx73, d(9)=>nx74, d(8)=>nx75, d(7)=>
      nx76, d(6)=>nx77, d(5)=>nx78, d(4)=>nx79, d(3)=>nx80, d(2)=>nx81, d(1)
      =>nx82, d(0)=>nx83, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx36 <= nx68 AND NOT_SCLEAR ;
   nx38 <= nx69 AND NOT_SCLEAR ;
   nx40 <= nx70 AND NOT_SCLEAR ;
   nx42 <= nx71 AND NOT_SCLEAR ;
   nx44 <= nx72 AND NOT_SCLEAR ;
   nx46 <= nx73 AND NOT_SCLEAR ;
   nx48 <= nx74 AND NOT_SCLEAR ;
   nx50 <= nx75 AND NOT_SCLEAR ;
   nx52 <= nx76 AND NOT_SCLEAR ;
   nx54 <= nx77 AND NOT_SCLEAR ;
   nx56 <= nx78 AND NOT_SCLEAR ;
   nx58 <= nx79 AND NOT_SCLEAR ;
   nx60 <= nx80 AND NOT_SCLEAR ;
   nx62 <= nx81 AND NOT_SCLEAR ;
   nx64 <= nx82 AND NOT_SCLEAR ;
   nx66 <= nx83 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity uw_uart is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      RXFLEX : IN std_logic ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      TXFLEX : OUT std_logic ;
      o_pixavail : OUT std_logic) ;
end uw_uart ;

architecture main of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_16
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal o_pixavail_EXMPLR143: std_logic ;
   
   signal SDin: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxErr, RxRDY, RawRx, GND, sdout_3: std_logic ;
   
   signal RData: std_logic_vector (7 DOWNTO 0) ;
   
   signal State, dsend, mdata_3, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal LD_SDOUT, PWR, not_o_pixavail, rtlc7n81, rtlc7n106, not_rtlc7n106, 
      not_RxErr, rtlc7n134, rtlc7n162, not_rtlcn29, not_dsend, rtlc10n49, 
      rtlc10n62, not_rtlcn30, rtlcn0, rtlcn1, rtlcn11, not_State, rtlcn20, 
      not_rtlc7n81, rtlcn22, rtlcn28, rtlcn29, rtlcn30, not_RST, 
      not_waitcount_15, not_waitcount_14, not_waitcount_13, not_waitcount_12, 
      not_waitcount_11, not_waitcount_10, not_waitcount_9, not_waitcount_8, 
      not_waitcount_7, not_waitcount_4, not_waitcount_3, not_waitcount_1, 
      not_waitcount_0, rtlcn45, rtlcn46: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR143 ;
   GND <= '0' ;
   PWR <= '1' ;
   u_UARTS : UARTS port map ( CLK=>CLK, RST=>RST, Din(7)=>PWR, Din(6)=>PWR, 
      Din(5)=>PWR, Din(4)=>PWR, Din(3)=>sdout_3, Din(2)=>GND, Din(1)=>GND, 
      Din(0)=>GND, LD=>LD_SDOUT, Rx=>RawRx, Baud=>PWR, Dout(7)=>SDin(7), 
      Dout(6)=>SDin(6), Dout(5)=>SDin(5), Dout(4)=>SDin(4), Dout(3)=>SDin(3), 
      Dout(2)=>SDin(2), Dout(1)=>SDin(1), Dout(0)=>SDin(0), Tx=>TXFLEX, 
      TxBusy=>DANGLING(0), RxErr=>RxErr, RxRDY=>RxRDY);
   rtlc7n162 <= RST OR rtlc7n106 ;
   rtlc7n81 <= o_pixavail_EXMPLR143 OR ack ;
   not_RxErr <= NOT RxErr ;
   not_o_pixavail <= NOT o_pixavail_EXMPLR143 ;
   not_rtlc7n106 <= NOT rtlc7n106 ;
   not_State <= NOT State ;
   rtlcn1 <= not_State AND dsend ;
   rtlcn20 <= rtlc7n106 AND rtlc7n81 ;
   not_rtlc7n81 <= NOT rtlc7n81 ;
   rtlcn22 <= not_rtlc7n81 AND RxErr ;
   rtlcn11 <= rtlcn20 OR rtlcn22 ;
   rtlc7n134 <= not_rtlc7n106 when rtlc7n81 = '1' else not_RxErr ;
   rtlcn0 <= RxRDY OR o_pixavail_EXMPLR143 ;
   rtlc10n62 <= dsend OR State ;
   not_dsend <= NOT dsend ;
   not_rtlcn29 <= NOT rtlcn29 ;
   not_rtlcn30 <= NOT rtlcn30 ;
   rtlc10n49 <= not_dsend OR State ;
   not_RST <= NOT RST ;
   RawRx <= RXFLEX AND not_RST ;
   datain(0) <= RData(0) AND o_pixavail_EXMPLR143 ;
   datain(1) <= RData(1) AND o_pixavail_EXMPLR143 ;
   datain(2) <= RData(2) AND o_pixavail_EXMPLR143 ;
   datain(3) <= RData(3) AND o_pixavail_EXMPLR143 ;
   datain(4) <= RData(4) AND o_pixavail_EXMPLR143 ;
   datain(5) <= RData(5) AND o_pixavail_EXMPLR143 ;
   datain(6) <= RData(6) AND o_pixavail_EXMPLR143 ;
   datain(7) <= RData(7) AND o_pixavail_EXMPLR143 ;
   rtlcn28 <= RST OR rtlc7n81 ;
   rtlcn29 <= RST OR rtlc7n134 ;
   rtlcn30 <= RST OR rtlc10n49 ;
   modgen_counter_waitcount : counter_up_sclear_clock_clk_en_0_16
       port map ( clock=>CLK, q(15)=>waitcount(15), q(14)=>waitcount(14), 
      q(13)=>waitcount(13), q(12)=>waitcount(12), q(11)=>waitcount(11), 
      q(10)=>waitcount(10), q(9)=>waitcount(9), q(8)=>waitcount(8), q(7)=>
      waitcount(7), q(6)=>waitcount(6), q(5)=>waitcount(5), q(4)=>
      waitcount(4), q(3)=>waitcount(3), q(2)=>waitcount(2), q(1)=>
      waitcount(1), q(0)=>waitcount(0), clk_en=>rtlcn28, aclear=>GND, sload
      =>GND, data(15)=>DANGLING(1), data(14)=>DANGLING(2), data(13)=>
      DANGLING(3), data(12)=>DANGLING(4), data(11)=>DANGLING(5), data(10)=>
      DANGLING(6), data(9)=>DANGLING(7), data(8)=>DANGLING(8), data(7)=>
      DANGLING(9), data(6)=>DANGLING(10), data(5)=>DANGLING(11), data(4)=>
      DANGLING(12), data(3)=>DANGLING(13), data(2)=>DANGLING(14), data(1)=>
      DANGLING(15), data(0)=>DANGLING(16), aset=>GND, sclear=>rtlc7n162, 
      updn=>PWR, cnt_en=>PWR);
   not_waitcount_15 <= NOT waitcount(15) ;
   not_waitcount_14 <= NOT waitcount(14) ;
   not_waitcount_13 <= NOT waitcount(13) ;
   not_waitcount_12 <= NOT waitcount(12) ;
   not_waitcount_11 <= NOT waitcount(11) ;
   not_waitcount_10 <= NOT waitcount(10) ;
   not_waitcount_9 <= NOT waitcount(9) ;
   not_waitcount_8 <= NOT waitcount(8) ;
   not_waitcount_7 <= NOT waitcount(7) ;
   not_waitcount_4 <= NOT waitcount(4) ;
   not_waitcount_3 <= NOT waitcount(3) ;
   not_waitcount_1 <= NOT waitcount(1) ;
   not_waitcount_0 <= NOT waitcount(0) ;
   rtlc_176_and_13 : and_16u_16u port map ( a(15)=>not_waitcount_15, a(14)=>
      not_waitcount_14, a(13)=>not_waitcount_13, a(12)=>not_waitcount_12, 
      a(11)=>not_waitcount_11, a(10)=>not_waitcount_10, a(9)=>
      not_waitcount_9, a(8)=>not_waitcount_8, a(7)=>not_waitcount_7, a(6)=>
      waitcount(6), a(5)=>waitcount(5), a(4)=>not_waitcount_4, a(3)=>
      not_waitcount_3, a(2)=>waitcount(2), a(1)=>not_waitcount_1, a(0)=>
      not_waitcount_0, d=>rtlc7n106);
   rtlcn45 <= not_rtlc7n106 AND rtlc7n81 ;
   rtlcn46 <= not_o_pixavail AND rtlcn0 ;
   DFFPCE (rtlc7n81,GND,GND,not_rtlcn29,CLK,mdata_3) ;
   DFFRSE (rtlcn11,GND,RST,PWR,CLK,dsend) ;
   DFFPCE (mdata_3,GND,GND,not_rtlcn30,CLK,sdout_3) ;
   DFFPCE (SDin(7),GND,RST,RxRDY,CLK,RData(7)) ;
   DFFPCE (SDin(6),GND,RST,RxRDY,CLK,RData(6)) ;
   DFFPCE (SDin(5),GND,RST,RxRDY,CLK,RData(5)) ;
   DFFPCE (SDin(4),GND,RST,RxRDY,CLK,RData(4)) ;
   DFFPCE (SDin(3),GND,RST,RxRDY,CLK,RData(3)) ;
   DFFPCE (SDin(2),GND,RST,RxRDY,CLK,RData(2)) ;
   DFFPCE (SDin(1),GND,RST,RxRDY,CLK,RData(1)) ;
   DFFPCE (SDin(0),GND,RST,RxRDY,CLK,RData(0)) ;
   DFFPCE (not_State,GND,RST,rtlc10n62,CLK,LD_SDOUT) ;
   DFFPC (rtlcn1,GND,RST,CLK,State) ;
   DFFRSE (rtlcn45,GND,RST,PWR,CLK,ack) ;
   DFFPC (rtlcn46,GND,RST,CLK,o_pixavail_EXMPLR143) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_aclear_clock_clk_en_0_8 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_aclear_clock_clk_en_0_8 ;

architecture INTERFACE of counter_up_cnt_en_sclear_aclear_clock_clk_en_0_8
    is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx21, nx24, nx27, nx28, nx29, nx30, nx31, nx32, nx33, nx34, 
      nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, nx46, 
      nx47, nx48, nx49, nx50, PWR, NOT_nx20: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(7) <= nx28 ;
   q(6) <= nx30 ;
   q(5) <= nx32 ;
   q(4) <= nx34 ;
   q(3) <= nx36 ;
   q(2) <= nx38 ;
   q(1) <= nx40 ;
   q(0) <= nx42 ;
   GND <= '0' ;
   nx21 <= cnt_en OR sclear ;
   nx24 <= nx21 AND clk_en ;
   DFFPCE (nx27,GND,aclear,nx24,clock,nx28) ;
   DFFPCE (nx29,GND,aclear,nx24,clock,nx30) ;
   DFFPCE (nx31,GND,aclear,nx24,clock,nx32) ;
   DFFPCE (nx33,GND,aclear,nx24,clock,nx34) ;
   DFFPCE (nx35,GND,aclear,nx24,clock,nx36) ;
   DFFPCE (nx37,GND,aclear,nx24,clock,nx38) ;
   DFFPCE (nx39,GND,aclear,nx24,clock,nx40) ;
   DFFPCE (nx41,GND,aclear,nx24,clock,nx42) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx28, a(6)=>nx30, a(5)=>
      nx32, a(4)=>nx34, a(3)=>nx36, a(2)=>nx38, a(1)=>nx40, a(0)=>nx42, d(7)
      =>nx43, d(6)=>nx44, d(5)=>nx45, d(4)=>nx46, d(3)=>nx47, d(2)=>nx48, 
      d(1)=>nx49, d(0)=>nx50, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx20 <= NOT sclear ;
   nx27 <= nx43 AND NOT_nx20 ;
   nx29 <= nx44 AND NOT_nx20 ;
   nx31 <= nx45 AND NOT_nx20 ;
   nx33 <= nx46 AND NOT_nx20 ;
   nx35 <= nx47 AND NOT_nx20 ;
   nx37 <= nx48 AND NOT_nx20 ;
   nx39 <= nx49 AND NOT_nx20 ;
   nx41 <= nx50 AND NOT_nx20 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_aclear_clock_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_aclear_clock_0_4 ;

architecture INTERFACE_unfold_1 of counter_up_cnt_en_aclear_clock_0_4 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,cnt_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,cnt_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,cnt_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,cnt_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx13, d(2)=>nx15, d(1)=>nx17, d(0)=>nx19, cout
      =>DANGLING(0));
   PWR <= '1' ;
end INTERFACE_unfold_1 ;


architecture INTERFACE of counter_up_cnt_en_aclear_clock_0_4 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx14 ;
   q(2) <= nx16 ;
   q(1) <= nx18 ;
   q(0) <= nx20 ;
   GND <= '0' ;
   DFFPCE (nx13,GND,aclear,cnt_en,clock,nx14) ;
   DFFPCE (nx15,GND,aclear,cnt_en,clock,nx16) ;
   DFFPCE (nx17,GND,aclear,cnt_en,clock,nx18) ;
   DFFPCE (nx19,GND,aclear,cnt_en,clock,nx20) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx14, a(2)=>nx16, a(1)=>
      nx18, a(0)=>nx20, d(3)=>nx13, d(2)=>nx15, d(1)=>nx17, d(0)=>nx19, cout
      =>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_lab3_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_new_0_lab3_main ;

architecture INTERFACE of ram_new_0_lab3_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_4_16_F_F_F_F_F_F_F_F
      generic (ram_type : integer := 1) ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (3 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx27, nx29, dup_0_rtlcs27, dup_0_rtlcs26, dup_0_rtlcs25, 
      dup_0_rtlcs24, dup_0_rtlcs23, dup_0_rtlcs22, dup_0_rtlcs21, 
      dup_0_rtlcs20, nx31, nx33: std_logic ;

begin
   nx27 <= '0' ;
   nx29 <= '1' ;
   DFFPC (dup_0_rtlcs27,nx27,nx27,rd_clk1,rd_data1(7)) ;
   DFFPC (dup_0_rtlcs26,nx27,nx27,rd_clk1,rd_data1(6)) ;
   DFFPC (dup_0_rtlcs25,nx27,nx27,rd_clk1,rd_data1(5)) ;
   DFFPC (dup_0_rtlcs24,nx27,nx27,rd_clk1,rd_data1(4)) ;
   DFFPC (dup_0_rtlcs23,nx27,nx27,rd_clk1,rd_data1(3)) ;
   DFFPC (dup_0_rtlcs22,nx27,nx27,rd_clk1,rd_data1(2)) ;
   DFFPC (dup_0_rtlcs21,nx27,nx27,rd_clk1,rd_data1(1)) ;
   DFFPC (dup_0_rtlcs20,nx27,nx27,rd_clk1,rd_data1(0)) ;
   mem : clocked_ram_8_4_16_F_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx31, address(3)=>addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), 
      address(0)=>addr1(0), data(7)=>wr_data1(7), data(6)=>wr_data1(6), 
      data(5)=>wr_data1(5), data(4)=>wr_data1(4), data(3)=>wr_data1(3), 
      data(2)=>wr_data1(2), data(1)=>wr_data1(1), data(0)=>wr_data1(0), q(7)
      =>dup_0_rtlcs27, q(6)=>dup_0_rtlcs26, q(5)=>dup_0_rtlcs25, q(4)=>
      dup_0_rtlcs24, q(3)=>dup_0_rtlcs23, q(2)=>dup_0_rtlcs22, q(1)=>
      dup_0_rtlcs21, q(0)=>dup_0_rtlcs20);
   nx31 <= wr_ena1 AND ena1 ;
   nx33 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_1_lab3_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_new_1_lab3_main ;

architecture INTERFACE of ram_new_1_lab3_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_4_16_F_F_F_F_F_F_F_F
      generic (ram_type : integer := 1) ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (3 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx27, nx29, dup_0_rtlcs57, dup_0_rtlcs56, dup_0_rtlcs55, 
      dup_0_rtlcs54, dup_0_rtlcs53, dup_0_rtlcs52, dup_0_rtlcs51, 
      dup_0_rtlcs50, nx31, nx33: std_logic ;

begin
   nx27 <= '0' ;
   nx29 <= '1' ;
   DFFPC (dup_0_rtlcs57,nx27,nx27,rd_clk1,rd_data1(7)) ;
   DFFPC (dup_0_rtlcs56,nx27,nx27,rd_clk1,rd_data1(6)) ;
   DFFPC (dup_0_rtlcs55,nx27,nx27,rd_clk1,rd_data1(5)) ;
   DFFPC (dup_0_rtlcs54,nx27,nx27,rd_clk1,rd_data1(4)) ;
   DFFPC (dup_0_rtlcs53,nx27,nx27,rd_clk1,rd_data1(3)) ;
   DFFPC (dup_0_rtlcs52,nx27,nx27,rd_clk1,rd_data1(2)) ;
   DFFPC (dup_0_rtlcs51,nx27,nx27,rd_clk1,rd_data1(1)) ;
   DFFPC (dup_0_rtlcs50,nx27,nx27,rd_clk1,rd_data1(0)) ;
   mem_0 : clocked_ram_8_4_16_F_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx31, address(3)=>addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), 
      address(0)=>addr1(0), data(7)=>wr_data1(7), data(6)=>wr_data1(6), 
      data(5)=>wr_data1(5), data(4)=>wr_data1(4), data(3)=>wr_data1(3), 
      data(2)=>wr_data1(2), data(1)=>wr_data1(1), data(0)=>wr_data1(0), q(7)
      =>dup_0_rtlcs57, q(6)=>dup_0_rtlcs56, q(5)=>dup_0_rtlcs55, q(4)=>
      dup_0_rtlcs54, q(3)=>dup_0_rtlcs53, q(2)=>dup_0_rtlcs52, q(1)=>
      dup_0_rtlcs51, q(0)=>dup_0_rtlcs50);
   nx31 <= wr_ena1 AND ena1 ;
   nx33 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_2_lab3_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_new_2_lab3_main ;

architecture INTERFACE of ram_new_2_lab3_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_4_16_F_F_F_F_F_F_F_F
      generic (ram_type : integer := 1) ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (3 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx27, nx29, dup_0_rtlcs87, dup_0_rtlcs86, dup_0_rtlcs85, 
      dup_0_rtlcs84, dup_0_rtlcs83, dup_0_rtlcs82, dup_0_rtlcs81, 
      dup_0_rtlcs80, nx31, nx33: std_logic ;

begin
   nx27 <= '0' ;
   nx29 <= '1' ;
   DFFPC (dup_0_rtlcs87,nx27,nx27,rd_clk1,rd_data1(7)) ;
   DFFPC (dup_0_rtlcs86,nx27,nx27,rd_clk1,rd_data1(6)) ;
   DFFPC (dup_0_rtlcs85,nx27,nx27,rd_clk1,rd_data1(5)) ;
   DFFPC (dup_0_rtlcs84,nx27,nx27,rd_clk1,rd_data1(4)) ;
   DFFPC (dup_0_rtlcs83,nx27,nx27,rd_clk1,rd_data1(3)) ;
   DFFPC (dup_0_rtlcs82,nx27,nx27,rd_clk1,rd_data1(2)) ;
   DFFPC (dup_0_rtlcs81,nx27,nx27,rd_clk1,rd_data1(1)) ;
   DFFPC (dup_0_rtlcs80,nx27,nx27,rd_clk1,rd_data1(0)) ;
   mem_1 : clocked_ram_8_4_16_F_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx31, address(3)=>addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), 
      address(0)=>addr1(0), data(7)=>wr_data1(7), data(6)=>wr_data1(6), 
      data(5)=>wr_data1(5), data(4)=>wr_data1(4), data(3)=>wr_data1(3), 
      data(2)=>wr_data1(2), data(1)=>wr_data1(1), data(0)=>wr_data1(0), q(7)
      =>dup_0_rtlcs87, q(6)=>dup_0_rtlcs86, q(5)=>dup_0_rtlcs85, q(4)=>
      dup_0_rtlcs84, q(3)=>dup_0_rtlcs83, q(2)=>dup_0_rtlcs82, q(1)=>
      dup_0_rtlcs81, q(0)=>dup_0_rtlcs80);
   nx31 <= wr_ena1 AND ena1 ;
   nx33 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity lab3 is 
   port (
      i_clock : IN std_logic ;
      i_valid : IN std_logic ;
      i_input : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      o_output : OUT std_logic_vector (7 DOWNTO 0)) ;
end lab3 ;

architecture main of lab3 is 
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component addsub_9u_9u_9u_0
      port (
         mode : IN std_logic ;
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_aclear_clock_clk_en_0_8
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_cnt_en_aclear_clock_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component ram_new_0_lab3_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_new_1_lab3_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_new_2_lab3_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   for modgen_counter_y_pos : counter_up_cnt_en_aclear_clock_0_4 use entity 
   work.counter_up_cnt_en_aclear_clock_0_4(INTERFACE_unfold_1);
   for modgen_counter_x_pos : counter_up_cnt_en_aclear_clock_0_4 use entity 
   work.counter_up_cnt_en_aclear_clock_0_4(INTERFACE);
   signal x_pos: std_logic_vector (3 DOWNTO 0) ;
   
   signal y_pos: std_logic_vector (3 DOWNTO 0) ;
   
   signal i: std_logic_vector (2 DOWNTO 0) ;
   
   signal calc_res_9, GND, calc_res_7, calc_res_6, calc_res_5, calc_res_4, 
      calc_res_3, calc_res_2, calc_res_1, calc_res_0, end_of_input, 
      new_number_set: std_logic ;
   
   signal mem_1_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_2_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_3_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, rtlc4n0_4n1s3_9, rtlc4n0_4n1s3_7, rtlc4n0_4n1s3_6, 
      rtlc4n0_4n1s3_5, rtlc4n0_4n1s3_4, rtlc4n0_4n1s3_3, rtlc4n0_4n1s3_2, 
      rtlc4n0_4n1s3_1, rtlc4n0_4n1s3_0: std_logic ;
   
   signal rtlc4n0_4n1s2: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc4n0_4n1s5_9, rtlc4n0_4n1s5_7, rtlc4n0_4n1s5_6, rtlc4n0_4n1s5_5, 
      rtlc4n0_4n1s5_4, rtlc4n0_4n1s5_3, rtlc4n0_4n1s5_2, rtlc4n0_4n1s5_1, 
      rtlc4n0_4n1s5_0, rtlc4n0_4n1s7_9, rtlc4n0_4n1s7_7, rtlc4n0_4n1s7_6, 
      rtlc4n0_4n1s7_5, rtlc4n0_4n1s7_4, rtlc4n0_4n1s7_3, rtlc4n0_4n1s7_2, 
      rtlc4n0_4n1s7_1, rtlc4n0_4n1s7_0, not_rtlc4n172, rtlc4n172, 
      not_rtlcn396, rtlc4n493, not_calc_res_9, rtlc7n199, not_i_valid, 
      not_new_number_set, not_rtlc7n199, rtlc7_X_0_n382, rtlc7n383, 
      rtlc7n393, rtlc7n394, rtlc7n395, not_rtlc7n383, rtlc7n503, rtlc7n504, 
      rtlc7n507, rtlc7n613, not_rtlcn0, rtlcn0, rtlcn34, rtlcn52, rtlcn80, 
      rtlcn121, rtlcs0, rtlcs1, rtlcs2, rtlcs4, rtlcs5, not_i_2, not_i_1, 
      not_calc_res_7, not_calc_res_6, not_calc_res_5, not_calc_res_4, 
      not_calc_res_3, not_calc_res_2, not_calc_res_1, not_calc_res_0, 
      rtlcn326, rtlcn360, rtlcn396, rtlcs96: std_logic ;
   
   signal rtlc4n0_4n1s3f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc4n0_4n1s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal NOT_i_0, rtlc_261_and_37_nx0, rtlc_265_and_38_nx0, 
      rtlc_274_and_39_nx0: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   rtlc4_9_select_14 : select_4_4 port map ( a(3)=>rtlcs0, a(2)=>rtlcs1, 
      a(1)=>rtlcs2, a(0)=>not_rtlc4n172, b(3)=>not_rtlcn396, b(2)=>
      rtlc4n0_4n1s5_9, b(1)=>rtlc4n0_4n1s7_9, b(0)=>GND, d=>rtlcn52);
   rtlc4_44_or_15 : or_3u_3u port map ( a(2)=>rtlcs0, a(1)=>rtlcs1, a(0)=>
      rtlcs2, d=>rtlc4n172);
   not_rtlc4n172 <= NOT rtlc4n172 ;
   rtlc4n0_4n1s3_9 <= NOT rtlcs96 ;
   not_rtlcn396 <= NOT rtlcn396 ;
   NOT_i_0 <= NOT i(0) ;
   rtlc4n0_addsub9_4i1 : addsub_9u_9u_9u_0 port map ( mode=>NOT_i_0, cin=>
      i(0), a(8)=>GND, a(7)=>rtlc4n0_4n1s3f1(7), a(6)=>rtlc4n0_4n1s3f1(6), 
      a(5)=>rtlc4n0_4n1s3f1(5), a(4)=>rtlc4n0_4n1s3f1(4), a(3)=>
      rtlc4n0_4n1s3f1(3), a(2)=>rtlc4n0_4n1s3f1(2), a(1)=>rtlc4n0_4n1s3f1(1), 
      a(0)=>rtlc4n0_4n1s3f1(0), b(8)=>GND, b(7)=>rtlc4n0_4n1s3f2(7), b(6)=>
      rtlc4n0_4n1s3f2(6), b(5)=>rtlc4n0_4n1s3f2(5), b(4)=>rtlc4n0_4n1s3f2(4), 
      b(3)=>rtlc4n0_4n1s3f2(3), b(2)=>rtlc4n0_4n1s3f2(2), b(1)=>
      rtlc4n0_4n1s3f2(1), b(0)=>rtlc4n0_4n1s3f2(0), d(8)=>rtlc4n493, d(7)=>
      rtlc4n0_4n1s3_7, d(6)=>rtlc4n0_4n1s3_6, d(5)=>rtlc4n0_4n1s3_5, d(4)=>
      rtlc4n0_4n1s3_4, d(3)=>rtlc4n0_4n1s3_3, d(2)=>rtlc4n0_4n1s3_2, d(1)=>
      rtlc4n0_4n1s3_1, d(0)=>rtlc4n0_4n1s3_0, cout=>DANGLING(0));
   rtlc4n0_select_4i9Bus6_7 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_7, b(1)=>mem_2_q(7), b(0)=>
      rtlc4n0_4n1s5_7, d=>rtlc4n0_4n1s3f1(7));
   rtlc4n0_select_4i9Bus6_6 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_6, b(1)=>mem_2_q(6), b(0)=>
      rtlc4n0_4n1s5_6, d=>rtlc4n0_4n1s3f1(6));
   rtlc4n0_select_4i9Bus6_5 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_5, b(1)=>mem_2_q(5), b(0)=>
      rtlc4n0_4n1s5_5, d=>rtlc4n0_4n1s3f1(5));
   rtlc4n0_select_4i9Bus6_4 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_4, b(1)=>mem_2_q(4), b(0)=>
      rtlc4n0_4n1s5_4, d=>rtlc4n0_4n1s3f1(4));
   rtlc4n0_select_4i9Bus6_3 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_3, b(1)=>mem_2_q(3), b(0)=>
      rtlc4n0_4n1s5_3, d=>rtlc4n0_4n1s3f1(3));
   rtlc4n0_select_4i9Bus6_2 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_2, b(1)=>mem_2_q(2), b(0)=>
      rtlc4n0_4n1s5_2, d=>rtlc4n0_4n1s3f1(2));
   rtlc4n0_select_4i9Bus6_1 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_1, b(1)=>mem_2_q(1), b(0)=>
      rtlc4n0_4n1s5_1, d=>rtlc4n0_4n1s3f1(1));
   rtlc4n0_select_4i9Bus6_0 : select_3_3 port map ( a(2)=>i(2), a(1)=>i(0), 
      a(0)=>i(1), b(2)=>rtlc4n0_4n1s7_0, b(1)=>mem_2_q(0), b(0)=>
      rtlc4n0_4n1s5_0, d=>rtlc4n0_4n1s3f1(0));
   rtlc7_86_and_25 : and_3u_3u port map ( a(2)=>not_new_number_set, a(1)=>
      not_rtlc7n199, a(0)=>rtlcn0, d=>rtlc7_X_0_n382);
   rtlc7n383 <= not_i_valid OR rtlc7_X_0_n382 ;
   not_rtlc7n383 <= NOT rtlc7n383 ;
   not_rtlc7n199 <= NOT rtlc7n199 ;
   rtlc7n394 <= not_rtlc7n199 AND new_number_set ;
   rtlc7n393 <= new_number_set AND not_rtlcn0 ;
   rtlc7n395 <= rtlc7n393 OR rtlc7n394 ;
   rtlc7n199 <= not_calc_res_9 OR rtlcs5 ;
   not_calc_res_9 <= NOT calc_res_9 ;
   rtlc7n613 <= y_pos(3) OR y_pos(2) ;
   not_rtlcn0 <= NOT rtlcn0 ;
   calc_res_select_0Bus2_0 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(0), b(1)=>
      rtlc4n0_4n1s3_0, b(0)=>GND, d=>calc_res_0);
   calc_res_select_0Bus2_1 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(1), b(1)=>
      rtlc4n0_4n1s3_1, b(0)=>GND, d=>calc_res_1);
   calc_res_select_0Bus2_2 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(2), b(1)=>
      rtlc4n0_4n1s3_2, b(0)=>GND, d=>calc_res_2);
   calc_res_select_0Bus2_3 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(3), b(1)=>
      rtlc4n0_4n1s3_3, b(0)=>GND, d=>calc_res_3);
   calc_res_select_0Bus2_4 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(4), b(1)=>
      rtlc4n0_4n1s3_4, b(0)=>GND, d=>calc_res_4);
   calc_res_select_0Bus2_5 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(5), b(1)=>
      rtlc4n0_4n1s3_5, b(0)=>GND, d=>calc_res_5);
   calc_res_select_0Bus2_6 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(6), b(1)=>
      rtlc4n0_4n1s3_6, b(0)=>GND, d=>calc_res_6);
   calc_res_select_0Bus2_7 : select_3_3 port map ( a(2)=>rtlcs0, a(1)=>
      rtlcn34, a(0)=>not_rtlc4n172, b(2)=>rtlc4n0_4n1s2(7), b(1)=>
      rtlc4n0_4n1s3_7, b(0)=>GND, d=>calc_res_7);
   calc_res_9 <= rtlc4n0_4n1s3_9 AND rtlcn52 ;
   rtlc4n0_4n1s3f2(7) <= i_input(7) when rtlcn80 = '1' else mem_3_q(7) ;
   rtlc4n0_4n1s3f2(6) <= i_input(6) when rtlcn80 = '1' else mem_3_q(6) ;
   rtlc4n0_4n1s3f2(5) <= i_input(5) when rtlcn80 = '1' else mem_3_q(5) ;
   rtlc4n0_4n1s3f2(4) <= i_input(4) when rtlcn80 = '1' else mem_3_q(4) ;
   rtlc4n0_4n1s3f2(3) <= i_input(3) when rtlcn80 = '1' else mem_3_q(3) ;
   rtlc4n0_4n1s3f2(2) <= i_input(2) when rtlcn80 = '1' else mem_3_q(2) ;
   rtlc4n0_4n1s3f2(1) <= i_input(1) when rtlcn80 = '1' else mem_3_q(1) ;
   rtlc4n0_4n1s3f2(0) <= i_input(0) when rtlcn80 = '1' else mem_3_q(0) ;
   rtlc7n507 <= i_valid AND rtlcs4 ;
   not_i_valid <= NOT i_valid ;
   rtlc7n503 <= i_valid AND new_number_set ;
   not_new_number_set <= NOT new_number_set ;
   rtlc_254_and_35 : and_4u_4u port map ( a(3)=>x_pos(3), a(2)=>x_pos(2), 
      a(1)=>x_pos(1), a(0)=>x_pos(0), d=>rtlcs4);
   rtlcn121 <= end_of_input OR i_reset ;
   not_i_2 <= NOT i(2) ;
   not_i_1 <= NOT i(1) ;
   rtlcn80 <= i(2) OR i(1) ;
   rtlcn34 <= rtlcs1 OR rtlcs2 ;
   not_calc_res_7 <= NOT calc_res_7 ;
   not_calc_res_6 <= NOT calc_res_6 ;
   not_calc_res_5 <= NOT calc_res_5 ;
   not_calc_res_4 <= NOT calc_res_4 ;
   not_calc_res_3 <= NOT calc_res_3 ;
   not_calc_res_2 <= NOT calc_res_2 ;
   not_calc_res_1 <= NOT calc_res_1 ;
   not_calc_res_0 <= NOT calc_res_0 ;
   rtlc_293_and_40 : and_8u_8u port map ( a(7)=>not_calc_res_7, a(6)=>
      not_calc_res_6, a(5)=>not_calc_res_5, a(4)=>not_calc_res_4, a(3)=>
      not_calc_res_3, a(2)=>not_calc_res_2, a(1)=>not_calc_res_1, a(0)=>
      not_calc_res_0, d=>rtlcs5);
   rtlcn0 <= rtlc7n613 OR y_pos(1) ;
   modgen_counter_o_output : 
      counter_up_cnt_en_sclear_aclear_clock_clk_en_0_8 port map ( clock=>
      i_clock, q(7)=>o_output(7), q(6)=>o_output(6), q(5)=>o_output(5), q(4)
      =>o_output(4), q(3)=>o_output(3), q(2)=>o_output(2), q(1)=>o_output(1), 
      q(0)=>o_output(0), clk_en=>not_rtlc7n383, aclear=>i_reset, sload=>GND, 
      data(7)=>DANGLING(1), data(6)=>DANGLING(2), data(5)=>DANGLING(3), 
      data(4)=>DANGLING(4), data(3)=>DANGLING(5), data(2)=>DANGLING(6), 
      data(1)=>DANGLING(7), data(0)=>DANGLING(8), aset=>GND, sclear=>
      rtlc7n395, updn=>PWR, cnt_en=>rtlcn0);
   modgen_counter_y_pos : counter_up_cnt_en_aclear_clock_0_4 port map ( 
      clock=>i_clock, q(3)=>y_pos(3), q(2)=>y_pos(2), q(1)=>y_pos(1), q(0)=>
      y_pos(0), clk_en=>PWR, aclear=>rtlcn121, sload=>GND, data(3)=>DANGLING
      (9), data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(
      12), aset=>GND, sclear=>GND, updn=>PWR, cnt_en=>rtlc7n507);
   modgen_counter_x_pos : counter_up_cnt_en_aclear_clock_0_4 port map ( 
      clock=>i_clock, q(3)=>x_pos(3), q(2)=>x_pos(2), q(1)=>x_pos(1), q(0)=>
      x_pos(0), clk_en=>PWR, aclear=>rtlcn121, sload=>GND, data(3)=>DANGLING
      (13), data(2)=>DANGLING(14), data(1)=>DANGLING(15), data(0)=>DANGLING(
      16), aset=>GND, sclear=>GND, updn=>PWR, cnt_en=>i_valid);
   rtlc4n0_4n1s7_9 <= NOT rtlcn326 ;
   rtlc4n0_sub8_4i18 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>mem_1_q(7), 
      a(6)=>mem_1_q(6), a(5)=>mem_1_q(5), a(4)=>mem_1_q(4), a(3)=>mem_1_q(3), 
      a(2)=>mem_1_q(2), a(1)=>mem_1_q(1), a(0)=>mem_1_q(0), b(7)=>mem_2_q(7), 
      b(6)=>mem_2_q(6), b(5)=>mem_2_q(5), b(4)=>mem_2_q(4), b(3)=>mem_2_q(3), 
      b(2)=>mem_2_q(2), b(1)=>mem_2_q(1), b(0)=>mem_2_q(0), d(7)=>
      rtlc4n0_4n1s7_7, d(6)=>rtlc4n0_4n1s7_6, d(5)=>rtlc4n0_4n1s7_5, d(4)=>
      rtlc4n0_4n1s7_4, d(3)=>rtlc4n0_4n1s7_3, d(2)=>rtlc4n0_4n1s7_2, d(1)=>
      rtlc4n0_4n1s7_1, d(0)=>rtlc4n0_4n1s7_0, cout=>rtlcn326);
   rtlc4n0_4n1s5_9 <= NOT rtlcn360 ;
   rtlc4n0_sub8_4i19 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>mem_3_q(7), 
      a(6)=>mem_3_q(6), a(5)=>mem_3_q(5), a(4)=>mem_3_q(4), a(3)=>mem_3_q(3), 
      a(2)=>mem_3_q(2), a(1)=>mem_3_q(1), a(0)=>mem_3_q(0), b(7)=>mem_1_q(7), 
      b(6)=>mem_1_q(6), b(5)=>mem_1_q(5), b(4)=>mem_1_q(4), b(3)=>mem_1_q(3), 
      b(2)=>mem_1_q(2), b(1)=>mem_1_q(1), b(0)=>mem_1_q(0), d(7)=>
      rtlc4n0_4n1s5_7, d(6)=>rtlc4n0_4n1s5_6, d(5)=>rtlc4n0_4n1s5_5, d(4)=>
      rtlc4n0_4n1s5_4, d(3)=>rtlc4n0_4n1s5_3, d(2)=>rtlc4n0_4n1s5_2, d(1)=>
      rtlc4n0_4n1s5_1, d(0)=>rtlc4n0_4n1s5_0, cout=>rtlcn360);
   rtlc4n0_add8_4i20 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      rtlc4n0_4n1s3_7, a(6)=>rtlc4n0_4n1s3_6, a(5)=>rtlc4n0_4n1s3_5, a(4)=>
      rtlc4n0_4n1s3_4, a(3)=>rtlc4n0_4n1s3_3, a(2)=>rtlc4n0_4n1s3_2, a(1)=>
      rtlc4n0_4n1s3_1, a(0)=>rtlc4n0_4n1s3_0, b(7)=>i_input(7), b(6)=>
      i_input(6), b(5)=>i_input(5), b(4)=>i_input(4), b(3)=>i_input(3), b(2)
      =>i_input(2), b(1)=>i_input(1), b(0)=>i_input(0), d(7)=>
      rtlc4n0_4n1s2(7), d(6)=>rtlc4n0_4n1s2(6), d(5)=>rtlc4n0_4n1s2(5), d(4)
      =>rtlc4n0_4n1s2(4), d(3)=>rtlc4n0_4n1s2(3), d(2)=>rtlc4n0_4n1s2(2), 
      d(1)=>rtlc4n0_4n1s2(1), d(0)=>rtlc4n0_4n1s2(0), cout=>rtlcn396);
   rtlcs96 <= i(0) XOR rtlc4n493 ;
   DFFPCE (i(1),GND,rtlcn121,rtlc7n507,i_clock,i(2)) ;
   DFFPCE (i(0),GND,rtlcn121,rtlc7n507,i_clock,i(1)) ;
   DFFPCE (i(2),rtlcn121,GND,rtlc7n507,i_clock,i(0)) ;
   DFFPCE (PWR,GND,rtlcn121,rtlc7n504,i_clock,end_of_input) ;
   DFFPCE (GND,rtlcn121,GND,rtlc7n503,i_clock,new_number_set) ;
   rtlc_261_and_37_nx0 <= not_i_2 AND not_i_1 ;
   rtlcs0 <= rtlc_261_and_37_nx0 AND i(0) ;
   mem : ram_new_0_lab3_main port map ( wr_data1(7)=>i_input(7), wr_data1(6)
      =>i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>i_input(4), 
      wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), wr_data1(1)=>
      i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>mem_1_q(7), 
      rd_data1(6)=>mem_1_q(6), rd_data1(5)=>mem_1_q(5), rd_data1(4)=>
      mem_1_q(4), rd_data1(3)=>mem_1_q(3), rd_data1(2)=>mem_1_q(2), 
      rd_data1(1)=>mem_1_q(1), rd_data1(0)=>mem_1_q(0), addr1(3)=>x_pos(3), 
      addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>
      i_clock, rd_clk1=>i_clock, wr_ena1=>rtlcs0, rd_ena1=>PWR, ena1=>PWR, 
      rst1=>GND, regce1=>PWR);
   rtlc_265_and_38_nx0 <= not_i_2 AND i(1) ;
   rtlcs1 <= rtlc_265_and_38_nx0 AND NOT_i_0 ;
   mem_0 : ram_new_1_lab3_main port map ( wr_data1(7)=>i_input(7), 
      wr_data1(6)=>i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>
      i_input(4), wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), 
      wr_data1(1)=>i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>
      mem_2_q(7), rd_data1(6)=>mem_2_q(6), rd_data1(5)=>mem_2_q(5), 
      rd_data1(4)=>mem_2_q(4), rd_data1(3)=>mem_2_q(3), rd_data1(2)=>
      mem_2_q(2), rd_data1(1)=>mem_2_q(1), rd_data1(0)=>mem_2_q(0), addr1(3)
      =>x_pos(3), addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), 
      wr_clk1=>i_clock, rd_clk1=>i_clock, wr_ena1=>rtlcs1, rd_ena1=>PWR, 
      ena1=>PWR, rst1=>GND, regce1=>PWR);
   rtlc_274_and_39_nx0 <= i(2) AND not_i_1 ;
   rtlcs2 <= rtlc_274_and_39_nx0 AND NOT_i_0 ;
   mem_1 : ram_new_2_lab3_main port map ( wr_data1(7)=>i_input(7), 
      wr_data1(6)=>i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>
      i_input(4), wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), 
      wr_data1(1)=>i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>
      mem_3_q(7), rd_data1(6)=>mem_3_q(6), rd_data1(5)=>mem_3_q(5), 
      rd_data1(4)=>mem_3_q(4), rd_data1(3)=>mem_3_q(3), rd_data1(2)=>
      mem_3_q(2), rd_data1(1)=>mem_3_q(1), rd_data1(0)=>mem_3_q(0), addr1(3)
      =>x_pos(3), addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), 
      wr_clk1=>i_clock, rd_clk1=>i_clock, wr_ena1=>rtlcs2, rd_ena1=>PWR, 
      ena1=>PWR, rst1=>GND, regce1=>PWR);
   modgen_and_0 : and_6u_6u port map ( a(5)=>i_valid, a(4)=>rtlcs4, a(3)=>
      y_pos(3), a(2)=>y_pos(2), a(1)=>y_pos(1), a(0)=>y_pos(0), d=>rtlc7n504
   );
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity top_lab3 is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      ctsflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0)) ;
end top_lab3 ;

architecture main of top_lab3 is 
   component uw_uart
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         RXFLEX : IN std_logic ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         TXFLEX : OUT std_logic ;
         o_pixavail : OUT std_logic) ;
   end component ;
   component lab3
      port (
         i_clock : IN std_logic ;
         i_valid : IN std_logic ;
         i_input : IN std_logic_vector (7 DOWNTO 0) ;
         i_reset : IN std_logic ;
         o_output : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal rst, pixavail: std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal result: std_logic_vector (7 DOWNTO 0) ;
   
   signal ctsflex_EXMPLR293, rtlc2n224, rtlc2n225, rtlc2n228, rtlc2n230, 
      rtlc2n232, rtlc2n233, rtlc2n236, rtlc2n143, rtlc2n144, rtlc2n147, 
      rtlc2n149, rtlc2n151, rtlc2n152, rtlc2n155, not_rtlc2n224, 
      not_rtlc2n225, not_rtlc2n233, not_rtlc2n143, not_rtlc2n144, 
      not_rtlc2n152, rtlcs0, rtlcs1, rtlcs2, rtlcs3, rtlcs4, rtlcs5, rtlcs8, 
      rtlcs9, rtlcs10, rtlcs11, rtlcs13, rtlcs15, rtlcs16, rtlcs17, rtlcs18, 
      rtlcs19, rtlcs20, rtlcs22, rtlcs23, rtlcs24, rtlcs25, rtlcs27, rtlcs29, 
      rtlcs31, rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, rtlcs37, rtlcs40, 
      rtlcs41, rtlcs42, rtlcs43, rtlcs45, rtlcs47, rtlcs48, rtlcs49, rtlcs50, 
      rtlcs51, rtlcs52, rtlcs54, rtlcs55, rtlcs56, rtlcs57, rtlcs59, rtlcs61, 
      rtlcs63, rtlcs64, rtlcs65, not_result_2, not_result_0, not_result_3, 
      not_result_1, not_result_6, not_result_4, not_result_7, not_result_5, 
      GND: std_logic ;

begin
   ctsflex <= ctsflex_EXMPLR293 ;
   o_sevenseg(15) <= ctsflex_EXMPLR293 ;
   ctsflex_EXMPLR293 <= '1' ;
   u_uw_uart : uw_uart port map ( CLK=>clk, RST=>rst, RXFLEX=>rxflex, 
      datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>pixel(5), 
      datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>pixel(2), 
      datain(1)=>pixel(1), datain(0)=>pixel(0), TXFLEX=>txflex, o_pixavail=>
      pixavail);
   u_lab3 : lab3 port map ( i_clock=>clk, i_valid=>pixavail, i_input(7)=>
      pixel(7), i_input(6)=>pixel(6), i_input(5)=>pixel(5), i_input(4)=>
      pixel(4), i_input(3)=>pixel(3), i_input(2)=>pixel(2), i_input(1)=>
      pixel(1), i_input(0)=>pixel(0), i_reset=>rst, o_output(7)=>result(7), 
      o_output(6)=>result(6), o_output(5)=>result(5), o_output(4)=>result(4), 
      o_output(3)=>result(3), o_output(2)=>result(2), o_output(1)=>result(1), 
      o_output(0)=>result(0));
   rst <= NOT nrst ;
   rtlc2_100_or_44 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs5, a(1)=>
      rtlcs17, a(0)=>rtlcs24, d=>rtlc2n236);
   rtlc2_20_or_45 : or_4u_4u port map ( a(3)=>rtlcs34, a(2)=>rtlcs37, a(1)=>
      rtlcs49, a(0)=>rtlcs56, d=>rtlc2n155);
   rtlc_23_or_46 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs1, a(2)=>
      rtlcs3, a(1)=>rtlcs16, a(0)=>rtlcs31, d=>rtlc2n224);
   rtlc_29_or_47 : or_5u_5u port map ( a(4)=>rtlcs0, a(3)=>rtlcs8, a(2)=>
      rtlcs15, a(1)=>rtlcs16, a(0)=>rtlcs20, d=>rtlc2n225);
   rtlc_42_or_48 : or_3u_3u port map ( a(2)=>rtlcs16, a(1)=>rtlcs23, a(0)=>
      rtlcs25, d=>rtlc2n228);
   rtlc_51_or_49 : or_4u_4u port map ( a(3)=>rtlcs9, a(2)=>rtlcs17, a(1)=>
      rtlcs19, a(0)=>rtlcs23, d=>rtlc2n230);
   rtlc_60_or_50 : or_3u_3u port map ( a(2)=>rtlcs11, a(1)=>rtlcs13, a(0)=>
      rtlcs29, d=>rtlc2n232);
   rtlc_66_or_51 : or_5u_5u port map ( a(4)=>rtlcs4, a(3)=>rtlcs10, a(2)=>
      rtlcs18, a(1)=>rtlcs22, a(0)=>rtlcs27, d=>rtlc2n233);
   rtlc_85_or_52 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs33, a(2)=>
      rtlcs35, a(1)=>rtlcs48, a(0)=>rtlcs63, d=>rtlc2n143);
   rtlc_91_or_53 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs40, a(2)=>
      rtlcs47, a(1)=>rtlcs48, a(0)=>rtlcs52, d=>rtlc2n144);
   rtlc_104_or_54 : or_3u_3u port map ( a(2)=>rtlcs48, a(1)=>rtlcs55, a(0)=>
      rtlcs57, d=>rtlc2n147);
   rtlc_113_or_55 : or_4u_4u port map ( a(3)=>rtlcs41, a(2)=>rtlcs49, a(1)=>
      rtlcs51, a(0)=>rtlcs55, d=>rtlc2n149);
   rtlc_122_or_56 : or_3u_3u port map ( a(2)=>rtlcs43, a(1)=>rtlcs45, a(0)=>
      rtlcs61, d=>rtlc2n151);
   rtlc_128_or_57 : or_5u_5u port map ( a(4)=>rtlcs36, a(3)=>rtlcs42, a(2)=>
      rtlcs50, a(1)=>rtlcs54, a(0)=>rtlcs59, d=>rtlc2n152);
   not_rtlc2n224 <= NOT rtlc2n224 ;
   not_rtlc2n225 <= NOT rtlc2n225 ;
   not_rtlc2n233 <= NOT rtlc2n233 ;
   not_rtlc2n143 <= NOT rtlc2n143 ;
   not_rtlc2n144 <= NOT rtlc2n144 ;
   not_rtlc2n152 <= NOT rtlc2n152 ;
   rtlcs2 <= rtlcs3 AND rtlcs1 ;
   rtlcs5 <= result(2) AND rtlcs4 ;
   rtlcs4 <= not_result_1 AND rtlcs1 ;
   rtlcs9 <= rtlcs8 AND rtlcs10 ;
   rtlcs11 <= result(2) AND rtlcs8 ;
   rtlcs13 <= result(3) AND rtlcs15 ;
   rtlcs17 <= rtlcs15 AND rtlcs18 ;
   rtlcs18 <= not_result_3 AND rtlcs20 ;
   rtlcs24 <= rtlcs25 AND rtlcs23 ;
   rtlcs23 <= result(0) AND rtlcs22 ;
   rtlcs27 <= result(1) AND rtlcs25 ;
   rtlcs64 <= rtlcs10 AND not_result_3 ;
   rtlcs29 <= rtlcs64 AND rtlcs31 ;
   rtlcs34 <= rtlcs35 AND rtlcs33 ;
   rtlcs37 <= result(6) AND rtlcs36 ;
   rtlcs36 <= not_result_5 AND rtlcs33 ;
   rtlcs41 <= rtlcs40 AND rtlcs42 ;
   rtlcs43 <= result(6) AND rtlcs40 ;
   rtlcs45 <= result(7) AND rtlcs47 ;
   rtlcs49 <= rtlcs47 AND rtlcs50 ;
   rtlcs50 <= not_result_7 AND rtlcs52 ;
   rtlcs56 <= rtlcs57 AND rtlcs55 ;
   rtlcs55 <= result(4) AND rtlcs54 ;
   rtlcs59 <= result(5) AND rtlcs57 ;
   rtlcs65 <= rtlcs42 AND not_result_7 ;
   rtlcs61 <= rtlcs65 AND rtlcs63 ;
   not_result_2 <= NOT result(2) ;
   not_result_0 <= NOT result(0) ;
   not_result_3 <= NOT result(3) ;
   not_result_1 <= NOT result(1) ;
   rtlc_232_and_58 : and_3u_3u port map ( a(2)=>not_result_3, a(1)=>
      result(2), a(0)=>not_result_1, d=>rtlcs16);
   rtlc_248_and_59 : and_3u_3u port map ( a(2)=>result(2), a(1)=>result(1), 
      a(0)=>result(0), d=>rtlcs19);
   not_result_6 <= NOT result(6) ;
   not_result_4 <= NOT result(4) ;
   not_result_7 <= NOT result(7) ;
   not_result_5 <= NOT result(5) ;
   rtlc_271_and_60 : and_3u_3u port map ( a(2)=>not_result_7, a(1)=>
      result(6), a(0)=>not_result_5, d=>rtlcs48);
   rtlc_287_and_61 : and_3u_3u port map ( a(2)=>result(6), a(1)=>result(5), 
      a(0)=>result(4), d=>rtlcs51);
   rtlcs0 <= result(3) AND not_result_2 ;
   rtlcs1 <= result(3) AND result(0) ;
   rtlcs3 <= not_result_2 AND result(1) ;
   rtlcs31 <= result(1) AND not_result_0 ;
   rtlcs8 <= result(3) AND result(1) ;
   rtlcs15 <= result(2) AND not_result_0 ;
   rtlcs20 <= not_result_1 AND not_result_0 ;
   rtlcs22 <= not_result_2 AND not_result_1 ;
   rtlcs25 <= not_result_3 AND result(0) ;
   rtlcs10 <= not_result_2 AND not_result_0 ;
   rtlcs32 <= result(7) AND not_result_6 ;
   rtlcs33 <= result(7) AND result(4) ;
   rtlcs35 <= not_result_6 AND result(5) ;
   rtlcs63 <= result(5) AND not_result_4 ;
   rtlcs40 <= result(7) AND result(5) ;
   rtlcs47 <= result(6) AND not_result_4 ;
   rtlcs52 <= not_result_5 AND not_result_4 ;
   rtlcs54 <= not_result_6 AND not_result_5 ;
   rtlcs57 <= not_result_7 AND result(4) ;
   rtlcs42 <= not_result_6 AND not_result_4 ;
   DFFPC (rtlc2n155,GND,GND,clk,o_sevenseg(14)) ;
   GND <= '0' ;
   DFFPC (not_rtlc2n152,GND,GND,clk,o_sevenseg(13)) ;
   DFFPC (rtlc2n151,GND,GND,clk,o_sevenseg(12)) ;
   DFFPC (rtlc2n149,GND,GND,clk,o_sevenseg(11)) ;
   DFFPC (rtlc2n147,GND,GND,clk,o_sevenseg(10)) ;
   DFFPC (not_rtlc2n144,GND,GND,clk,o_sevenseg(9)) ;
   DFFPC (not_rtlc2n143,GND,GND,clk,o_sevenseg(8)) ;
   DFFPC (nrst,GND,GND,clk,o_sevenseg(7)) ;
   DFFPC (rtlc2n236,GND,GND,clk,o_sevenseg(6)) ;
   DFFPC (not_rtlc2n233,GND,GND,clk,o_sevenseg(5)) ;
   DFFPC (rtlc2n232,GND,GND,clk,o_sevenseg(4)) ;
   DFFPC (rtlc2n230,GND,GND,clk,o_sevenseg(3)) ;
   DFFPC (rtlc2n228,GND,GND,clk,o_sevenseg(2)) ;
   DFFPC (not_rtlc2n225,GND,GND,clk,o_sevenseg(1)) ;
   DFFPC (not_rtlc2n224,GND,GND,clk,o_sevenseg(0)) ;
end main ;

