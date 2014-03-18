
-- 
-- Definition of  lab3
-- 
--      02/15/14 13:31:58
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
   
   signal NOT_i_0, rtlc_261_and_23_nx0, rtlc_265_and_24_nx0, 
      rtlc_274_and_25_nx0: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   rtlc4_9_select_0 : select_4_4 port map ( a(3)=>rtlcs0, a(2)=>rtlcs1, a(1)
      =>rtlcs2, a(0)=>not_rtlc4n172, b(3)=>not_rtlcn396, b(2)=>
      rtlc4n0_4n1s5_9, b(1)=>rtlc4n0_4n1s7_9, b(0)=>GND, d=>rtlcn52);
   rtlc4_44_or_1 : or_3u_3u port map ( a(2)=>rtlcs0, a(1)=>rtlcs1, a(0)=>
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
   rtlc7_86_and_11 : and_3u_3u port map ( a(2)=>not_new_number_set, a(1)=>
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
   rtlc_254_and_21 : and_4u_4u port map ( a(3)=>x_pos(3), a(2)=>x_pos(2), 
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
   rtlc_293_and_26 : and_8u_8u port map ( a(7)=>not_calc_res_7, a(6)=>
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
   rtlc_261_and_23_nx0 <= not_i_2 AND not_i_1 ;
   rtlcs0 <= rtlc_261_and_23_nx0 AND i(0) ;
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
   rtlc_265_and_24_nx0 <= not_i_2 AND i(1) ;
   rtlcs1 <= rtlc_265_and_24_nx0 AND NOT_i_0 ;
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
   rtlc_274_and_25_nx0 <= i(2) AND not_i_1 ;
   rtlcs2 <= rtlc_274_and_25_nx0 AND NOT_i_0 ;
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

