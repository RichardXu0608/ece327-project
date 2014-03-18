//
// Verilog description for cell fir_top, 
// 02/01/14 15:22:12
//
// Precision RTL Synthesis, 2008a.47//


module fir_top ( clock_50, clock_27, key, sw, ledg, ledr, hex0, hex1, hex2, hex3, 
                 hex4, hex5, hex6, hex7, aud_xck, aud_bclk, aud_dacdat, 
                 aud_daclrck, aud_adclrck, i2c_sdat, i2c_sclk ) ;

    input clock_50 ;
    input clock_27 ;
    input [3:0]key ;
    input [17:0]sw ;
    output [8:0]ledg ;
    output [17:0]ledr ;
    output [6:0]hex0 ;
    output [6:0]hex1 ;
    output [6:0]hex2 ;
    output [6:0]hex3 ;
    output [6:0]hex4 ;
    output [6:0]hex5 ;
    output [6:0]hex6 ;
    output [6:0]hex7 ;
    output aud_xck ;
    inout aud_bclk ;
    output aud_dacdat ;
    output aud_daclrck ;
    output aud_adclrck ;
    inout i2c_sdat ;
    output i2c_sclk ;

    wire aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
         i2c_sclk_dup0, sine_data_11_, sine_data_10_, sine_data_9_, sine_data_8_, 
         sine_data_7_, sine_data_6_, sine_data_5_, sine_data_4_, sine_data_3_, 
         sine_data_2_, sine_data_1_, sine_data_0_, noise_data_15_, 
         noise_data_10_, noise_data_9_, noise_data_8_, noise_data_7_, 
         noise_data_6_, noise_data_5_, noise_data_4_;
    wire [15:0]low_pass_data;
    wire low_pass_input_12_, low_pass_input_10_, low_pass_input_9_, 
         low_pass_input_8_, low_pass_input_7_, low_pass_input_6_, 
         low_pass_input_5_, low_pass_input_4_, low_pass_input_3_, 
         low_pass_input_2_, low_pass_input_1_, low_pass_input_0_, 
         data_buffer_15_, data_buffer_10_, data_buffer_9_, data_buffer_8_, 
         data_buffer_7_, data_buffer_6_, data_buffer_5_, data_buffer_4_, 
         data_buffer_3_, data_buffer_2_, data_buffer_1_, data_buffer_0_;
    wire [15:0]audio_out;
    wire [3:0]bit_position;
    wire nx49625z1, nx49625z2, nx49625z3, nx49625z4;
    wire [8:0]u_sine_address;
    wire [8:0]u_sine_address_0n0r2;
    wire [9:0]u_noise_address;
    wire u_audio_dac_bck_div_2_, u_audio_dac_bck_div_1_, u_audio_dac_bck_div_0_;
    
    wire [8:0]u_audio_dac_lrck_1x_div;
    wire nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
         nx24999z9, nx24999z8, nx24999z1, nx38664z9, nx38664z6, nx38664z7, 
         nx38664z5, nx38664z3, nx38664z1, nx38664z2, nx4119z14, nx4119z15, 
         nx4119z12, nx4119z10, nx4119z11, nx4119z8, nx4119z5, nx4119z7, nx4119z3, 
         nx4119z1, nx17637z2, clock_27_int, key_int_0_, sw_int_17_, sw_int_16_, 
         sw_int_6_, sw_int_5_, sw_int_4_, sw_int_3_, sw_int_2_, sw_int_1_, 
         sw_int_0_;
    wire [6:0]hex4_dup0;
    wire [6:0]hex5_dup0;
    wire [6:0]hex6_dup0;
    wire [6:4]hex7_dup0;
    wire [11:0]display_freq;
    wire nx55607z1, NOT_bit_position_0_, u_audio_dac_not_reset_n, nx48238z1, 
         nx50205z2, nx15494z1, nx48820z1, nx49817z1, nx50814z1, nx32096z1, 
         nx30102z1, nx30102z2, nx31099z1, nx31099z2, nx50205z3, nx50205z4, 
         nx38664z4, nx38664z8, nx4119z2, nx4119z9, nx4119z13, nx10101z1, 
         nx17637z1, nx10101z2, nx4119z6, nx4119z4, nx55607z2, sdo_dup_340, 
         nx50205z1;
    wire [2056:0] xmplr_dummy ;




    fir u_low_pass (.clk (aud_adclrck_dup0), .i_data ({low_pass_input_12_,
        low_pass_input_12_,xmplr_dummy [0],xmplr_dummy [1],low_pass_input_12_,
        low_pass_input_10_,low_pass_input_9_,low_pass_input_8_,low_pass_input_7_
        ,low_pass_input_6_,low_pass_input_5_,low_pass_input_4_,low_pass_input_3_
        ,low_pass_input_2_,low_pass_input_1_,low_pass_input_0_}), .o_data ({
        low_pass_data[15],low_pass_data[14],low_pass_data[13],low_pass_data[12],
        low_pass_data[11],low_pass_data[10],low_pass_data[9],low_pass_data[8],
        low_pass_data[7],low_pass_data[6],low_pass_data[5],low_pass_data[4],
        low_pass_data[3],low_pass_data[2],low_pass_data[1],low_pass_data[0]})) ;
    i2c_av_config_notri u_i2c_av_config (.p_i2c_sclk (i2c_sclk_dup0), .p_clk (
                        clock_27_int), .p_sdo (sdo_dup_340)) ;
    add_9_0 u_sine_address_add9_0i1 (.a ({u_sine_address[8],u_sine_address[7],
            u_sine_address[6],u_sine_address[5],u_sine_address[4],
            u_sine_address[3],u_sine_address[2],u_sine_address[1],
            u_sine_address[0]}), .b ({xmplr_dummy [2],xmplr_dummy [3],sw_int_6_,
            sw_int_5_,sw_int_4_,sw_int_3_,sw_int_2_,sw_int_1_,sw_int_0_}), .d ({
            u_sine_address_0n0r2[8],u_sine_address_0n0r2[7],
            u_sine_address_0n0r2[6],u_sine_address_0n0r2[5],
            u_sine_address_0n0r2[4],u_sine_address_0n0r2[3],
            u_sine_address_0n0r2[2],u_sine_address_0n0r2[1],
            u_sine_address_0n0r2[0]})) ;
    modgen_counter_10_0 u_noise_modgen_counter_address (.clock (aud_adclrck_dup0
                        ), .q ({u_noise_address[9],u_noise_address[8],
                        u_noise_address[7],u_noise_address[6],u_noise_address[5]
                        ,u_noise_address[4],u_noise_address[3],
                        u_noise_address[2],u_noise_address[1],u_noise_address[0]
                        })) ;
    modgen_counter_9_0 u_audio_dac_modgen_counter_lrck_1x_div (.clock (
                       aud_xck_dup0), .q ({u_audio_dac_lrck_1x_div[8],
                       u_audio_dac_lrck_1x_div[7],u_audio_dac_lrck_1x_div[6],
                       u_audio_dac_lrck_1x_div[5],u_audio_dac_lrck_1x_div[4],
                       u_audio_dac_lrck_1x_div[3],u_audio_dac_lrck_1x_div[2],
                       u_audio_dac_lrck_1x_div[1],u_audio_dac_lrck_1x_div[0]}), 
                       .sclear (nx48238z1)) ;
    altpll u_audio_dac_p1_altpll (.clk ({xmplr_dummy [4],xmplr_dummy [5],
           xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],xmplr_dummy [9],
           xmplr_dummy [10],xmplr_dummy [11],aud_xck_dup0,xmplr_dummy [12]}), .areset (
           1'b0), .clkswitch (1'b0), .configupdate (1'b0), .fbin (1'b1), .inclk (
           {hex7_dup0[4],clock_27_int}), .pfdena (1'b1), .phasestep (1'b1), .phaseupdown (
           1'b1), .pllena (1'b1), .scanaclr (1'b0), .scanclk (1'b0), .scanclkena (
           1'b1), .scandata (1'b0), .scanread (1'b0), .scanwrite (1'b0)) ;
           
           defparam u_audio_dac_p1_altpll.CLK0_DIVIDE_BY = 15;
           
           defparam u_audio_dac_p1_altpll.CLK0_DUTY_CYCLE = 50;
           
           defparam u_audio_dac_p1_altpll.CLK0_MULTIPLY_BY = 14;
           
           defparam u_audio_dac_p1_altpll.CLK0_PHASE_SHIFT = "0";
           
           defparam u_audio_dac_p1_altpll.CLK1_DIVIDE_BY = 3;
           
           defparam u_audio_dac_p1_altpll.CLK1_DUTY_CYCLE = 50;
           
           defparam u_audio_dac_p1_altpll.CLK1_MULTIPLY_BY = 2;
           
           defparam u_audio_dac_p1_altpll.CLK1_PHASE_SHIFT = "0";
           
           defparam u_audio_dac_p1_altpll.COMPENSATE_CLOCK = "CLK0";
           
           defparam u_audio_dac_p1_altpll.INCLK0_INPUT_FREQUENCY = 37037;
           
           defparam u_audio_dac_p1_altpll.INTENDED_DEVICE_FAMILY = "Cyclone II";
           
           defparam u_audio_dac_p1_altpll.LPM_TYPE = "altpll";
           
           defparam u_audio_dac_p1_altpll.OPERATION_MODE = "NORMAL";
           
           defparam u_audio_dac_p1_altpll.PLL_TYPE = "FAST";
    altsyncram u_sine_modgen_rom_ix21__ix20462z58995 (.address_a ({
               u_sine_address_0n0r2[8],u_sine_address_0n0r2[7],
               u_sine_address_0n0r2[6],u_sine_address_0n0r2[5],
               u_sine_address_0n0r2[4],u_sine_address_0n0r2[3]}), .wren_a (
               hex7_dup0[4]), .clock0 (aud_adclrck_dup0), .clocken0 (
               hex7_dup0[6]), .q_a ({sine_data_11_,sine_data_10_,sine_data_9_,
               sine_data_8_,sine_data_7_,sine_data_6_,sine_data_5_,sine_data_4_,
               sine_data_3_,sine_data_2_,sine_data_1_,sine_data_0_})) ;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.lpm_type = "altsyncram";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.lpm_hint = "UNUSED";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.intended_device_family = "Stratix";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.maximum_depth = 0;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.init_file_layout = "UNUSED";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.init_file = "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.ram_block_type = "AUTO";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.byte_size = 8;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.operation_mode = "ROM";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.address_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.width_byteena_b = 1;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.byteena_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.wrcontrol_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.indata_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.byteena_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.indata_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.rdcontrol_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.outdata_aclr_b = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.outdata_reg_b = "UNREGISTERED";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.address_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.rdcontrol_reg_b = "CLOCK1";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.numwords_b = 64;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.widthad_b = 6;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.width_b = 12;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.width_byteena_a = 1;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.byteena_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.wrcontrol_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.indata_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.outdata_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.address_aclr_a = "NONE";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.outdata_reg_a = "UNREGISTERED";
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.numwords_a = 64;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.widthad_a = 6;
               
               defparam u_sine_modgen_rom_ix21__ix20462z58995.width_a = 12;
    altsyncram u_noise_modgen_rom_ix24__ix20462z34211 (.address_a ({
               u_noise_address[9],u_noise_address[8],u_noise_address[7],
               u_noise_address[6],u_noise_address[5],u_noise_address[4],
               u_noise_address[3],u_noise_address[2],u_noise_address[1],
               u_noise_address[0]}), .wren_a (hex7_dup0[4]), .clock0 (
               aud_adclrck_dup0), .clocken0 (hex7_dup0[6]), .q_a ({
               noise_data_15_,noise_data_10_,noise_data_9_,noise_data_8_,
               noise_data_7_,noise_data_6_,noise_data_5_,noise_data_4_})) ;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.lpm_type = "altsyncram";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.lpm_hint = "UNUSED";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.intended_device_family = "Stratix";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.maximum_depth = 0;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.init_file_layout = "UNUSED";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.init_file = "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.ram_block_type = "AUTO";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.read_during_write_mode_mixed_ports = "DONT_CARE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.byte_size = 8;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.operation_mode = "ROM";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.address_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.width_byteena_b = 1;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.byteena_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.wrcontrol_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.indata_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.byteena_reg_b = "CLOCK1";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.wrcontrol_wraddress_reg_b = "CLOCK1";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.indata_reg_b = "CLOCK1";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.rdcontrol_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.outdata_aclr_b = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.outdata_reg_b = "UNREGISTERED";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.address_reg_b = "CLOCK1";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.rdcontrol_reg_b = "CLOCK1";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.numwords_b = 1024;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.widthad_b = 10;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.width_b = 8;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.width_byteena_a = 1;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.byteena_aclr_a = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.wrcontrol_aclr_a = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.indata_aclr_a = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.outdata_aclr_a = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.address_aclr_a = "NONE";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.outdata_reg_a = "UNREGISTERED";
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.numwords_a = 1024;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.widthad_a = 10;
               
               defparam u_noise_modgen_rom_ix24__ix20462z34211.width_a = 8;
    TRI ix12601z20184 (.OUT (aud_bclk), .IN (aud_bclk_dup0), .OE (hex7_dup0[6])
        ) ;
    assign hex7_dup0[4] = 0 ;
    assign hex7_dup0[6] = 1 ;
    assign u_audio_dac_not_reset_n = ~key_int_0_ ;
    cycloneii_lcell_ff u_sine_reg_address_8_ (.regout (u_sine_address[8]), .datain (
                       u_sine_address_0n0r2[8]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_7_ (.regout (u_sine_address[7]), .datain (
                       u_sine_address_0n0r2[7]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_6_ (.regout (u_sine_address[6]), .datain (
                       u_sine_address_0n0r2[6]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_5_ (.regout (u_sine_address[5]), .datain (
                       u_sine_address_0n0r2[5]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_4_ (.regout (u_sine_address[4]), .datain (
                       u_sine_address_0n0r2[4]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_3_ (.regout (u_sine_address[3]), .datain (
                       u_sine_address_0n0r2[3]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_2_ (.regout (u_sine_address[2]), .datain (
                       u_sine_address_0n0r2[2]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_1_ (.regout (u_sine_address[1]), .datain (
                       u_sine_address_0n0r2[1]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff u_sine_reg_address_0_ (.regout (u_sine_address[0]), .datain (
                       u_sine_address_0n0r2[0]), .sdata (1'b0), .clk (
                       aud_adclrck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_io u_i2c_av_config_u0_ix31977z43919 (.padio (i2c_sdat), .datain (
                 sdo_dup_340), .oe (hex7_dup0[6]), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.operation_mode = "bidir";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.open_drain_output = "true";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.output_register_mode = "none";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.tie_off_output_clock_enable = "false";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.oe_register_mode = "none";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam u_i2c_av_config_u0_ix31977z43919.input_register_mode = "none";
    cycloneii_lcell_ff u_audio_dac_reg_lrck_1x (.regout (aud_adclrck_dup0), .datain (
                       nx50205z1), .sdata (1'b0), .clk (aud_xck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (u_audio_dac_not_reset_n), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_reg_aud_bck (.regout (aud_bclk_dup0), .datain (
                       nx15494z1), .sdata (1'b0), .clk (aud_xck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (u_audio_dac_not_reset_n), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_2_ (.regout (
                       u_audio_dac_bck_div_2_), .datain (nx30102z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (nx30102z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_1_ (.regout (
                       u_audio_dac_bck_div_1_), .datain (nx31099z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (nx31099z2), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_0_ (.regout (
                       u_audio_dac_bck_div_0_), .datain (nx32096z1), .sdata (
                       1'b0), .clk (aud_xck_dup0), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io sw_ibuf_6_ (.combout (sw_int_6_), .padio (sw[6]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_6_.operation_mode = "input";
                 
                 defparam sw_ibuf_6_.output_register_mode = "none";
                 
                 defparam sw_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_6_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_6_.input_register_mode = "none";
    cycloneii_io sw_ibuf_5_ (.combout (sw_int_5_), .padio (sw[5]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_5_.operation_mode = "input";
                 
                 defparam sw_ibuf_5_.output_register_mode = "none";
                 
                 defparam sw_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_5_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_5_.input_register_mode = "none";
    cycloneii_io sw_ibuf_4_ (.combout (sw_int_4_), .padio (sw[4]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_4_.operation_mode = "input";
                 
                 defparam sw_ibuf_4_.output_register_mode = "none";
                 
                 defparam sw_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_4_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_4_.input_register_mode = "none";
    cycloneii_io sw_ibuf_3_ (.combout (sw_int_3_), .padio (sw[3]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_3_.operation_mode = "input";
                 
                 defparam sw_ibuf_3_.output_register_mode = "none";
                 
                 defparam sw_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_3_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_3_.input_register_mode = "none";
    cycloneii_io sw_ibuf_2_ (.combout (sw_int_2_), .padio (sw[2]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_2_.operation_mode = "input";
                 
                 defparam sw_ibuf_2_.output_register_mode = "none";
                 
                 defparam sw_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_2_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_2_.input_register_mode = "none";
    cycloneii_io sw_ibuf_17_ (.combout (sw_int_17_), .padio (sw[17]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_17_.operation_mode = "input";
                 
                 defparam sw_ibuf_17_.output_register_mode = "none";
                 
                 defparam sw_ibuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_17_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_17_.input_register_mode = "none";
    cycloneii_io sw_ibuf_16_ (.combout (sw_int_16_), .padio (sw[16]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_16_.operation_mode = "input";
                 
                 defparam sw_ibuf_16_.output_register_mode = "none";
                 
                 defparam sw_ibuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_16_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_16_.input_register_mode = "none";
    cycloneii_io sw_ibuf_1_ (.combout (sw_int_1_), .padio (sw[1]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_1_.operation_mode = "input";
                 
                 defparam sw_ibuf_1_.output_register_mode = "none";
                 
                 defparam sw_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_1_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_1_.input_register_mode = "none";
    cycloneii_io sw_ibuf_0_ (.combout (sw_int_0_), .padio (sw[0]), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam sw_ibuf_0_.operation_mode = "input";
                 
                 defparam sw_ibuf_0_.output_register_mode = "none";
                 
                 defparam sw_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam sw_ibuf_0_.oe_register_mode = "none";
                 
                 defparam sw_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam sw_ibuf_0_.input_register_mode = "none";
    cycloneii_lcell_ff reg_low_pass_input_9_ (.regout (low_pass_input_9_), .datain (
                       data_buffer_9_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_8_ (.regout (low_pass_input_8_), .datain (
                       data_buffer_8_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_7_ (.regout (low_pass_input_7_), .datain (
                       data_buffer_7_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_6_ (.regout (low_pass_input_6_), .datain (
                       data_buffer_6_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_5_ (.regout (low_pass_input_5_), .datain (
                       data_buffer_5_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_4_ (.regout (low_pass_input_4_), .datain (
                       data_buffer_4_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_3_ (.regout (low_pass_input_3_), .datain (
                       data_buffer_3_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_2_ (.regout (low_pass_input_2_), .datain (
                       data_buffer_2_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_12_ (.regout (low_pass_input_12_), .datain (
                       data_buffer_15_), .sdata (1'b0), .clk (aud_adclrck_dup0)
                       , .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_10_ (.regout (low_pass_input_10_), .datain (
                       data_buffer_10_), .sdata (1'b0), .clk (aud_adclrck_dup0)
                       , .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_1_ (.regout (low_pass_input_1_), .datain (
                       data_buffer_1_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_low_pass_input_0_ (.regout (low_pass_input_0_), .datain (
                       data_buffer_0_), .sdata (1'b0), .clk (aud_adclrck_dup0), 
                       .ena (sw_int_16_), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_data_buffer_9_ (.regout (data_buffer_9_), .datain (
                       sine_data_9_), .sdata (noise_data_9_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_8_ (.regout (data_buffer_8_), .datain (
                       sine_data_8_), .sdata (noise_data_8_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_7_ (.regout (data_buffer_7_), .datain (
                       sine_data_7_), .sdata (noise_data_7_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_6_ (.regout (data_buffer_6_), .datain (
                       sine_data_6_), .sdata (noise_data_6_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_5_ (.regout (data_buffer_5_), .datain (
                       sine_data_5_), .sdata (noise_data_5_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_4_ (.regout (data_buffer_4_), .datain (
                       sine_data_4_), .sdata (noise_data_4_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_3_ (.regout (data_buffer_3_), .datain (
                       sine_data_3_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (sw_int_17_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_data_buffer_2_ (.regout (data_buffer_2_), .datain (
                       sine_data_2_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (sw_int_17_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_data_buffer_15_ (.regout (data_buffer_15_), .datain (
                       sine_data_11_), .sdata (noise_data_15_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_10_ (.regout (data_buffer_10_), .datain (
                       sine_data_10_), .sdata (noise_data_10_), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_17_)) ;
    cycloneii_lcell_ff reg_data_buffer_1_ (.regout (data_buffer_1_), .datain (
                       sine_data_1_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (sw_int_17_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_data_buffer_0_ (.regout (data_buffer_0_), .datain (
                       sine_data_0_), .sdata (1'b0), .clk (aud_adclrck_dup0), .ena (
                       1'b1), .aclr (1'b0), .sclr (sw_int_17_), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_audio_out_9_ (.regout (audio_out[9]), .datain (
                       data_buffer_9_), .sdata (low_pass_data[9]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_8_ (.regout (audio_out[8]), .datain (
                       data_buffer_8_), .sdata (low_pass_data[8]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_7_ (.regout (audio_out[7]), .datain (
                       data_buffer_7_), .sdata (low_pass_data[7]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_6_ (.regout (audio_out[6]), .datain (
                       data_buffer_6_), .sdata (low_pass_data[6]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_5_ (.regout (audio_out[5]), .datain (
                       data_buffer_5_), .sdata (low_pass_data[5]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_4_ (.regout (audio_out[4]), .datain (
                       data_buffer_4_), .sdata (low_pass_data[4]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_3_ (.regout (audio_out[3]), .datain (
                       data_buffer_3_), .sdata (low_pass_data[3]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_2_ (.regout (audio_out[2]), .datain (
                       data_buffer_2_), .sdata (low_pass_data[2]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_15_ (.regout (audio_out[15]), .datain (
                       data_buffer_15_), .sdata (low_pass_data[15]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_14_ (.regout (audio_out[14]), .datain (
                       data_buffer_15_), .sdata (low_pass_data[14]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_13_ (.regout (audio_out[13]), .datain (
                       data_buffer_15_), .sdata (low_pass_data[13]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_12_ (.regout (audio_out[12]), .datain (
                       data_buffer_15_), .sdata (low_pass_data[12]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_11_ (.regout (audio_out[11]), .datain (
                       data_buffer_15_), .sdata (low_pass_data[11]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_10_ (.regout (audio_out[10]), .datain (
                       data_buffer_10_), .sdata (low_pass_data[10]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_1_ (.regout (audio_out[1]), .datain (
                       data_buffer_1_), .sdata (low_pass_data[1]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_ff reg_audio_out_0_ (.regout (audio_out[0]), .datain (
                       data_buffer_0_), .sdata (low_pass_data[0]), .clk (
                       aud_adclrck_dup0), .ena (hex7_dup0[6]), .aclr (1'b0), .sclr (
                       1'b0), .sload (sw_int_16_)) ;
    cycloneii_lcell_comb ix17637z52925 (.combout (nx17637z2), .dataa (sw_int_5_)
                         , .datab (sw_int_2_), .datac (sw_int_0_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix17637z52925.lut_mask = 16'haaa8;
    cycloneii_lcell_comb ix49625z52931 (.combout (nx49625z4), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52931.lut_mask = 16'h9c69;
    cycloneii_lcell_comb ix4119z52925 (.combout (nx4119z1), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52925.lut_mask = 16'h33c0;
    cycloneii_lcell_comb ix4119z52927 (.combout (nx4119z3), .dataa (sw_int_1_), 
                         .datab (sw_int_2_), .datac (sw_int_0_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix4119z52927.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix4119z52932 (.combout (nx4119z7), .dataa (sw_int_1_), 
                         .datab (sw_int_0_), .datac (sw_int_2_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix4119z52932.lut_mask = 16'hfe00;
    cycloneii_lcell_comb ix4119z52930 (.combout (nx4119z5), .dataa (sw_int_5_), 
                         .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix4119z52930.lut_mask = 16'h1115;
    cycloneii_lcell_comb ix4119z52934 (.combout (nx4119z8), .dataa (sw_int_6_), 
                         .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52934.lut_mask = 16'h666a;
    cycloneii_lcell_comb ix4119z52937 (.combout (nx4119z11), .dataa (sw_int_0_)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52937.lut_mask = 16'h0313;
    cycloneii_lcell_comb ix4119z52936 (.combout (nx4119z10), .dataa (sw_int_6_)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_2_), .cin (1'b0)) ;
                         
                         defparam ix4119z52936.lut_mask = 16'hc101;
    cycloneii_lcell_comb ix4119z52939 (.combout (nx4119z12), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52939.lut_mask = 16'hf30c;
    cycloneii_lcell_comb ix4119z52942 (.combout (nx4119z15), .dataa (sw_int_0_)
                         , .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix4119z52942.lut_mask = 16'hcd32;
    cycloneii_lcell_comb ix4119z52941 (.combout (nx4119z14), .dataa (1'b1), .datab (
                         sw_int_4_), .datac (sw_int_2_), .datad (sw_int_5_), .cin (
                         1'b0)) ;
                         defparam ix4119z52941.lut_mask = 16'h0cf3;
    cycloneii_lcell_comb ix38664z52926 (.combout (nx38664z2), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52926.lut_mask = 16'h2004;
    cycloneii_lcell_comb ix38664z52925 (.combout (nx38664z1), .dataa (1'b1), .datab (
                         sw_int_2_), .datac (sw_int_3_), .datad (sw_int_1_), .cin (
                         1'b0)) ;
                         defparam ix38664z52925.lut_mask = 16'h03c0;
    cycloneii_lcell_comb ix38664z52928 (.combout (nx38664z3), .dataa (sw_int_1_)
                         , .datab (sw_int_3_), .datac (sw_int_2_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52928.lut_mask = 16'hd2b0;
    cycloneii_lcell_comb ix38664z52930 (.combout (nx38664z5), .dataa (sw_int_2_)
                         , .datab (sw_int_6_), .datac (sw_int_0_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix38664z52930.lut_mask = 16'h5515;
    cycloneii_lcell_comb ix38664z52933 (.combout (nx38664z7), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix38664z52933.lut_mask = 16'h4338;
    cycloneii_lcell_comb ix38664z52932 (.combout (nx38664z6), .dataa (1'b1), .datab (
                         sw_int_2_), .datac (sw_int_3_), .datad (sw_int_1_), .cin (
                         1'b0)) ;
                         defparam ix38664z52932.lut_mask = 16'h3c03;
    cycloneii_lcell_comb ix38664z52936 (.combout (nx38664z9), .dataa (sw_int_6_)
                         , .datab (sw_int_4_), .datac (sw_int_2_), .datad (
                         sw_int_5_), .cin (1'b0)) ;
                         
                         defparam ix38664z52936.lut_mask = 16'h3c34;
    cycloneii_lcell_comb ix49625z52925 (.combout (nx49625z1), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52925.lut_mask = 16'h8111;
    cycloneii_lcell_comb ix49625z52927 (.combout (nx49625z2), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52927.lut_mask = 16'h3226;
    cycloneii_lcell_comb ix49625z52929 (.combout (nx49625z3), .dataa (sw_int_2_)
                         , .datab (sw_int_3_), .datac (sw_int_1_), .datad (
                         sw_int_0_), .cin (1'b0)) ;
                         
                         defparam ix49625z52929.lut_mask = 16'h5642;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_3_ (.regout (
                       bit_position[3]), .datain (nx48820z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_2_ (.regout (
                       bit_position[2]), .datain (nx49817z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_1_ (.regout (
                       bit_position[1]), .datain (nx50814z1), .sdata (1'b0), .clk (
                       aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_bit_position_reg_q_0_ (.regout (
                       bit_position[0]), .datain (NOT_bit_position_0_), .sdata (
                       1'b0), .clk (aud_bclk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io ledr_triBus2_9_ (.padio (ledr[9]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_9_.operation_mode = "output";
                 
                 defparam ledr_triBus2_9_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_9_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_9_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_9_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_8_ (.padio (ledr[8]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_8_.operation_mode = "output";
                 
                 defparam ledr_triBus2_8_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_8_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_8_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_8_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_7_ (.padio (ledr[7]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_7_.operation_mode = "output";
                 
                 defparam ledr_triBus2_7_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_7_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_7_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_7_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_6_ (.padio (ledr[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_6_.operation_mode = "output";
                 
                 defparam ledr_triBus2_6_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_6_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_6_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_6_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_5_ (.padio (ledr[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_5_.operation_mode = "output";
                 
                 defparam ledr_triBus2_5_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_5_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_5_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_5_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_4_ (.padio (ledr[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_4_.operation_mode = "output";
                 
                 defparam ledr_triBus2_4_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_4_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_4_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_4_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_3_ (.padio (ledr[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_3_.operation_mode = "output";
                 
                 defparam ledr_triBus2_3_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_3_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_3_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_3_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_2_ (.padio (ledr[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_2_.operation_mode = "output";
                 
                 defparam ledr_triBus2_2_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_2_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_2_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_2_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_17_ (.padio (ledr[17]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_17_.operation_mode = "output";
                 
                 defparam ledr_triBus2_17_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_17_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_17_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_17_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_16_ (.padio (ledr[16]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_16_.operation_mode = "output";
                 
                 defparam ledr_triBus2_16_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_16_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_16_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_16_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_15_ (.padio (ledr[15]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_15_.operation_mode = "output";
                 
                 defparam ledr_triBus2_15_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_15_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_15_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_15_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_14_ (.padio (ledr[14]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_14_.operation_mode = "output";
                 
                 defparam ledr_triBus2_14_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_14_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_14_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_14_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_13_ (.padio (ledr[13]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_13_.operation_mode = "output";
                 
                 defparam ledr_triBus2_13_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_13_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_13_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_13_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_12_ (.padio (ledr[12]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_12_.operation_mode = "output";
                 
                 defparam ledr_triBus2_12_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_12_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_12_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_12_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_11_ (.padio (ledr[11]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_11_.operation_mode = "output";
                 
                 defparam ledr_triBus2_11_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_11_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_11_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_11_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_10_ (.padio (ledr[10]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_10_.operation_mode = "output";
                 
                 defparam ledr_triBus2_10_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_10_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_10_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_10_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_1_ (.padio (ledr[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_1_.operation_mode = "output";
                 
                 defparam ledr_triBus2_1_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_1_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_1_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_1_.input_register_mode = "none";
    cycloneii_io ledr_triBus2_0_ (.padio (ledr[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledr_triBus2_0_.operation_mode = "output";
                 
                 defparam ledr_triBus2_0_.output_register_mode = "none";
                 
                 defparam ledr_triBus2_0_.tie_off_output_clock_enable = "false";
                 
                 defparam ledr_triBus2_0_.oe_register_mode = "none";
                 
                 defparam ledr_triBus2_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledr_triBus2_0_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_8_ (.padio (ledg[8]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_8_.operation_mode = "output";
                 
                 defparam ledg_triBus1_8_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_8_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_8_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_8_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_7_ (.padio (ledg[7]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_7_.operation_mode = "output";
                 
                 defparam ledg_triBus1_7_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_7_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_7_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_7_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_6_ (.padio (ledg[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_6_.operation_mode = "output";
                 
                 defparam ledg_triBus1_6_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_6_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_6_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_6_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_5_ (.padio (ledg[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_5_.operation_mode = "output";
                 
                 defparam ledg_triBus1_5_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_5_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_5_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_5_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_4_ (.padio (ledg[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_4_.operation_mode = "output";
                 
                 defparam ledg_triBus1_4_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_4_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_4_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_4_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_3_ (.padio (ledg[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_3_.operation_mode = "output";
                 
                 defparam ledg_triBus1_3_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_3_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_3_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_3_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_2_ (.padio (ledg[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_2_.operation_mode = "output";
                 
                 defparam ledg_triBus1_2_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_2_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_2_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_1_ (.padio (ledg[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_1_.operation_mode = "output";
                 
                 defparam ledg_triBus1_1_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_1_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_1_.input_register_mode = "none";
    cycloneii_io ledg_triBus1_0_ (.padio (ledg[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ledg_triBus1_0_.operation_mode = "output";
                 
                 defparam ledg_triBus1_0_.output_register_mode = "none";
                 
                 defparam ledg_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam ledg_triBus1_0_.oe_register_mode = "none";
                 
                 defparam ledg_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam ledg_triBus1_0_.input_register_mode = "none";
    cycloneii_io key_ibuf_0_ (.combout (key_int_0_), .padio (key[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam key_ibuf_0_.operation_mode = "input";
                 
                 defparam key_ibuf_0_.output_register_mode = "none";
                 
                 defparam key_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam key_ibuf_0_.oe_register_mode = "none";
                 
                 defparam key_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam key_ibuf_0_.input_register_mode = "none";
    cycloneii_io i2c_sclk_obuf (.padio (i2c_sclk), .datain (i2c_sclk_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i2c_sclk_obuf.operation_mode = "output";
                 
                 defparam i2c_sclk_obuf.output_register_mode = "none";
                 
                 defparam i2c_sclk_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam i2c_sclk_obuf.oe_register_mode = "none";
                 
                 defparam i2c_sclk_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i2c_sclk_obuf.input_register_mode = "none";
    cycloneii_io hex7_obuf_6_ (.padio (hex7[6]), .datain (hex7_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_6_.operation_mode = "output";
                 
                 defparam hex7_obuf_6_.output_register_mode = "none";
                 
                 defparam hex7_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_6_.input_register_mode = "none";
    cycloneii_io hex7_obuf_5_ (.padio (hex7[5]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_5_.operation_mode = "output";
                 
                 defparam hex7_obuf_5_.output_register_mode = "none";
                 
                 defparam hex7_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_5_.input_register_mode = "none";
    cycloneii_io hex7_obuf_4_ (.padio (hex7[4]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_4_.operation_mode = "output";
                 
                 defparam hex7_obuf_4_.output_register_mode = "none";
                 
                 defparam hex7_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_4_.input_register_mode = "none";
    cycloneii_io hex7_obuf_3_ (.padio (hex7[3]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_3_.operation_mode = "output";
                 
                 defparam hex7_obuf_3_.output_register_mode = "none";
                 
                 defparam hex7_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_3_.input_register_mode = "none";
    cycloneii_io hex7_obuf_2_ (.padio (hex7[2]), .datain (hex7_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_2_.operation_mode = "output";
                 
                 defparam hex7_obuf_2_.output_register_mode = "none";
                 
                 defparam hex7_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_2_.input_register_mode = "none";
    cycloneii_io hex7_obuf_1_ (.padio (hex7[1]), .datain (hex7_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_1_.operation_mode = "output";
                 
                 defparam hex7_obuf_1_.output_register_mode = "none";
                 
                 defparam hex7_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_1_.input_register_mode = "none";
    cycloneii_io hex7_obuf_0_ (.padio (hex7[0]), .datain (hex7_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex7_obuf_0_.operation_mode = "output";
                 
                 defparam hex7_obuf_0_.output_register_mode = "none";
                 
                 defparam hex7_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex7_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex7_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex7_obuf_0_.input_register_mode = "none";
    cycloneii_io hex6_obuf_6_ (.padio (hex6[6]), .datain (hex6_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_6_.operation_mode = "output";
                 
                 defparam hex6_obuf_6_.output_register_mode = "none";
                 
                 defparam hex6_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_6_.input_register_mode = "none";
    cycloneii_io hex6_obuf_5_ (.padio (hex6[5]), .datain (hex6_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_5_.operation_mode = "output";
                 
                 defparam hex6_obuf_5_.output_register_mode = "none";
                 
                 defparam hex6_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_5_.input_register_mode = "none";
    cycloneii_io hex6_obuf_4_ (.padio (hex6[4]), .datain (hex6_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_4_.operation_mode = "output";
                 
                 defparam hex6_obuf_4_.output_register_mode = "none";
                 
                 defparam hex6_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_4_.input_register_mode = "none";
    cycloneii_io hex6_obuf_3_ (.padio (hex6[3]), .datain (hex6_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_3_.operation_mode = "output";
                 
                 defparam hex6_obuf_3_.output_register_mode = "none";
                 
                 defparam hex6_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_3_.input_register_mode = "none";
    cycloneii_io hex6_obuf_2_ (.padio (hex6[2]), .datain (hex6_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_2_.operation_mode = "output";
                 
                 defparam hex6_obuf_2_.output_register_mode = "none";
                 
                 defparam hex6_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_2_.input_register_mode = "none";
    cycloneii_io hex6_obuf_1_ (.padio (hex6[1]), .datain (hex6_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_1_.operation_mode = "output";
                 
                 defparam hex6_obuf_1_.output_register_mode = "none";
                 
                 defparam hex6_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_1_.input_register_mode = "none";
    cycloneii_io hex6_obuf_0_ (.padio (hex6[0]), .datain (hex6_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex6_obuf_0_.operation_mode = "output";
                 
                 defparam hex6_obuf_0_.output_register_mode = "none";
                 
                 defparam hex6_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex6_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex6_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex6_obuf_0_.input_register_mode = "none";
    cycloneii_io hex5_obuf_6_ (.padio (hex5[6]), .datain (hex5_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_6_.operation_mode = "output";
                 
                 defparam hex5_obuf_6_.output_register_mode = "none";
                 
                 defparam hex5_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_6_.input_register_mode = "none";
    cycloneii_io hex5_obuf_5_ (.padio (hex5[5]), .datain (hex5_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_5_.operation_mode = "output";
                 
                 defparam hex5_obuf_5_.output_register_mode = "none";
                 
                 defparam hex5_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_5_.input_register_mode = "none";
    cycloneii_io hex5_obuf_4_ (.padio (hex5[4]), .datain (hex5_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_4_.operation_mode = "output";
                 
                 defparam hex5_obuf_4_.output_register_mode = "none";
                 
                 defparam hex5_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_4_.input_register_mode = "none";
    cycloneii_io hex5_obuf_3_ (.padio (hex5[3]), .datain (hex5_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_3_.operation_mode = "output";
                 
                 defparam hex5_obuf_3_.output_register_mode = "none";
                 
                 defparam hex5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_3_.input_register_mode = "none";
    cycloneii_io hex5_obuf_2_ (.padio (hex5[2]), .datain (hex5_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_2_.operation_mode = "output";
                 
                 defparam hex5_obuf_2_.output_register_mode = "none";
                 
                 defparam hex5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_2_.input_register_mode = "none";
    cycloneii_io hex5_obuf_1_ (.padio (hex5[1]), .datain (hex5_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_1_.operation_mode = "output";
                 
                 defparam hex5_obuf_1_.output_register_mode = "none";
                 
                 defparam hex5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_1_.input_register_mode = "none";
    cycloneii_io hex5_obuf_0_ (.padio (hex5[0]), .datain (hex5_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex5_obuf_0_.operation_mode = "output";
                 
                 defparam hex5_obuf_0_.output_register_mode = "none";
                 
                 defparam hex5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex5_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex5_obuf_0_.input_register_mode = "none";
    cycloneii_io hex4_obuf_6_ (.padio (hex4[6]), .datain (hex4_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_6_.operation_mode = "output";
                 
                 defparam hex4_obuf_6_.output_register_mode = "none";
                 
                 defparam hex4_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_6_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_6_.input_register_mode = "none";
    cycloneii_io hex4_obuf_5_ (.padio (hex4[5]), .datain (hex4_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_5_.operation_mode = "output";
                 
                 defparam hex4_obuf_5_.output_register_mode = "none";
                 
                 defparam hex4_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_5_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_5_.input_register_mode = "none";
    cycloneii_io hex4_obuf_4_ (.padio (hex4[4]), .datain (hex4_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_4_.operation_mode = "output";
                 
                 defparam hex4_obuf_4_.output_register_mode = "none";
                 
                 defparam hex4_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_4_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_4_.input_register_mode = "none";
    cycloneii_io hex4_obuf_3_ (.padio (hex4[3]), .datain (hex4_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_3_.operation_mode = "output";
                 
                 defparam hex4_obuf_3_.output_register_mode = "none";
                 
                 defparam hex4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_3_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_3_.input_register_mode = "none";
    cycloneii_io hex4_obuf_2_ (.padio (hex4[2]), .datain (hex4_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_2_.operation_mode = "output";
                 
                 defparam hex4_obuf_2_.output_register_mode = "none";
                 
                 defparam hex4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_2_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_2_.input_register_mode = "none";
    cycloneii_io hex4_obuf_1_ (.padio (hex4[1]), .datain (hex4_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_1_.operation_mode = "output";
                 
                 defparam hex4_obuf_1_.output_register_mode = "none";
                 
                 defparam hex4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_1_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_1_.input_register_mode = "none";
    cycloneii_io hex4_obuf_0_ (.padio (hex4[0]), .datain (hex4_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex4_obuf_0_.operation_mode = "output";
                 
                 defparam hex4_obuf_0_.output_register_mode = "none";
                 
                 defparam hex4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex4_obuf_0_.oe_register_mode = "none";
                 
                 defparam hex4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex4_obuf_0_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_6_ (.padio (hex3[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_6_.operation_mode = "output";
                 
                 defparam hex3_triBus6_6_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_6_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_6_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_5_ (.padio (hex3[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_5_.operation_mode = "output";
                 
                 defparam hex3_triBus6_5_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_5_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_5_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_4_ (.padio (hex3[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_4_.operation_mode = "output";
                 
                 defparam hex3_triBus6_4_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_4_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_4_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_3_ (.padio (hex3[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_3_.operation_mode = "output";
                 
                 defparam hex3_triBus6_3_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_3_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_3_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_2_ (.padio (hex3[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_2_.operation_mode = "output";
                 
                 defparam hex3_triBus6_2_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_2_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_2_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_1_ (.padio (hex3[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_1_.operation_mode = "output";
                 
                 defparam hex3_triBus6_1_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_1_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_1_.input_register_mode = "none";
    cycloneii_io hex3_triBus6_0_ (.padio (hex3[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex3_triBus6_0_.operation_mode = "output";
                 
                 defparam hex3_triBus6_0_.output_register_mode = "none";
                 
                 defparam hex3_triBus6_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex3_triBus6_0_.oe_register_mode = "none";
                 
                 defparam hex3_triBus6_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex3_triBus6_0_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_6_ (.padio (hex2[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_6_.operation_mode = "output";
                 
                 defparam hex2_triBus5_6_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_6_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_6_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_5_ (.padio (hex2[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_5_.operation_mode = "output";
                 
                 defparam hex2_triBus5_5_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_5_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_5_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_4_ (.padio (hex2[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_4_.operation_mode = "output";
                 
                 defparam hex2_triBus5_4_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_4_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_4_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_3_ (.padio (hex2[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_3_.operation_mode = "output";
                 
                 defparam hex2_triBus5_3_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_3_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_3_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_2_ (.padio (hex2[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_2_.operation_mode = "output";
                 
                 defparam hex2_triBus5_2_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_2_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_2_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_1_ (.padio (hex2[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_1_.operation_mode = "output";
                 
                 defparam hex2_triBus5_1_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_1_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_1_.input_register_mode = "none";
    cycloneii_io hex2_triBus5_0_ (.padio (hex2[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex2_triBus5_0_.operation_mode = "output";
                 
                 defparam hex2_triBus5_0_.output_register_mode = "none";
                 
                 defparam hex2_triBus5_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex2_triBus5_0_.oe_register_mode = "none";
                 
                 defparam hex2_triBus5_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex2_triBus5_0_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_6_ (.padio (hex1[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_6_.operation_mode = "output";
                 
                 defparam hex1_triBus4_6_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_6_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_6_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_5_ (.padio (hex1[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_5_.operation_mode = "output";
                 
                 defparam hex1_triBus4_5_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_5_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_5_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_4_ (.padio (hex1[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_4_.operation_mode = "output";
                 
                 defparam hex1_triBus4_4_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_4_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_4_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_3_ (.padio (hex1[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_3_.operation_mode = "output";
                 
                 defparam hex1_triBus4_3_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_3_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_3_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_2_ (.padio (hex1[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_2_.operation_mode = "output";
                 
                 defparam hex1_triBus4_2_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_2_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_2_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_1_ (.padio (hex1[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_1_.operation_mode = "output";
                 
                 defparam hex1_triBus4_1_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_1_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_1_.input_register_mode = "none";
    cycloneii_io hex1_triBus4_0_ (.padio (hex1[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex1_triBus4_0_.operation_mode = "output";
                 
                 defparam hex1_triBus4_0_.output_register_mode = "none";
                 
                 defparam hex1_triBus4_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex1_triBus4_0_.oe_register_mode = "none";
                 
                 defparam hex1_triBus4_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex1_triBus4_0_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_6_ (.padio (hex0[6]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_6_.operation_mode = "output";
                 
                 defparam hex0_triBus3_6_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_6_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_6_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_5_ (.padio (hex0[5]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_5_.operation_mode = "output";
                 
                 defparam hex0_triBus3_5_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_5_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_5_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_4_ (.padio (hex0[4]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_4_.operation_mode = "output";
                 
                 defparam hex0_triBus3_4_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_4_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_4_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_3_ (.padio (hex0[3]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_3_.operation_mode = "output";
                 
                 defparam hex0_triBus3_3_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_3_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_3_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_2_ (.padio (hex0[2]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_2_.operation_mode = "output";
                 
                 defparam hex0_triBus3_2_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_2_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_2_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_1_ (.padio (hex0[1]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_1_.operation_mode = "output";
                 
                 defparam hex0_triBus3_1_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_1_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_1_.input_register_mode = "none";
    cycloneii_io hex0_triBus3_0_ (.padio (hex0[0]), .datain (hex7_dup0[4]), .oe (
                 hex7_dup0[4]), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam hex0_triBus3_0_.operation_mode = "output";
                 
                 defparam hex0_triBus3_0_.output_register_mode = "none";
                 
                 defparam hex0_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam hex0_triBus3_0_.oe_register_mode = "none";
                 
                 defparam hex0_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam hex0_triBus3_0_.input_register_mode = "none";
    cycloneii_io clock_27_ibuf (.combout (clock_27_int), .padio (clock_27), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clock_27_ibuf.operation_mode = "input";
                 
                 defparam clock_27_ibuf.output_register_mode = "none";
                 
                 defparam clock_27_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clock_27_ibuf.oe_register_mode = "none";
                 
                 defparam clock_27_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clock_27_ibuf.input_register_mode = "none";
    cycloneii_io aud_xck_obuf (.padio (aud_xck), .datain (aud_xck_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam aud_xck_obuf.operation_mode = "output";
                 
                 defparam aud_xck_obuf.output_register_mode = "none";
                 
                 defparam aud_xck_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam aud_xck_obuf.oe_register_mode = "none";
                 
                 defparam aud_xck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_xck_obuf.input_register_mode = "none";
    cycloneii_io aud_daclrck_obuf (.padio (aud_daclrck), .datain (
                 aud_adclrck_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam aud_daclrck_obuf.operation_mode = "output";
                 
                 defparam aud_daclrck_obuf.output_register_mode = "none";
                 
                 defparam aud_daclrck_obuf.tie_off_output_clock_enable = "false";
                 defparam aud_daclrck_obuf.oe_register_mode = "none";
                 
                 defparam aud_daclrck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_daclrck_obuf.input_register_mode = "none";
    cycloneii_io aud_dacdat_obuf (.padio (aud_dacdat), .datain (aud_dacdat_dup0)
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam aud_dacdat_obuf.operation_mode = "output";
                 
                 defparam aud_dacdat_obuf.output_register_mode = "none";
                 
                 defparam aud_dacdat_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam aud_dacdat_obuf.oe_register_mode = "none";
                 
                 defparam aud_dacdat_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_dacdat_obuf.input_register_mode = "none";
    cycloneii_io aud_adclrck_obuf (.padio (aud_adclrck), .datain (
                 aud_adclrck_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1
                 ), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam aud_adclrck_obuf.operation_mode = "output";
                 
                 defparam aud_adclrck_obuf.output_register_mode = "none";
                 
                 defparam aud_adclrck_obuf.tie_off_output_clock_enable = "false";
                 defparam aud_adclrck_obuf.oe_register_mode = "none";
                 
                 defparam aud_adclrck_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam aud_adclrck_obuf.input_register_mode = "none";
    cycloneii_lcell_comb ix51811z52923 (.combout (NOT_bit_position_0_), .dataa (
                         bit_position[0]), .datab (1'b1), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix51811z52923.lut_mask = 16'h5555;
    cycloneii_lcell_comb ix24999z52932 (.combout (nx24999z9), .dataa (
                         bit_position[1]), .datab (audio_out[13]), .datac (
                         audio_out[12]), .datad (bit_position[0]), .cin (1'b0)
                         ) ;
                         defparam ix24999z52932.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52930 (.combout (nx24999z7), .dataa (
                         bit_position[1]), .datab (audio_out[9]), .datac (
                         audio_out[8]), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52930.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52926 (.combout (nx24999z3), .dataa (
                         bit_position[1]), .datab (audio_out[5]), .datac (
                         audio_out[4]), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52926.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52928 (.combout (nx24999z5), .dataa (
                         bit_position[1]), .datab (audio_out[1]), .datac (
                         audio_out[0]), .datad (bit_position[0]), .cin (1'b0)) ;
                         
                         defparam ix24999z52928.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52924 (.combout (nx24999z1), .dataa (
                         bit_position[3]), .datab (nx24999z2), .datac (nx24999z4
                         ), .datad (bit_position[2]), .cin (1'b0)) ;
                         
                         defparam ix24999z52924.lut_mask = 16'ha0dd;
    cycloneii_lcell_comb ix24999z52931 (.combout (nx24999z8), .dataa (nx24999z9)
                         , .datab (audio_out[14]), .datac (audio_out[15]), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52931.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52929 (.combout (nx24999z6), .dataa (nx24999z7)
                         , .datab (audio_out[10]), .datac (audio_out[11]), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52929.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52925 (.combout (nx24999z2), .dataa (nx24999z3)
                         , .datab (audio_out[6]), .datac (audio_out[7]), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52925.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52927 (.combout (nx24999z4), .dataa (nx24999z5)
                         , .datab (audio_out[2]), .datac (audio_out[3]), .datad (
                         bit_position[1]), .cin (1'b0)) ;
                         
                         defparam ix24999z52927.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix24999z52923 (.combout (aud_dacdat_dup0), .dataa (
                         nx24999z1), .datab (nx24999z6), .datac (nx24999z8), .datad (
                         bit_position[3]), .cin (1'b0)) ;
                         
                         defparam ix24999z52923.lut_mask = 16'haae4;
    cycloneii_lcell_comb ix55607z52925 (.combout (nx55607z2), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix55607z52925.lut_mask = 16'h2900;
    cycloneii_lcell_comb ix4119z52928 (.combout (nx4119z4), .dataa (sw_int_17_)
                         , .datab (sw_int_6_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix4119z52928.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix4119z52931 (.combout (nx4119z6), .dataa (nx4119z7), .datab (
                         sw_int_6_), .datac (sw_int_5_), .datad (sw_int_4_), .cin (
                         1'b0)) ;
                         defparam ix4119z52931.lut_mask = 16'h3020;
    cycloneii_lcell_comb ix10101z52925 (.combout (nx10101z2), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix10101z52925.lut_mask = 16'h2004;
    cycloneii_lcell_comb ix17637z52924 (.combout (nx17637z1), .dataa (nx17637z2)
                         , .datab (sw_int_5_), .datac (sw_int_4_), .datad (
                         sw_int_3_), .cin (1'b0)) ;
                         
                         defparam ix17637z52924.lut_mask = 16'hcac0;
    cycloneii_lcell_comb ix10101z52924 (.combout (nx10101z1), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix10101z52924.lut_mask = 16'h0900;
    cycloneii_lcell_comb ix4119z52940 (.combout (nx4119z13), .dataa (nx4119z14)
                         , .datab (nx4119z15), .datac (sw_int_3_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix4119z52940.lut_mask = 16'ha0c0;
    cycloneii_lcell_comb ix4119z52935 (.combout (nx4119z9), .dataa (nx4119z10), 
                         .datab (nx4119z11), .datac (sw_int_6_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix4119z52935.lut_mask = 16'haa0c;
    cycloneii_lcell_comb ix4119z52926 (.combout (nx4119z2), .dataa (nx4119z3), .datab (
                         sw_int_5_), .datac (sw_int_4_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix4119z52926.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix38664z52935 (.combout (nx38664z8), .dataa (nx38664z9)
                         , .datab (sw_int_4_), .datac (sw_int_3_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix38664z52935.lut_mask = 16'haccc;
    cycloneii_lcell_comb ix38664z52929 (.combout (nx38664z4), .dataa (nx38664z5)
                         , .datab (sw_int_3_), .datac (sw_int_2_), .datad (
                         sw_int_1_), .cin (1'b0)) ;
                         
                         defparam ix38664z52929.lut_mask = 16'h880f;
    cycloneii_lcell_comb ix50205z52926 (.combout (nx50205z4), .dataa (
                         u_audio_dac_lrck_1x_div[5]), .datab (
                         u_audio_dac_lrck_1x_div[4]), .datac (
                         u_audio_dac_lrck_1x_div[3]), .datad (
                         u_audio_dac_lrck_1x_div[2]), .cin (1'b0)) ;
                         
                         defparam ix50205z52926.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix50205z52925 (.combout (nx50205z3), .dataa (
                         u_audio_dac_lrck_1x_div[1]), .datab (
                         u_audio_dac_lrck_1x_div[0]), .datac (nx50205z4), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50205z52925.lut_mask = 16'hf7f7;
    cycloneii_lcell_comb ix31099z52924 (.combout (nx31099z2), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix31099z52924.lut_mask = 16'hf8ff;
    cycloneii_lcell_comb ix31099z52923 (.combout (nx31099z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix31099z52923.lut_mask = 16'h1300;
    cycloneii_lcell_comb ix30102z52924 (.combout (nx30102z2), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix30102z52924.lut_mask = 16'he8ff;
    cycloneii_lcell_comb ix30102z52923 (.combout (nx30102z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (key_int_0_), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix30102z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix50814z52923 (.combout (nx50814z1), .dataa (
                         bit_position[1]), .datab (bit_position[0]), .datac (
                         1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50814z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix49817z52923 (.combout (nx49817z1), .dataa (
                         bit_position[2]), .datab (bit_position[1]), .datac (
                         bit_position[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix49817z52923.lut_mask = 16'h6a6a;
    cycloneii_lcell_comb ix48820z52923 (.combout (nx48820z1), .dataa (
                         bit_position[3]), .datab (bit_position[2]), .datac (
                         bit_position[1]), .datad (bit_position[0]), .cin (1'b0)
                         ) ;
                         defparam ix48820z52923.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix15494z52923 (.combout (nx15494z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (aud_bclk), 
                         .cin (1'b0)) ;
                         
                         defparam ix15494z52923.lut_mask = 16'h57a8;
    cycloneii_lcell_comb ix50205z52924 (.combout (nx50205z2), .dataa (
                         u_audio_dac_lrck_1x_div[8]), .datab (
                         u_audio_dac_lrck_1x_div[7]), .datac (
                         u_audio_dac_lrck_1x_div[6]), .datad (nx50205z3), .cin (
                         1'b0)) ;
                         defparam ix50205z52924.lut_mask = 16'h1511;
    cycloneii_lcell_comb ix48238z52923 (.combout (nx48238z1), .dataa (nx50205z2)
                         , .datab (key_int_0_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix48238z52923.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix55607z52924 (.combout (nx55607z1), .dataa (nx49625z1)
                         , .datab (nx49625z2), .datac (nx49625z3), .datad (
                         sw_int_17_), .cin (1'b0)) ;
                         
                         defparam ix55607z52924.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix49625z52930 (.combout (display_freq[0]), .dataa (
                         nx49625z4), .datab (sw_int_17_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix49625z52930.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix49625z52928 (.combout (display_freq[1]), .dataa (
                         nx49625z3), .datab (sw_int_17_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix49625z52928.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix49625z52926 (.combout (display_freq[2]), .dataa (
                         nx49625z2), .datab (sw_int_17_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix49625z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix49625z52924 (.combout (display_freq[3]), .dataa (
                         nx49625z1), .datab (sw_int_17_), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix49625z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix38664z52934 (.combout (display_freq[4]), .dataa (
                         sw_int_17_), .datab (sw_int_4_), .datac (sw_int_0_), .datad (
                         nx38664z8), .cin (1'b0)) ;
                         
                         defparam ix38664z52934.lut_mask = 16'hfbab;
    cycloneii_lcell_comb ix38664z52931 (.combout (display_freq[5]), .dataa (
                         nx38664z6), .datab (nx38664z7), .datac (sw_int_17_), .datad (
                         sw_int_4_), .cin (1'b0)) ;
                         
                         defparam ix38664z52931.lut_mask = 16'h0a0c;
    cycloneii_lcell_comb ix38664z52927 (.combout (display_freq[6]), .dataa (
                         nx38664z3), .datab (sw_int_17_), .datac (sw_int_4_), .datad (
                         nx38664z4), .cin (1'b0)) ;
                         
                         defparam ix38664z52927.lut_mask = 16'hfece;
    cycloneii_lcell_comb ix38664z52924 (.combout (display_freq[7]), .dataa (
                         nx38664z1), .datab (nx38664z2), .datac (sw_int_17_), .datad (
                         sw_int_4_), .cin (1'b0)) ;
                         
                         defparam ix38664z52924.lut_mask = 16'h0a0c;
    cycloneii_lcell_comb ix4119z52938 (.combout (display_freq[8]), .dataa (
                         nx4119z12), .datab (sw_int_17_), .datac (sw_int_3_), .datad (
                         nx4119z13), .cin (1'b0)) ;
                         
                         defparam ix4119z52938.lut_mask = 16'hffce;
    cycloneii_lcell_comb ix4119z52933 (.combout (display_freq[9]), .dataa (
                         nx4119z8), .datab (sw_int_17_), .datac (sw_int_5_), .datad (
                         nx4119z9), .cin (1'b0)) ;
                         
                         defparam ix4119z52933.lut_mask = 16'h3202;
    cycloneii_lcell_comb ix4119z52929 (.combout (display_freq[10]), .dataa (
                         nx4119z5), .datab (sw_int_17_), .datac (sw_int_6_), .datad (
                         nx4119z6), .cin (1'b0)) ;
                         
                         defparam ix4119z52929.lut_mask = 16'h3320;
    cycloneii_lcell_comb ix4119z52924 (.combout (display_freq[11]), .dataa (
                         nx4119z1), .datab (sw_int_3_), .datac (nx4119z2), .datad (
                         nx4119z4), .cin (1'b0)) ;
                         
                         defparam ix4119z52924.lut_mask = 16'he200;
    cycloneii_lcell_comb ix17637z52923 (.combout (hex7_dup0[5]), .dataa (
                         sw_int_17_), .datab (sw_int_6_), .datac (nx17637z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix17637z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix10101z52923 (.combout (hex6_dup0[0]), .dataa (
                         nx10101z1), .datab (nx10101z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix10101z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix9104z52923 (.combout (hex6_dup0[1]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix9104z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix8107z52923 (.combout (hex6_dup0[2]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix8107z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix7110z52923 (.combout (hex6_dup0[3]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix7110z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix6113z52923 (.combout (hex6_dup0[4]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix6113z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix5116z52923 (.combout (hex6_dup0[5]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix5116z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix4119z52923 (.combout (hex6_dup0[6]), .dataa (
                         display_freq[11]), .datab (display_freq[10]), .datac (
                         display_freq[9]), .datad (display_freq[8]), .cin (1'b0)
                         ) ;
                         defparam ix4119z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix32682z52923 (.combout (hex5_dup0[0]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix32682z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix33679z52923 (.combout (hex5_dup0[1]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix33679z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix34676z52923 (.combout (hex5_dup0[2]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix34676z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix35673z52923 (.combout (hex5_dup0[3]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix35673z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix36670z52923 (.combout (hex5_dup0[4]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix36670z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix37667z52923 (.combout (hex5_dup0[5]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix37667z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix38664z52923 (.combout (hex5_dup0[6]), .dataa (
                         display_freq[7]), .datab (display_freq[6]), .datac (
                         display_freq[5]), .datad (display_freq[4]), .cin (1'b0)
                         ) ;
                         defparam ix38664z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix55607z52923 (.combout (hex4_dup0[0]), .dataa (
                         display_freq[2]), .datab (display_freq[0]), .datac (
                         nx55607z1), .datad (nx55607z2), .cin (1'b0)) ;
                         
                         defparam ix55607z52923.lut_mask = 16'hff20;
    cycloneii_lcell_comb ix54610z52923 (.combout (hex4_dup0[1]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix54610z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix53613z52923 (.combout (hex4_dup0[2]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix53613z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix52616z52923 (.combout (hex4_dup0[3]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix52616z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix51619z52923 (.combout (hex4_dup0[4]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix51619z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix50622z52923 (.combout (hex4_dup0[5]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix50622z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix49625z52923 (.combout (hex4_dup0[6]), .dataa (
                         display_freq[3]), .datab (display_freq[2]), .datac (
                         display_freq[1]), .datad (display_freq[0]), .cin (1'b0)
                         ) ;
                         defparam ix49625z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix50205z52923 (.combout (nx50205z1), .dataa (nx50205z2)
                         , .datab (aud_adclrck_dup0), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50205z52923.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix32096z52923 (.combout (nx32096z1), .dataa (
                         u_audio_dac_bck_div_2_), .datab (u_audio_dac_bck_div_1_
                         ), .datac (u_audio_dac_bck_div_0_), .datad (key_int_0_)
                         , .cin (1'b0)) ;
                         
                         defparam ix32096z52923.lut_mask = 16'h0700;
endmodule


module modgen_counter_9_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [8:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [8:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx59247z16, nx52268z1, nx59247z14, nx53265z1, nx59247z12, 
         nx54262z1, nx59247z10, nx55259z1, nx59247z8, nx56256z1, nx59247z6, 
         nx57253z1, nx59247z4, nx58250z1, nx59247z2, nx59247z1, 
         nx_modgen_counter_9_0_vcc_net;
    wire [55:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix59247z52930 (.combout (nx53265z1), .cout (nx59247z12)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z14)) ;
                         
                         defparam ix59247z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52930.sum_lutc_input = "cin";
    assign nx_modgen_counter_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix59247z52923 (.combout (nx59247z1), .dataa (q[8]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z2)) ;
                         
                         defparam ix59247z52923.lut_mask = 16'h5a00;
                         
                         defparam ix59247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52925 (.combout (nx58250z1), .cout (nx59247z2)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z4)) ;
                         
                         defparam ix59247z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52926 (.combout (nx57253z1), .cout (nx59247z4)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z6)) ;
                         
                         defparam ix59247z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52931 (.combout (nx52268z1), .cout (nx59247z14)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z16)) ;
                         
                         defparam ix59247z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52927 (.combout (nx56256z1), .cout (nx59247z6)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z8)) ;
                         
                         defparam ix59247z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52928 (.combout (nx55259z1), .cout (nx59247z8)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z10)) ;
                         
                         defparam ix59247z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52929 (.combout (nx54262z1), .cout (nx59247z10)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z12)) ;
                         
                         defparam ix59247z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52932 (.combout (nx51271z1), .cout (nx59247z16)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix59247z52932.lut_mask = 16'h55aa;
endmodule


module modgen_counter_10_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [9:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [9:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx60244z10, nx52268z1, nx60244z9, nx53265z1, nx60244z8, 
         nx54262z1, nx60244z7, nx55259z1, nx60244z6, nx56256z1, nx60244z5, 
         nx57253z1, nx60244z4, nx58250z1, nx60244z3, nx59247z1, nx60244z2, 
         nx60244z1, nx_modgen_counter_10_0_vcc_net;
    wire [71:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix60244z52931 (.combout (nx53265z1), .cout (nx60244z8)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z9)) ;
                         
                         defparam ix60244z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52931.sum_lutc_input = "cin";
    assign nx_modgen_counter_10_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix60244z52923 (.combout (nx60244z1), .dataa (q[9]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z2)) ;
                         
                         defparam ix60244z52923.lut_mask = 16'h5a00;
                         
                         defparam ix60244z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52925 (.combout (nx59247z1), .cout (nx60244z2)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z3)) ;
                         
                         defparam ix60244z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52932 (.combout (nx52268z1), .cout (nx60244z9)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z10)) ;
                         
                         defparam ix60244z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52926 (.combout (nx58250z1), .cout (nx60244z3)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z4)) ;
                         
                         defparam ix60244z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52927 (.combout (nx57253z1), .cout (nx60244z4)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z5)) ;
                         
                         defparam ix60244z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52928 (.combout (nx56256z1), .cout (nx60244z5)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z6)) ;
                         
                         defparam ix60244z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52929 (.combout (nx55259z1), .cout (nx60244z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z7)) ;
                         
                         defparam ix60244z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52930 (.combout (nx54262z1), .cout (nx60244z7)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (nx60244z8)) ;
                         
                         defparam ix60244z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix60244z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix60244z52933 (.combout (nx51271z1), .cout (nx60244z10)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_10_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix60244z52933.lut_mask = 16'h55aa;
endmodule


module add_9_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;

    wire nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, nx45949z8, 
         nx45949z5, nx45949z3, nx_add_9_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .dataa (a[8]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_9_0_vcc_net), .cin (
                         nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'h5a00;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    assign nx_add_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         a[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z5)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52926 (.combout (d[6]), .cout (nx45949z5), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z8)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52927 (.combout (d[5]), .cout (nx45949z8), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z11)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52928 (.combout (d[4]), .cout (nx45949z11), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z14)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[3]), .cout (nx45949z14), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z17)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52930 (.combout (d[2]), .cout (nx45949z17), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z20)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[1]), .cout (nx45949z20), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (nx45949z23)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52932 (.combout (d[0]), .cout (nx45949z23), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h99ee;
endmodule


module i2c_av_config_notri ( p_u0_not_sdo, p_i2c_sclk, p_i2c_sdat, p_clk, p_sdo
                              ) ;

    output p_u0_not_sdo ;
    output p_i2c_sclk ;
    input p_i2c_sdat ;
    input p_clk ;
    output p_sdo ;

    wire [15:0]cont;
    wire m_i2c_clk_div_5_, m_i2c_clk_div_4_, m_i2c_clk_div_3_, m_i2c_clk_div_2_, 
         reset_n, m_i2c_clk_div_12_, m_i2c_clk_div_11_, m_i2c_clk_div_10_, 
         m_i2c_clk_div_9_, m_i2c_clk_div_6_, m_i2c_clk_div_7_, m_i2c_clk_div_8_, 
         m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
         nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
         nx17807z1, nx2692z5, nx51161z1;
    wire [107:0] xmplr_dummy ;




    modgen_counter_16_0 modgen_counter_cont (.clock (p_clk), .q ({cont[15],
                        cont[14],cont[13],cont[12],cont[11],cont[10],cont[9],
                        cont[8],cont[7],cont[6],cont[5],cont[4],cont[3],cont[2],
                        cont[1],cont[0]}), .cnt_en (nx35560z1)) ;
    modgen_counter_16_1 modgen_counter_m_i2c_clk_div (.clock (p_clk), .q ({
                        xmplr_dummy [0],xmplr_dummy [1],xmplr_dummy [2],
                        m_i2c_clk_div_12_,m_i2c_clk_div_11_,m_i2c_clk_div_10_,
                        m_i2c_clk_div_9_,m_i2c_clk_div_8_,m_i2c_clk_div_7_,
                        m_i2c_clk_div_6_,m_i2c_clk_div_5_,m_i2c_clk_div_4_,
                        m_i2c_clk_div_3_,m_i2c_clk_div_2_,xmplr_dummy [3],
                        xmplr_dummy [4]}), .sclear (nx23875z1)) ;
    i2c_ctrl_notri u0 (.p_i2c_sclk (p_i2c_sclk), .p_reset_rtlc_164_and_63 ({
                   reset_n}), .p_clock (m_i2c_ctrl_clk), .p_sdo (p_sdo), .p_p_clk (
                   p_clk), .p_not_reset_n (not_reset_n), .px362 (nx51161z1)) ;
    assign not_reset_n = ~reset_n ;
    cycloneii_lcell_ff reg_reset_n (.regout (reset_n), .datain (nx17807z1), .sdata (
                       1'b0), .clk (p_clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_m_i2c_ctrl_clk (.regout (m_i2c_ctrl_clk), .datain (
                       nx2692z1), .sdata (1'b0), .clk (p_clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_comb ix2692z52927 (.combout (nx2692z5), .dataa (
                         m_i2c_clk_div_11_), .datab (m_i2c_clk_div_10_), .datac (
                         m_i2c_clk_div_9_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix2692z52927.lut_mask = 16'ha8a8;
    cycloneii_lcell_comb ix17807z52923 (.combout (nx17807z1), .dataa (nx17807z2)
                         , .datab (nx35560z2), .datac (nx35560z3), .datad (
                         nx35560z4), .cin (1'b0)) ;
                         
                         defparam ix17807z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52926 (.combout (nx2692z4), .dataa (
                         m_i2c_clk_div_11_), .datab (m_i2c_clk_div_6_), .datac (
                         m_i2c_clk_div_7_), .datad (m_i2c_clk_div_8_), .cin (
                         1'b0)) ;
                         defparam ix2692z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52925 (.combout (nx2692z3), .dataa (
                         m_i2c_clk_div_5_), .datab (m_i2c_clk_div_4_), .datac (
                         m_i2c_clk_div_3_), .datad (m_i2c_clk_div_2_), .cin (
                         1'b0)) ;
                         defparam ix2692z52925.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix35560z52926 (.combout (nx35560z4), .dataa (cont[12])
                         , .datab (cont[13]), .datac (cont[14]), .datad (
                         cont[15]), .cin (1'b0)) ;
                         
                         defparam ix35560z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix35560z52925 (.combout (nx35560z3), .dataa (cont[8]), 
                         .datab (cont[9]), .datac (cont[10]), .datad (cont[11])
                         , .cin (1'b0)) ;
                         
                         defparam ix35560z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix35560z52924 (.combout (nx35560z2), .dataa (cont[4]), 
                         .datab (cont[5]), .datac (cont[6]), .datad (cont[7]), .cin (
                         1'b0)) ;
                         defparam ix35560z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix17807z52924 (.combout (nx17807z2), .dataa (cont[0]), 
                         .datab (cont[1]), .datac (cont[2]), .datad (cont[3]), .cin (
                         1'b0)) ;
                         defparam ix17807z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix2692z52923 (.combout (nx2692z1), .dataa (nx2692z2), .datab (
                         m_i2c_ctrl_clk), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix2692z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix2692z52924 (.combout (nx2692z2), .dataa (nx2692z3), .datab (
                         m_i2c_clk_div_12_), .datac (nx2692z4), .datad (nx2692z5
                         ), .cin (1'b0)) ;
                         
                         defparam ix2692z52924.lut_mask = 16'hffec;
    cycloneii_lcell_comb ix23875z52923 (.combout (nx23875z1), .dataa (reset_n), 
                         .datab (nx2692z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix23875z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix35560z52923 (.combout (nx35560z1), .dataa (nx17807z2)
                         , .datab (nx35560z2), .datac (nx35560z3), .datad (
                         nx35560z4), .cin (1'b0)) ;
                         
                         defparam ix35560z52923.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix51161z52923 (.combout (nx51161z1), .dataa (reset_n), 
                         .datab (m_i2c_ctrl_clk), .datac (nx2692z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix51161z52923.lut_mask = 16'h2828;
endmodule


module i2c_ctrl_notri ( p_i2c_sdat, p_finish_xfr, p_i2c_data_4, p_i2c_data_3, 
                        p_i2c_data_2, p_i2c_data_1, p_i2c_data_5, p_i2c_sclk, 
                        p_start_xfr, p_reset_rtlc_164_and_63, p_ack, p_not_sdo, 
                        p_clock, p_sdo, p_p_clk, p_m_i2c_ctrl_clk_dup_364, 
                        p_not_reset_n, px362 ) ;

    input p_i2c_sdat ;
    output p_finish_xfr ;
    input [2:0]p_i2c_data_4 ;
    input [4:4]p_i2c_data_3 ;
    input [7:6]p_i2c_data_2 ;
    input [12:9]p_i2c_data_1 ;
    input [22:21]p_i2c_data_5 ;
    output p_i2c_sclk ;
    input p_start_xfr ;
    input [2:2]p_reset_rtlc_164_and_63 ;
    output p_ack ;
    output p_not_sdo ;
    input p_clock ;
    output p_sdo ;
    input p_p_clk ;
    input p_m_i2c_ctrl_clk_dup_364 ;
    input p_not_reset_n ;
    input px362 ;

    wire sd_counter_4_, sd_counter_3_, sd_counter_2_, sd_counter_1_, 
         sd_counter_0_;
    wire [4:0]sdo_5n5s2;
    wire sd_counter_5_, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
         nx41315z13, nx41315z17, sdo_5n5s2f1_0_, sdo_5n5s2f1_1_, nx41315z4, 
         nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
         nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
         nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
         nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
         nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
         nx44942z3, nx41315z20;
    wire [124:0] xmplr_dummy ;




    sub_5_0 sdo_sub5_5i2 (.a ({xmplr_dummy [0],xmplr_dummy [1],nx22137z1,
            sdo_5n5s2f1_1_,sdo_5n5s2f1_0_}), .b ({sd_counter_4_,sd_counter_3_,
            sd_counter_2_,sd_counter_1_,sd_counter_0_}), .d ({sdo_5n5s2[4],
            sdo_5n5s2[3],sdo_5n5s2[2],sdo_5n5s2[1],sdo_5n5s2[0]})) ;
    modgen_counter_6_0 modgen_counter_sd_counter (.clock (p_clock), .q ({
                       sd_counter_5_,sd_counter_4_,sd_counter_3_,sd_counter_2_,
                       sd_counter_1_,sd_counter_0_}), .sload (p_not_reset_n), .cnt_en (
                       nx7286z1), .p_p_reset (p_reset_rtlc_164_and_63[2]), .p_p_clk (
                       p_p_clk), .px755 (px362), .p_p_clock (p_clock)) ;
    assign p_sdo = ~nx51857z1 ;
    cycloneii_lcell_ff reg_sdo (.regout (nx51857z1), .datain (nx41315z1), .sdata (
                       1'b0), .clk (p_p_clk), .ena (nx41315z19), .aclr (1'b0), .sclr (
                       p_not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_sclk (.regout (nx43379z1), .datain (nx44942z1), .sdata (
                       1'b0), .clk (p_p_clk), .ena (nx44942z2), .aclr (1'b0), .sclr (
                       p_not_reset_n), .sload (1'b0)) ;
    cycloneii_lcell_comb ix41315z52943 (.combout (nx41315z21), .dataa (
                         sd_counter_1_), .datab (sd_counter_0_), .datac (
                         nx44942z4), .datad (nx44942z5), .cin (1'b0)) ;
                         
                         defparam ix41315z52943.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix41315z52938 (.combout (nx41315z16), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         sd_counter_1_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52938.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix41315z52936 (.combout (nx41315z14), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (
                         sd_counter_5_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52936.lut_mask = 16'h0808;
    cycloneii_lcell_comb ix43379z52926 (.combout (nx43379z4), .dataa (
                         sd_counter_3_), .datab (sd_counter_1_), .datac (
                         sd_counter_0_), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix43379z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix7286z52924 (.combout (nx7286z2), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_1_), .cin (1'b0)) ;
                         
                         defparam ix7286z52924.lut_mask = 16'h7fff;
    cycloneii_lcell_comb ix41315z52928 (.combout (nx41315z6), .dataa (
                         sd_counter_4_), .datab (sd_counter_1_), .datac (
                         sd_counter_5_), .datad (nx44942z5), .cin (1'b0)) ;
                         
                         defparam ix41315z52928.lut_mask = 16'h0504;
    cycloneii_lcell_comb ix41315z52940 (.combout (nx41315z18), .dataa (
                         sdo_5n5s2[1]), .datab (sdo_5n5s2[2]), .datac (
                         sdo_5n5s2[4]), .datad (sdo_5n5s2[0]), .cin (1'b0)) ;
                         
                         defparam ix41315z52940.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix41315z52933 (.combout (nx41315z11), .dataa (
                         nx41315z12), .datab (nx41315z13), .datac (nx41315z15), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52933.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix43379z52925 (.combout (nx43379z3), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (
                         sd_counter_5_), .datad (nx43379z4), .cin (1'b0)) ;
                         
                         defparam ix43379z52925.lut_mask = 16'h040c;
    cycloneii_lcell_comb ix43379z52924 (.combout (nx43379z2), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix43379z52924.lut_mask = 16'h000e;
    cycloneii_lcell_comb ix41315z52944 (.combout (nx41315z22), .dataa (
                         nx41315z14), .datab (sd_counter_0_), .datac (nx44942z7)
                         , .datad (nx41315z15), .cin (1'b0)) ;
                         
                         defparam ix41315z52944.lut_mask = 16'hff02;
    cycloneii_lcell_comb ix41315z52925 (.combout (nx41315z3), .dataa (nx41315z4)
                         , .datab (nx22137z1), .datac (nx41315z5), .datad (
                         nx41315z6), .cin (1'b0)) ;
                         
                         defparam ix41315z52925.lut_mask = 16'hff74;
    cycloneii_lcell_comb ix41315z52927 (.combout (nx41315z5), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         nx44942z4), .datad (nx43379z4), .cin (1'b0)) ;
                         
                         defparam ix41315z52927.lut_mask = 16'hfff8;
    cycloneii_lcell_comb ix44942z52928 (.combout (nx44942z6), .dataa (
                         p_reset_rtlc_164_and_63[2]), .datab (sd_counter_5_), .datac (
                         nx44942z7), .datad (nx44942z8), .cin (1'b0)) ;
                         
                         defparam ix44942z52928.lut_mask = 16'h5557;
    cycloneii_lcell_comb ix41315z52929 (.combout (nx41315z7), .dataa (
                         sdo_5n5s2[1]), .datab (nx41315z2), .datac (nx41315z8), 
                         .datad (nx41315z10), .cin (1'b0)) ;
                         
                         defparam ix41315z52929.lut_mask = 16'hf8f0;
    cycloneii_lcell_comb ix41315z52930 (.combout (nx41315z8), .dataa (
                         sdo_5n5s2[3]), .datab (nx41315z3), .datac (nx41315z9), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52930.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix41315z52937 (.combout (nx41315z15), .dataa (
                         nx41315z16), .datab (nx41315z17), .datac (sd_counter_4_
                         ), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52937.lut_mask = 16'hccce;
    cycloneii_lcell_comb ix44942z52930 (.combout (nx44942z8), .dataa (
                         sd_counter_4_), .datab (sd_counter_2_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52930.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix22137z52926 (.combout (nx22137z2), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix22137z52926.lut_mask = 16'ha888;
    cycloneii_lcell_comb ix44942z52927 (.combout (nx44942z5), .dataa (
                         sd_counter_3_), .datab (sd_counter_2_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52927.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix44942z52926 (.combout (nx44942z4), .dataa (
                         sd_counter_4_), .datab (sd_counter_5_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52926.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix41315z52924 (.combout (nx41315z2), .dataa (
                         sdo_5n5s2[3]), .datab (nx41315z3), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52924.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix44942z52929 (.combout (nx44942z7), .dataa (
                         sd_counter_3_), .datab (sd_counter_1_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52929.lut_mask = 16'h7777;
    cycloneii_lcell_comb ix22137z52923 (.combout (nx22137z1), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix22137z52923.lut_mask = 16'hffa8;
    cycloneii_lcell_comb ix44942z52925 (.combout (nx44942z3), .dataa (
                         sd_counter_0_), .datab (nx44942z4), .datac (nx44942z5)
                         , .datad (nx44942z6), .cin (1'b0)) ;
                         
                         defparam ix44942z52925.lut_mask = 16'hff01;
    cycloneii_lcell_comb ix41315z52942 (.combout (nx41315z20), .dataa (
                         nx41315z21), .datab (nx41315z4), .datac (
                         p_reset_rtlc_164_and_63[2]), .datad (nx41315z22), .cin (
                         1'b0)) ;
                         defparam ix41315z52942.lut_mask = 16'h5f1f;
    cycloneii_lcell_comb ix7286z52923 (.combout (nx7286z1), .dataa (
                         sd_counter_0_), .datab (sd_counter_5_), .datac (
                         nx7286z2), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix7286z52923.lut_mask = 16'hf7f7;
    cycloneii_lcell_comb ix41315z52926 (.combout (nx41315z4), .dataa (
                         sd_counter_5_), .datab (nx7286z2), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52926.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix22137z52925 (.combout (sdo_5n5s2f1_0_), .dataa (
                         sd_counter_4_), .datab (sd_counter_5_), .datac (
                         nx44942z5), .datad (nx22137z2), .cin (1'b0)) ;
                         
                         defparam ix22137z52925.lut_mask = 16'h1302;
    cycloneii_lcell_comb ix41315z52923 (.combout (nx41315z1), .dataa (nx41315z2)
                         , .datab (nx41315z7), .datac (nx41315z11), .datad (
                         nx41315z18), .cin (1'b0)) ;
                         
                         defparam ix41315z52923.lut_mask = 16'h0103;
    cycloneii_lcell_comb ix44942z52923 (.combout (nx44942z1), .dataa (
                         sd_counter_1_), .datab (sd_counter_0_), .datac (1'b1), 
                         .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix44942z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix41315z52939 (.combout (nx41315z17), .dataa (
                         nx41315z14), .datab (sd_counter_3_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52939.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix41315z52935 (.combout (nx41315z13), .dataa (
                         nx41315z14), .datab (sd_counter_3_), .datac (
                         sd_counter_1_), .datad (sd_counter_0_), .cin (1'b0)) ;
                         
                         defparam ix41315z52935.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix41315z52934 (.combout (nx41315z12), .dataa (
                         sd_counter_2_), .datab (sd_counter_0_), .datac (
                         nx44942z7), .datad (nx44942z4), .cin (1'b0)) ;
                         
                         defparam ix41315z52934.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix43379z52923 (.combout (p_i2c_sclk), .dataa (p_clock)
                         , .datab (nx43379z1), .datac (nx43379z2), .datad (
                         nx43379z3), .cin (1'b0)) ;
                         
                         defparam ix43379z52923.lut_mask = 16'h7773;
    cycloneii_lcell_comb ix22137z52924 (.combout (sdo_5n5s2f1_1_), .dataa (
                         sd_counter_4_), .datab (sd_counter_3_), .datac (
                         sd_counter_2_), .datad (sd_counter_5_), .cin (1'b0)) ;
                         
                         defparam ix22137z52924.lut_mask = 16'h0057;
    cycloneii_lcell_comb ix41315z52932 (.combout (nx41315z10), .dataa (
                         sdo_5n5s2[4]), .datab (sdo_5n5s2[2]), .datac (
                         sdo_5n5s2[0]), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52932.lut_mask = 16'h1212;
    cycloneii_lcell_comb ix41315z52931 (.combout (nx41315z9), .dataa (
                         sdo_5n5s2[2]), .datab (sdo_5n5s2[1]), .datac (
                         sdo_5n5s2[4]), .datad (sdo_5n5s2[0]), .cin (1'b0)) ;
                         
                         defparam ix41315z52931.lut_mask = 16'h2022;
    cycloneii_lcell_comb ix41315z52941 (.combout (nx41315z19), .dataa (
                         nx41315z20), .datab (p_clock), .datac (px362), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix41315z52941.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix44942z52924 (.combout (nx44942z2), .dataa (nx44942z3)
                         , .datab (p_clock), .datac (px362), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44942z52924.lut_mask = 16'h2020;
endmodule


module modgen_counter_6_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, p_p_reset, p_p_clk, 
                            p_m_i2c_ctrl_clk_dup_364, px755, p_p_clock ) ;

    input clock ;
    output [5:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [5:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    input p_p_reset ;
    input p_p_clk ;
    input p_m_i2c_ctrl_clk_dup_364 ;
    input px755 ;
    input p_p_clock ;

    wire nx55259z3, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
         nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
         nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
         nx_modgen_counter_6_0_vcc_net;
    wire [27:0] xmplr_dummy ;




    assign nx56256z12 = 1 ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       nx56256z12), .clk (p_p_clk), .ena (nx55259z3), .aclr (
                       1'b0), .sclr (1'b0), .sload (sload)) ;
    assign nx55259z2 = 1 ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       nx55259z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx54262z2 = 1 ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       nx54262z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx53265z2 = 1 ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       nx53265z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx52268z2 = 1 ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       nx52268z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    assign nx51271z2 = 1 ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       nx51271z2), .clk (p_p_clk), .ena (nx55259z3), .aclr (1'b0
                       ), .sclr (1'b0), .sload (sload)) ;
    cycloneii_lcell_comb ix56256z52927 (.combout (nx53265z1), .cout (nx56256z6)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z8)) ;
                         
                         defparam ix56256z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52927.sum_lutc_input = "cin";
    assign nx_modgen_counter_6_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix56256z52928 (.combout (nx52268z1), .cout (nx56256z8)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z10)) ;
                         
                         defparam ix56256z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52923 (.combout (nx56256z1), .dataa (q[5]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z2)) ;
                         
                         defparam ix56256z52923.lut_mask = 16'h5a00;
                         
                         defparam ix56256z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52925 (.combout (nx55259z1), .cout (nx56256z2)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z4)) ;
                         
                         defparam ix56256z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52926 (.combout (nx54262z1), .cout (nx56256z4)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (nx56256z6)) ;
                         
                         defparam ix56256z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix56256z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix56256z52929 (.combout (nx51271z1), .cout (nx56256z10)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_6_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix56256z52929.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix55259z52924 (.combout (nx55259z3), .dataa (p_p_reset)
                         , .datab (cnt_en), .datac (p_p_clock), .datad (px755), 
                         .cin (1'b0)) ;
                         
                         defparam ix55259z52924.lut_mask = 16'h0d00;
endmodule


module sub_5_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [4:0]a ;
    input [4:0]b ;
    output [4:0]d ;
    output cout ;

    wire nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net;
    wire [8:0] xmplr_dummy ;




    cycloneii_lcell_comb ix41961z52923 (.combout (d[4]), .dataa (b[4]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_5_0_vcc_net), .cin (
                         nx41961z3)) ;
                         
                         defparam ix41961z52923.lut_mask = 16'h5a00;
                         
                         defparam ix41961z52923.sum_lutc_input = "cin";
    assign nx_sub_5_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix41961z52925 (.combout (d[3]), .cout (nx41961z3), .dataa (
                         b[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z5)) ;
                         
                         defparam ix41961z52925.lut_mask = 16'h5af5;
                         
                         defparam ix41961z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52926 (.combout (d[2]), .cout (nx41961z5), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z8)) ;
                         
                         defparam ix41961z52926.lut_mask = 16'h69d4;
                         
                         defparam ix41961z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52927 (.combout (d[1]), .cout (nx41961z8), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (nx41961z11)) ;
                         
                         defparam ix41961z52927.lut_mask = 16'h69d4;
                         
                         defparam ix41961z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix41961z52928 (.combout (d[0]), .cout (nx41961z11), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_5_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix41961z52928.lut_mask = 16'h66bb;
endmodule


module modgen_counter_16_1 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx19090z23, nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, 
         nx53265z1, nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, 
         nx56256z1, nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, 
         nx59247z1, nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, 
         nx18093z1, nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net;
    wire [79:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (nx19090z23), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (nx19090z25), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix19090z52923 (.combout (nx19090z1), .dataa (q[12]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z2)) ;
                         
                         defparam ix19090z52923.lut_mask = 16'h5a5a;
                         
                         defparam ix19090z52923.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix19090z52925 (.combout (nx18093z1), .cout (nx19090z2)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z4)) ;
                         
                         defparam ix19090z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52926 (.combout (nx17096z1), .cout (nx19090z4)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z6)) ;
                         
                         defparam ix19090z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52927 (.combout (nx60244z1), .cout (nx19090z6)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z8)) ;
                         
                         defparam ix19090z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52935 (.combout (nx52268z1), .cout (nx19090z22)
                         , .dataa (nx19090z23), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z24)) ;
                         
                         defparam ix19090z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52928 (.combout (nx59247z1), .cout (nx19090z8)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z10)) ;
                         
                         defparam ix19090z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52929 (.combout (nx58250z1), .cout (nx19090z10)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z12)) ;
                         
                         defparam ix19090z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52930 (.combout (nx57253z1), .cout (nx19090z12)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z14)) ;
                         
                         defparam ix19090z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52931 (.combout (nx56256z1), .cout (nx19090z14)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z16)) ;
                         
                         defparam ix19090z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52936 (.combout (nx51271z1), .cout (nx19090z24)
                         , .dataa (nx19090z25), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix19090z52936.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix19090z52932 (.combout (nx55259z1), .cout (nx19090z16)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z18)) ;
                         
                         defparam ix19090z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52933 (.combout (nx54262z1), .cout (nx19090z18)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z20)) ;
                         
                         defparam ix19090z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix19090z52934 (.combout (nx53265z1), .cout (nx19090z20)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_1_vcc_net), .cin (nx19090z22)) ;
                         
                         defparam ix19090z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix19090z52934.sum_lutc_input = "cin";
endmodule


module modgen_counter_16_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [15:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [15:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, 
         nx54262z1, nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, 
         nx57253z1, nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, 
         nx60244z1, nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, 
         nx19090z1, nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [97:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (cnt_en), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z14)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z15)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z3)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z3)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z4)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z5)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z5)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z6)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z7)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z7)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z15)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z8)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z9)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z9)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z11)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z11)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z13)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z13)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z16)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module fir ( clk, i_data, o_data ) ;

    input clk ;
    input [15:0]i_data ;
    output [15:0]o_data ;

    wire tap_17__14_, tap_17__10_, tap_17__9_, tap_17__8_, tap_17__7_, 
         tap_17__6_, tap_17__5_, tap_17__4_, tap_17__3_, tap_17__2_, tap_17__1_, 
         tap_17__0_, tap_16__14_, tap_16__10_, tap_16__9_, tap_16__8_, 
         tap_16__7_, tap_16__6_, tap_16__5_, tap_16__4_, tap_16__3_, tap_16__2_, 
         tap_16__1_, tap_16__0_, tap_15__14_, tap_15__10_, tap_15__9_, 
         tap_15__8_, tap_15__7_, tap_15__6_, tap_15__5_, tap_15__4_, tap_15__3_, 
         tap_15__2_, tap_15__1_, tap_15__0_, tap_14__14_, tap_14__10_, 
         tap_14__9_, tap_14__8_, tap_14__7_, tap_14__6_, tap_14__5_, tap_14__4_, 
         tap_14__3_, tap_14__2_, tap_14__1_, tap_14__0_, tap_13__14_, 
         tap_13__10_, tap_13__9_, tap_13__8_, tap_13__7_, tap_13__6_, tap_13__5_, 
         tap_13__4_, tap_13__3_, tap_13__2_, tap_13__1_, tap_13__0_, tap_12__14_, 
         tap_12__10_, tap_12__9_, tap_12__8_, tap_12__7_, tap_12__6_, tap_12__5_, 
         tap_12__4_, tap_12__3_, tap_12__2_, tap_12__1_, tap_12__0_, tap_11__14_, 
         tap_11__10_, tap_11__9_, tap_11__8_, tap_11__7_, tap_11__6_, tap_11__5_, 
         tap_11__4_, tap_11__3_, tap_11__2_, tap_11__1_, tap_11__0_, tap_10__14_, 
         tap_10__10_, tap_10__9_, tap_10__8_, tap_10__7_, tap_10__6_, tap_10__5_, 
         tap_10__4_, tap_10__3_, tap_10__2_, tap_10__1_, tap_10__0_, tap_9__14_, 
         tap_9__10_, tap_9__9_, tap_9__8_, tap_9__7_, tap_9__6_, tap_9__5_, 
         tap_9__4_, tap_9__3_, tap_9__2_, tap_9__1_, tap_9__0_, tap_8__14_, 
         tap_8__10_, tap_8__9_, tap_8__8_, tap_8__7_, tap_8__6_, tap_8__5_, 
         tap_8__4_, tap_8__3_, tap_8__2_, tap_8__1_, tap_8__0_, tap_7__14_, 
         tap_7__10_, tap_7__9_, tap_7__8_, tap_7__7_, tap_7__6_, tap_7__5_, 
         tap_7__4_, tap_7__3_, tap_7__2_, tap_7__1_, tap_7__0_, tap_6__14_, 
         tap_6__10_, tap_6__9_, tap_6__8_, tap_6__7_, tap_6__6_, tap_6__5_, 
         tap_6__4_, tap_6__3_, tap_6__2_, tap_6__1_, tap_6__0_, tap_5__14_, 
         tap_5__10_, tap_5__9_, tap_5__8_, tap_5__7_, tap_5__6_, tap_5__5_, 
         tap_5__4_, tap_5__3_, tap_5__2_, tap_5__1_, tap_5__0_, tap_4__14_, 
         tap_4__10_, tap_4__9_, tap_4__8_, tap_4__7_, tap_4__6_, tap_4__5_, 
         tap_4__4_, tap_4__3_, tap_4__2_, tap_4__1_, tap_4__0_, tap_3__14_, 
         tap_3__10_, tap_3__9_, tap_3__8_, tap_3__7_, tap_3__6_, tap_3__5_, 
         tap_3__4_, tap_3__3_, tap_3__2_, tap_3__1_, tap_3__0_, tap_2__14_, 
         tap_2__10_, tap_2__9_, tap_2__8_, tap_2__7_, tap_2__6_, tap_2__5_, 
         tap_2__4_, tap_2__3_, tap_2__2_, tap_2__1_, tap_2__0_, tap_1__14_, 
         tap_1__10_, tap_1__9_, tap_1__8_, tap_1__7_, tap_1__6_, tap_1__5_, 
         tap_1__4_, tap_1__3_, tap_1__2_, tap_1__1_, tap_1__0_, prod_17__14_, 
         prod_17__13_, prod_17__12_, prod_17__11_, prod_17__10_, prod_17__9_, 
         prod_17__8_, prod_17__7_, prod_17__6_, prod_17__5_, prod_17__4_, 
         prod_17__3_, prod_17__2_, prod_17__1_, prod_17__0_, prod_16__13_, 
         prod_16__12_, prod_16__11_, prod_16__10_, prod_16__9_, prod_16__8_, 
         prod_16__7_, prod_16__6_, prod_16__5_, prod_16__4_, prod_16__3_, 
         prod_16__2_, prod_16__1_, prod_16__0_, prod_15__13_, prod_15__12_, 
         prod_15__11_, prod_15__10_, prod_15__9_, prod_15__8_, prod_15__7_, 
         prod_15__6_, prod_15__5_, prod_15__4_, prod_15__3_, prod_15__2_, 
         prod_15__1_, prod_15__0_, prod_13__14_, prod_13__13_, prod_13__12_, 
         prod_13__11_, prod_13__10_, prod_13__9_, prod_13__8_, prod_13__7_, 
         prod_13__6_, prod_13__5_, prod_13__4_, prod_13__3_, prod_13__2_, 
         prod_13__1_, prod_13__0_, prod_12__14_, prod_12__13_, prod_12__12_, 
         prod_12__11_, prod_12__10_, prod_12__9_, prod_12__8_, prod_12__7_, 
         prod_12__6_, prod_12__5_, prod_12__4_, prod_12__3_, prod_12__2_, 
         prod_12__1_, prod_12__0_, prod_11__14_, prod_11__13_, prod_11__12_, 
         prod_11__11_, prod_11__10_, prod_11__9_, prod_11__8_, prod_11__7_, 
         prod_11__6_, prod_11__5_, prod_11__4_, prod_11__3_, prod_11__2_, 
         prod_11__1_, prod_11__0_, prod_10__14_, prod_10__13_, prod_10__12_, 
         prod_10__11_, prod_10__10_, prod_10__9_, prod_10__8_, prod_10__7_, 
         prod_10__6_, prod_10__5_, prod_10__4_, prod_10__3_, prod_10__2_, 
         prod_10__1_, prod_10__0_, prod_9__14_, prod_9__13_, prod_9__12_, 
         prod_9__11_, prod_9__10_, prod_9__9_, prod_9__8_, prod_9__7_, 
         prod_9__6_, prod_9__5_, prod_9__4_, prod_9__3_, prod_9__2_, prod_9__1_, 
         prod_9__0_, prod_8__14_, prod_8__13_, prod_8__12_, prod_8__11_, 
         prod_8__10_, prod_8__9_, prod_8__8_, prod_8__7_, prod_8__6_, prod_8__5_, 
         prod_8__4_, prod_8__3_, prod_8__2_, prod_8__1_, prod_8__0_, prod_7__14_, 
         prod_7__13_, prod_7__12_, prod_7__11_, prod_7__10_, prod_7__9_, 
         prod_7__8_, prod_7__7_, prod_7__6_, prod_7__5_, prod_7__4_, prod_7__3_, 
         prod_7__2_, prod_7__1_, prod_7__0_, prod_6__14_, prod_6__13_, 
         prod_6__12_, prod_6__11_, prod_6__10_, prod_6__9_, prod_6__8_, 
         prod_6__7_, prod_6__6_, prod_6__5_, prod_6__4_, prod_6__3_, prod_6__2_, 
         prod_6__1_, prod_6__0_, prod_5__14_, prod_5__13_, prod_5__12_, 
         prod_5__11_, prod_5__10_, prod_5__9_, prod_5__8_, prod_5__7_, 
         prod_5__6_, prod_5__5_, prod_5__4_, prod_5__3_, prod_5__2_, prod_5__1_, 
         prod_5__0_;
    wire [13:0]prod_3_;
    wire [13:0]prod_2_;
    wire [14:0]prod_1_;
    wire nx3_bus_15_, nx3_bus_14_, nx3_bus_13_, nx3_bus_12_, nx3_bus_11_, 
         nx3_bus_10_, nx3_bus_9_, nx3_bus_8_, nx3_bus_7_, nx3_bus_6_, nx3_bus_5_, 
         nx3_bus_4_, nx3_bus_3_, nx3_bus_2_, nx3_bus_1_, nx3_bus_0_, 
         nx23_bus_15_, nx23_bus_14_, nx23_bus_13_, nx23_bus_12_, nx23_bus_11_, 
         nx23_bus_10_, nx23_bus_9_, nx23_bus_8_, nx23_bus_7_, nx23_bus_6_, 
         nx23_bus_5_, nx23_bus_4_, nx23_bus_3_, nx23_bus_2_, nx23_bus_1_, 
         nx23_bus_0_, nx43_bus_15_, nx43_bus_14_, nx43_bus_13_, nx43_bus_12_, 
         nx43_bus_11_, nx43_bus_10_, nx43_bus_9_, nx43_bus_8_, nx43_bus_7_, 
         nx43_bus_6_, nx43_bus_5_, nx43_bus_4_, nx43_bus_3_, nx43_bus_2_, 
         nx43_bus_1_, nx43_bus_0_, nx63_bus_15_, nx63_bus_14_, nx63_bus_13_, 
         nx63_bus_12_, nx63_bus_11_, nx63_bus_10_, nx63_bus_9_, nx63_bus_8_, 
         nx63_bus_7_, nx63_bus_6_, nx63_bus_5_, nx63_bus_4_, nx63_bus_3_, 
         nx63_bus_2_, nx63_bus_1_, nx63_bus_0_, nx83_bus_15_, nx83_bus_14_, 
         nx83_bus_13_, nx83_bus_12_, nx83_bus_11_, nx83_bus_10_, nx83_bus_9_, 
         nx83_bus_8_, nx83_bus_7_, nx83_bus_6_, nx83_bus_5_, nx83_bus_4_, 
         nx83_bus_3_, nx83_bus_2_, nx83_bus_1_, nx83_bus_0_, nx103_bus_15_, 
         nx103_bus_14_, nx103_bus_13_, nx103_bus_12_, nx103_bus_11_, 
         nx103_bus_10_, nx103_bus_9_, nx103_bus_8_, nx103_bus_7_, nx103_bus_6_, 
         nx103_bus_5_, nx103_bus_4_, nx103_bus_3_, nx103_bus_2_, nx103_bus_1_, 
         nx103_bus_0_, nx123_bus_15_, nx123_bus_14_, nx123_bus_13_, 
         nx123_bus_12_, nx123_bus_11_, nx123_bus_10_, nx123_bus_9_, nx123_bus_8_, 
         nx123_bus_7_, nx123_bus_6_, nx123_bus_5_, nx123_bus_4_, nx123_bus_3_, 
         nx123_bus_2_, nx123_bus_1_, nx123_bus_0_, nx143_bus_15_, nx143_bus_14_, 
         nx143_bus_13_, nx143_bus_12_, nx143_bus_11_, nx143_bus_10_, 
         nx143_bus_9_, nx143_bus_8_, nx143_bus_7_, nx143_bus_6_, nx143_bus_5_, 
         nx143_bus_4_, nx143_bus_3_, nx143_bus_2_, nx143_bus_1_, nx143_bus_0_, 
         nx163_bus_15_, nx163_bus_14_, nx163_bus_13_, nx163_bus_12_, 
         nx163_bus_11_, nx163_bus_10_, nx163_bus_9_, nx163_bus_8_, nx163_bus_7_, 
         nx163_bus_6_, nx163_bus_5_, nx163_bus_4_, nx163_bus_3_, nx163_bus_2_, 
         nx163_bus_1_, nx163_bus_0_, nx183_bus_15_, nx183_bus_14_, nx183_bus_13_, 
         nx183_bus_12_, nx183_bus_11_, nx183_bus_10_, nx183_bus_9_, nx183_bus_8_, 
         nx183_bus_7_, nx183_bus_6_, nx183_bus_5_, nx183_bus_4_, nx183_bus_3_, 
         nx183_bus_2_, nx183_bus_1_, nx183_bus_0_, nx203_bus_15_, nx203_bus_14_, 
         nx203_bus_13_, nx203_bus_12_, nx203_bus_11_, nx203_bus_10_, 
         nx203_bus_9_, nx203_bus_8_, nx203_bus_7_, nx203_bus_6_, nx203_bus_5_, 
         nx203_bus_4_, nx203_bus_3_, nx203_bus_2_, nx203_bus_1_, nx203_bus_0_, 
         nx223_bus_15_, nx223_bus_14_, nx223_bus_13_, nx223_bus_12_, 
         nx223_bus_11_, nx223_bus_10_, nx223_bus_9_, nx223_bus_8_, nx223_bus_7_, 
         nx223_bus_6_, nx223_bus_5_, nx223_bus_4_, nx223_bus_3_, nx223_bus_2_, 
         nx223_bus_1_, nx223_bus_0_;
    wire [16:1]nx243_bus;
    wire [16:1]nx262_bus;
    wire [16:1]nx281_bus;
    wire [2077:0] xmplr_dummy ;




    mult_32_60 prod_1__mults21_0 (.a ({tap_1__14_,xmplr_dummy [0],
               xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3],xmplr_dummy [4],
               xmplr_dummy [5],xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],
               xmplr_dummy [9],xmplr_dummy [10],xmplr_dummy [11],
               xmplr_dummy [12],xmplr_dummy [13],xmplr_dummy [14],
               xmplr_dummy [15],tap_1__14_,xmplr_dummy [16],xmplr_dummy [17],
               tap_1__14_,tap_1__10_,tap_1__9_,tap_1__8_,tap_1__7_,tap_1__6_,
               tap_1__5_,tap_1__4_,tap_1__3_,tap_1__2_,tap_1__1_,tap_1__0_}), .d (
               {xmplr_dummy [18],xmplr_dummy [19],xmplr_dummy [20],
               xmplr_dummy [21],xmplr_dummy [22],xmplr_dummy [23],
               xmplr_dummy [24],xmplr_dummy [25],xmplr_dummy [26],
               xmplr_dummy [27],xmplr_dummy [28],prod_1_[14],prod_1_[13],
               prod_1_[12],prod_1_[11],prod_1_[10],prod_1_[9],prod_1_[8],
               prod_1_[7],prod_1_[6],prod_1_[5],prod_1_[4],prod_1_[3],prod_1_[2]
               ,prod_1_[1],prod_1_[0],xmplr_dummy [29],xmplr_dummy [30],
               xmplr_dummy [31],xmplr_dummy [32],xmplr_dummy [33],
               xmplr_dummy [34]})) ;
    mult_32_61 prod_2__mults19_1 (.a ({tap_2__14_,xmplr_dummy [35],
               xmplr_dummy [36],xmplr_dummy [37],xmplr_dummy [38],
               xmplr_dummy [39],xmplr_dummy [40],xmplr_dummy [41],
               xmplr_dummy [42],xmplr_dummy [43],xmplr_dummy [44],
               xmplr_dummy [45],xmplr_dummy [46],xmplr_dummy [47],
               xmplr_dummy [48],xmplr_dummy [49],xmplr_dummy [50],tap_2__14_,
               xmplr_dummy [51],xmplr_dummy [52],tap_2__14_,tap_2__10_,tap_2__9_
               ,tap_2__8_,tap_2__7_,tap_2__6_,tap_2__5_,tap_2__4_,tap_2__3_,
               tap_2__2_,tap_2__1_,tap_2__0_}), .d ({xmplr_dummy [53],
               xmplr_dummy [54],xmplr_dummy [55],xmplr_dummy [56],
               xmplr_dummy [57],xmplr_dummy [58],xmplr_dummy [59],
               xmplr_dummy [60],xmplr_dummy [61],xmplr_dummy [62],
               xmplr_dummy [63],xmplr_dummy [64],xmplr_dummy [65],prod_2_[13],
               prod_2_[12],prod_2_[11],prod_2_[10],prod_2_[9],prod_2_[8],
               prod_2_[7],prod_2_[6],prod_2_[5],prod_2_[4],prod_2_[3],prod_2_[2]
               ,prod_2_[1],prod_2_[0],xmplr_dummy [66],xmplr_dummy [67],
               xmplr_dummy [68],xmplr_dummy [69],xmplr_dummy [70]})) ;
    mult_32_62 prod_3__mults20_2 (.a ({tap_3__14_,xmplr_dummy [71],
               xmplr_dummy [72],xmplr_dummy [73],xmplr_dummy [74],
               xmplr_dummy [75],xmplr_dummy [76],xmplr_dummy [77],
               xmplr_dummy [78],xmplr_dummy [79],xmplr_dummy [80],
               xmplr_dummy [81],xmplr_dummy [82],xmplr_dummy [83],
               xmplr_dummy [84],xmplr_dummy [85],xmplr_dummy [86],tap_3__14_,
               xmplr_dummy [87],xmplr_dummy [88],tap_3__14_,tap_3__10_,tap_3__9_
               ,tap_3__8_,tap_3__7_,tap_3__6_,tap_3__5_,tap_3__4_,tap_3__3_,
               tap_3__2_,tap_3__1_,tap_3__0_}), .d ({xmplr_dummy [89],
               xmplr_dummy [90],xmplr_dummy [91],xmplr_dummy [92],
               xmplr_dummy [93],xmplr_dummy [94],xmplr_dummy [95],
               xmplr_dummy [96],xmplr_dummy [97],xmplr_dummy [98],
               xmplr_dummy [99],xmplr_dummy [100],prod_3_[13],prod_3_[12],
               prod_3_[11],prod_3_[10],prod_3_[9],prod_3_[8],prod_3_[7],
               prod_3_[6],prod_3_[5],prod_3_[4],prod_3_[3],prod_3_[2],prod_3_[1]
               ,prod_3_[0],xmplr_dummy [101],xmplr_dummy [102],xmplr_dummy [103]
               ,xmplr_dummy [104],xmplr_dummy [105],xmplr_dummy [106]})) ;
    mult_32_63 prod_5__mults20_3 (.a ({tap_5__14_,xmplr_dummy [107],
               xmplr_dummy [108],xmplr_dummy [109],xmplr_dummy [110],
               xmplr_dummy [111],xmplr_dummy [112],xmplr_dummy [113],
               xmplr_dummy [114],xmplr_dummy [115],xmplr_dummy [116],
               xmplr_dummy [117],xmplr_dummy [118],xmplr_dummy [119],
               xmplr_dummy [120],xmplr_dummy [121],xmplr_dummy [122],tap_5__14_,
               xmplr_dummy [123],xmplr_dummy [124],tap_5__14_,tap_5__10_,
               tap_5__9_,tap_5__8_,tap_5__7_,tap_5__6_,tap_5__5_,tap_5__4_,
               tap_5__3_,tap_5__2_,tap_5__1_,tap_5__0_}), .d ({xmplr_dummy [125]
               ,xmplr_dummy [126],xmplr_dummy [127],xmplr_dummy [128],
               xmplr_dummy [129],xmplr_dummy [130],xmplr_dummy [131],
               xmplr_dummy [132],xmplr_dummy [133],xmplr_dummy [134],
               xmplr_dummy [135],xmplr_dummy [136],prod_5__14_,prod_5__13_,
               prod_5__12_,prod_5__11_,prod_5__10_,prod_5__9_,prod_5__8_,
               prod_5__7_,prod_5__6_,prod_5__5_,prod_5__4_,prod_5__3_,prod_5__2_
               ,prod_5__1_,prod_5__0_,xmplr_dummy [137],xmplr_dummy [138],
               xmplr_dummy [139],xmplr_dummy [140],xmplr_dummy [141]})) ;
    mult_32_64 prod_6__mults21_4 (.a ({tap_6__14_,xmplr_dummy [142],
               xmplr_dummy [143],xmplr_dummy [144],xmplr_dummy [145],
               xmplr_dummy [146],xmplr_dummy [147],xmplr_dummy [148],
               xmplr_dummy [149],xmplr_dummy [150],xmplr_dummy [151],
               xmplr_dummy [152],xmplr_dummy [153],xmplr_dummy [154],
               xmplr_dummy [155],xmplr_dummy [156],xmplr_dummy [157],tap_6__14_,
               xmplr_dummy [158],xmplr_dummy [159],tap_6__14_,tap_6__10_,
               tap_6__9_,tap_6__8_,tap_6__7_,tap_6__6_,tap_6__5_,tap_6__4_,
               tap_6__3_,tap_6__2_,tap_6__1_,tap_6__0_}), .d ({xmplr_dummy [160]
               ,xmplr_dummy [161],xmplr_dummy [162],xmplr_dummy [163],
               xmplr_dummy [164],xmplr_dummy [165],xmplr_dummy [166],
               xmplr_dummy [167],xmplr_dummy [168],xmplr_dummy [169],
               xmplr_dummy [170],prod_6__14_,prod_6__13_,prod_6__12_,prod_6__11_
               ,prod_6__10_,prod_6__9_,prod_6__8_,prod_6__7_,prod_6__6_,
               prod_6__5_,prod_6__4_,prod_6__3_,prod_6__2_,prod_6__1_,prod_6__0_
               ,xmplr_dummy [171],xmplr_dummy [172],xmplr_dummy [173],
               xmplr_dummy [174],xmplr_dummy [175],xmplr_dummy [176]})) ;
    mult_32_65 prod_7__mults19_5 (.a ({tap_7__14_,xmplr_dummy [177],
               xmplr_dummy [178],xmplr_dummy [179],xmplr_dummy [180],
               xmplr_dummy [181],xmplr_dummy [182],xmplr_dummy [183],
               xmplr_dummy [184],xmplr_dummy [185],xmplr_dummy [186],
               xmplr_dummy [187],xmplr_dummy [188],xmplr_dummy [189],
               xmplr_dummy [190],xmplr_dummy [191],xmplr_dummy [192],tap_7__14_,
               xmplr_dummy [193],xmplr_dummy [194],tap_7__14_,tap_7__10_,
               tap_7__9_,tap_7__8_,tap_7__7_,tap_7__6_,tap_7__5_,tap_7__4_,
               tap_7__3_,tap_7__2_,tap_7__1_,tap_7__0_}), .d ({xmplr_dummy [195]
               ,xmplr_dummy [196],xmplr_dummy [197],xmplr_dummy [198],
               xmplr_dummy [199],xmplr_dummy [200],xmplr_dummy [201],
               xmplr_dummy [202],xmplr_dummy [203],xmplr_dummy [204],
               xmplr_dummy [205],xmplr_dummy [206],xmplr_dummy [207],prod_7__14_
               ,prod_7__13_,prod_7__12_,prod_7__11_,prod_7__10_,prod_7__9_,
               prod_7__8_,prod_7__7_,prod_7__6_,prod_7__5_,prod_7__4_,prod_7__3_
               ,prod_7__2_,prod_7__1_,prod_7__0_,xmplr_dummy [208],
               xmplr_dummy [209],xmplr_dummy [210],xmplr_dummy [211]})) ;
    mult_32_66 prod_8__mults19_6 (.a ({tap_8__14_,xmplr_dummy [212],
               xmplr_dummy [213],xmplr_dummy [214],xmplr_dummy [215],
               xmplr_dummy [216],xmplr_dummy [217],xmplr_dummy [218],
               xmplr_dummy [219],xmplr_dummy [220],xmplr_dummy [221],
               xmplr_dummy [222],xmplr_dummy [223],xmplr_dummy [224],
               xmplr_dummy [225],xmplr_dummy [226],xmplr_dummy [227],tap_8__14_,
               xmplr_dummy [228],xmplr_dummy [229],tap_8__14_,tap_8__10_,
               tap_8__9_,tap_8__8_,tap_8__7_,tap_8__6_,tap_8__5_,tap_8__4_,
               tap_8__3_,tap_8__2_,tap_8__1_,tap_8__0_}), .d ({xmplr_dummy [230]
               ,xmplr_dummy [231],xmplr_dummy [232],xmplr_dummy [233],
               xmplr_dummy [234],xmplr_dummy [235],xmplr_dummy [236],
               xmplr_dummy [237],xmplr_dummy [238],xmplr_dummy [239],
               xmplr_dummy [240],xmplr_dummy [241],xmplr_dummy [242],prod_8__14_
               ,prod_8__13_,prod_8__12_,prod_8__11_,prod_8__10_,prod_8__9_,
               prod_8__8_,prod_8__7_,prod_8__6_,prod_8__5_,prod_8__4_,prod_8__3_
               ,prod_8__2_,prod_8__1_,prod_8__0_,xmplr_dummy [243],
               xmplr_dummy [244],xmplr_dummy [245],xmplr_dummy [246]})) ;
    mult_32_67 prod_9__mults19_7 (.a ({tap_9__14_,xmplr_dummy [247],
               xmplr_dummy [248],xmplr_dummy [249],xmplr_dummy [250],
               xmplr_dummy [251],xmplr_dummy [252],xmplr_dummy [253],
               xmplr_dummy [254],xmplr_dummy [255],xmplr_dummy [256],
               xmplr_dummy [257],xmplr_dummy [258],xmplr_dummy [259],
               xmplr_dummy [260],xmplr_dummy [261],xmplr_dummy [262],tap_9__14_,
               xmplr_dummy [263],xmplr_dummy [264],tap_9__14_,tap_9__10_,
               tap_9__9_,tap_9__8_,tap_9__7_,tap_9__6_,tap_9__5_,tap_9__4_,
               tap_9__3_,tap_9__2_,tap_9__1_,tap_9__0_}), .d ({xmplr_dummy [265]
               ,xmplr_dummy [266],xmplr_dummy [267],xmplr_dummy [268],
               xmplr_dummy [269],xmplr_dummy [270],xmplr_dummy [271],
               xmplr_dummy [272],xmplr_dummy [273],xmplr_dummy [274],
               xmplr_dummy [275],xmplr_dummy [276],xmplr_dummy [277],prod_9__14_
               ,prod_9__13_,prod_9__12_,prod_9__11_,prod_9__10_,prod_9__9_,
               prod_9__8_,prod_9__7_,prod_9__6_,prod_9__5_,prod_9__4_,prod_9__3_
               ,prod_9__2_,prod_9__1_,prod_9__0_,xmplr_dummy [278],
               xmplr_dummy [279],xmplr_dummy [280],xmplr_dummy [281]})) ;
    mult_32_68 prod_10__mults19_8 (.a ({tap_10__14_,xmplr_dummy [282],
               xmplr_dummy [283],xmplr_dummy [284],xmplr_dummy [285],
               xmplr_dummy [286],xmplr_dummy [287],xmplr_dummy [288],
               xmplr_dummy [289],xmplr_dummy [290],xmplr_dummy [291],
               xmplr_dummy [292],xmplr_dummy [293],xmplr_dummy [294],
               xmplr_dummy [295],xmplr_dummy [296],xmplr_dummy [297],tap_10__14_
               ,xmplr_dummy [298],xmplr_dummy [299],tap_10__14_,tap_10__10_,
               tap_10__9_,tap_10__8_,tap_10__7_,tap_10__6_,tap_10__5_,tap_10__4_
               ,tap_10__3_,tap_10__2_,tap_10__1_,tap_10__0_}), .d ({
               xmplr_dummy [300],xmplr_dummy [301],xmplr_dummy [302],
               xmplr_dummy [303],xmplr_dummy [304],xmplr_dummy [305],
               xmplr_dummy [306],xmplr_dummy [307],xmplr_dummy [308],
               xmplr_dummy [309],xmplr_dummy [310],xmplr_dummy [311],
               xmplr_dummy [312],prod_10__14_,prod_10__13_,prod_10__12_,
               prod_10__11_,prod_10__10_,prod_10__9_,prod_10__8_,prod_10__7_,
               prod_10__6_,prod_10__5_,prod_10__4_,prod_10__3_,prod_10__2_,
               prod_10__1_,prod_10__0_,xmplr_dummy [313],xmplr_dummy [314],
               xmplr_dummy [315],xmplr_dummy [316]})) ;
    mult_32_69 prod_11__mults19_9 (.a ({tap_11__14_,xmplr_dummy [317],
               xmplr_dummy [318],xmplr_dummy [319],xmplr_dummy [320],
               xmplr_dummy [321],xmplr_dummy [322],xmplr_dummy [323],
               xmplr_dummy [324],xmplr_dummy [325],xmplr_dummy [326],
               xmplr_dummy [327],xmplr_dummy [328],xmplr_dummy [329],
               xmplr_dummy [330],xmplr_dummy [331],xmplr_dummy [332],tap_11__14_
               ,xmplr_dummy [333],xmplr_dummy [334],tap_11__14_,tap_11__10_,
               tap_11__9_,tap_11__8_,tap_11__7_,tap_11__6_,tap_11__5_,tap_11__4_
               ,tap_11__3_,tap_11__2_,tap_11__1_,tap_11__0_}), .d ({
               xmplr_dummy [335],xmplr_dummy [336],xmplr_dummy [337],
               xmplr_dummy [338],xmplr_dummy [339],xmplr_dummy [340],
               xmplr_dummy [341],xmplr_dummy [342],xmplr_dummy [343],
               xmplr_dummy [344],xmplr_dummy [345],xmplr_dummy [346],
               xmplr_dummy [347],prod_11__14_,prod_11__13_,prod_11__12_,
               prod_11__11_,prod_11__10_,prod_11__9_,prod_11__8_,prod_11__7_,
               prod_11__6_,prod_11__5_,prod_11__4_,prod_11__3_,prod_11__2_,
               prod_11__1_,prod_11__0_,xmplr_dummy [348],xmplr_dummy [349],
               xmplr_dummy [350],xmplr_dummy [351]})) ;
    mult_32_70 prod_12__mults21_10 (.a ({tap_12__14_,xmplr_dummy [352],
               xmplr_dummy [353],xmplr_dummy [354],xmplr_dummy [355],
               xmplr_dummy [356],xmplr_dummy [357],xmplr_dummy [358],
               xmplr_dummy [359],xmplr_dummy [360],xmplr_dummy [361],
               xmplr_dummy [362],xmplr_dummy [363],xmplr_dummy [364],
               xmplr_dummy [365],xmplr_dummy [366],xmplr_dummy [367],tap_12__14_
               ,xmplr_dummy [368],xmplr_dummy [369],tap_12__14_,tap_12__10_,
               tap_12__9_,tap_12__8_,tap_12__7_,tap_12__6_,tap_12__5_,tap_12__4_
               ,tap_12__3_,tap_12__2_,tap_12__1_,tap_12__0_}), .d ({
               xmplr_dummy [370],xmplr_dummy [371],xmplr_dummy [372],
               xmplr_dummy [373],xmplr_dummy [374],xmplr_dummy [375],
               xmplr_dummy [376],xmplr_dummy [377],xmplr_dummy [378],
               xmplr_dummy [379],xmplr_dummy [380],prod_12__14_,prod_12__13_,
               prod_12__12_,prod_12__11_,prod_12__10_,prod_12__9_,prod_12__8_,
               prod_12__7_,prod_12__6_,prod_12__5_,prod_12__4_,prod_12__3_,
               prod_12__2_,prod_12__1_,prod_12__0_,xmplr_dummy [381],
               xmplr_dummy [382],xmplr_dummy [383],xmplr_dummy [384],
               xmplr_dummy [385],xmplr_dummy [386]})) ;
    mult_32_71 prod_13__mults20_11 (.a ({tap_13__14_,xmplr_dummy [387],
               xmplr_dummy [388],xmplr_dummy [389],xmplr_dummy [390],
               xmplr_dummy [391],xmplr_dummy [392],xmplr_dummy [393],
               xmplr_dummy [394],xmplr_dummy [395],xmplr_dummy [396],
               xmplr_dummy [397],xmplr_dummy [398],xmplr_dummy [399],
               xmplr_dummy [400],xmplr_dummy [401],xmplr_dummy [402],tap_13__14_
               ,xmplr_dummy [403],xmplr_dummy [404],tap_13__14_,tap_13__10_,
               tap_13__9_,tap_13__8_,tap_13__7_,tap_13__6_,tap_13__5_,tap_13__4_
               ,tap_13__3_,tap_13__2_,tap_13__1_,tap_13__0_}), .d ({
               xmplr_dummy [405],xmplr_dummy [406],xmplr_dummy [407],
               xmplr_dummy [408],xmplr_dummy [409],xmplr_dummy [410],
               xmplr_dummy [411],xmplr_dummy [412],xmplr_dummy [413],
               xmplr_dummy [414],xmplr_dummy [415],xmplr_dummy [416],
               prod_13__14_,prod_13__13_,prod_13__12_,prod_13__11_,prod_13__10_,
               prod_13__9_,prod_13__8_,prod_13__7_,prod_13__6_,prod_13__5_,
               prod_13__4_,prod_13__3_,prod_13__2_,prod_13__1_,prod_13__0_,
               xmplr_dummy [417],xmplr_dummy [418],xmplr_dummy [419],
               xmplr_dummy [420],xmplr_dummy [421]})) ;
    mult_32_72 prod_15__mults20_12 (.a ({tap_15__14_,xmplr_dummy [422],
               xmplr_dummy [423],xmplr_dummy [424],xmplr_dummy [425],
               xmplr_dummy [426],xmplr_dummy [427],xmplr_dummy [428],
               xmplr_dummy [429],xmplr_dummy [430],xmplr_dummy [431],
               xmplr_dummy [432],xmplr_dummy [433],xmplr_dummy [434],
               xmplr_dummy [435],xmplr_dummy [436],xmplr_dummy [437],tap_15__14_
               ,xmplr_dummy [438],xmplr_dummy [439],tap_15__14_,tap_15__10_,
               tap_15__9_,tap_15__8_,tap_15__7_,tap_15__6_,tap_15__5_,tap_15__4_
               ,tap_15__3_,tap_15__2_,tap_15__1_,tap_15__0_}), .d ({
               xmplr_dummy [440],xmplr_dummy [441],xmplr_dummy [442],
               xmplr_dummy [443],xmplr_dummy [444],xmplr_dummy [445],
               xmplr_dummy [446],xmplr_dummy [447],xmplr_dummy [448],
               xmplr_dummy [449],xmplr_dummy [450],xmplr_dummy [451],
               prod_15__13_,prod_15__12_,prod_15__11_,prod_15__10_,prod_15__9_,
               prod_15__8_,prod_15__7_,prod_15__6_,prod_15__5_,prod_15__4_,
               prod_15__3_,prod_15__2_,prod_15__1_,prod_15__0_,xmplr_dummy [452]
               ,xmplr_dummy [453],xmplr_dummy [454],xmplr_dummy [455],
               xmplr_dummy [456],xmplr_dummy [457]})) ;
    mult_32_73 prod_16__mults19_13 (.a ({tap_16__14_,xmplr_dummy [458],
               xmplr_dummy [459],xmplr_dummy [460],xmplr_dummy [461],
               xmplr_dummy [462],xmplr_dummy [463],xmplr_dummy [464],
               xmplr_dummy [465],xmplr_dummy [466],xmplr_dummy [467],
               xmplr_dummy [468],xmplr_dummy [469],xmplr_dummy [470],
               xmplr_dummy [471],xmplr_dummy [472],xmplr_dummy [473],tap_16__14_
               ,xmplr_dummy [474],xmplr_dummy [475],tap_16__14_,tap_16__10_,
               tap_16__9_,tap_16__8_,tap_16__7_,tap_16__6_,tap_16__5_,tap_16__4_
               ,tap_16__3_,tap_16__2_,tap_16__1_,tap_16__0_}), .d ({
               xmplr_dummy [476],xmplr_dummy [477],xmplr_dummy [478],
               xmplr_dummy [479],xmplr_dummy [480],xmplr_dummy [481],
               xmplr_dummy [482],xmplr_dummy [483],xmplr_dummy [484],
               xmplr_dummy [485],xmplr_dummy [486],xmplr_dummy [487],
               xmplr_dummy [488],prod_16__13_,prod_16__12_,prod_16__11_,
               prod_16__10_,prod_16__9_,prod_16__8_,prod_16__7_,prod_16__6_,
               prod_16__5_,prod_16__4_,prod_16__3_,prod_16__2_,prod_16__1_,
               prod_16__0_,xmplr_dummy [489],xmplr_dummy [490],xmplr_dummy [491]
               ,xmplr_dummy [492],xmplr_dummy [493]})) ;
    mult_32_74 prod_17__mults21_14 (.a ({tap_17__14_,xmplr_dummy [494],
               xmplr_dummy [495],xmplr_dummy [496],xmplr_dummy [497],
               xmplr_dummy [498],xmplr_dummy [499],xmplr_dummy [500],
               xmplr_dummy [501],xmplr_dummy [502],xmplr_dummy [503],
               xmplr_dummy [504],xmplr_dummy [505],xmplr_dummy [506],
               xmplr_dummy [507],xmplr_dummy [508],xmplr_dummy [509],tap_17__14_
               ,xmplr_dummy [510],xmplr_dummy [511],tap_17__14_,tap_17__10_,
               tap_17__9_,tap_17__8_,tap_17__7_,tap_17__6_,tap_17__5_,tap_17__4_
               ,tap_17__3_,tap_17__2_,tap_17__1_,tap_17__0_}), .d ({
               xmplr_dummy [512],xmplr_dummy [513],xmplr_dummy [514],
               xmplr_dummy [515],xmplr_dummy [516],xmplr_dummy [517],
               xmplr_dummy [518],xmplr_dummy [519],xmplr_dummy [520],
               xmplr_dummy [521],xmplr_dummy [522],prod_17__14_,prod_17__13_,
               prod_17__12_,prod_17__11_,prod_17__10_,prod_17__9_,prod_17__8_,
               prod_17__7_,prod_17__6_,prod_17__5_,prod_17__4_,prod_17__3_,
               prod_17__2_,prod_17__1_,prod_17__0_,xmplr_dummy [523],
               xmplr_dummy [524],xmplr_dummy [525],xmplr_dummy [526],
               xmplr_dummy [527],xmplr_dummy [528]})) ;
    add_16_0 modgen_add_0 (.a ({prod_1_[14],xmplr_dummy [529],prod_1_[13],
             prod_1_[12],prod_1_[11],prod_1_[10],prod_1_[9],prod_1_[8],
             prod_1_[7],prod_1_[6],prod_1_[5],prod_1_[4],prod_1_[3],prod_1_[2],
             prod_1_[1],prod_1_[0]}), .b ({prod_2_[13],xmplr_dummy [530],
             xmplr_dummy [531],prod_2_[12],prod_2_[11],prod_2_[10],prod_2_[9],
             prod_2_[8],prod_2_[7],prod_2_[6],prod_2_[5],prod_2_[4],prod_2_[3],
             prod_2_[2],prod_2_[1],prod_2_[0]}), .d ({nx3_bus_15_,nx3_bus_14_,
             nx3_bus_13_,nx3_bus_12_,nx3_bus_11_,nx3_bus_10_,nx3_bus_9_,
             nx3_bus_8_,nx3_bus_7_,nx3_bus_6_,nx3_bus_5_,nx3_bus_4_,nx3_bus_3_,
             nx3_bus_2_,nx3_bus_1_,nx3_bus_0_})) ;
    add_16_1 modgen_add_1 (.a ({prod_3_[13],xmplr_dummy [532],xmplr_dummy [533],
             prod_3_[12],prod_3_[11],prod_3_[10],prod_3_[9],prod_3_[8],
             prod_3_[7],prod_3_[6],prod_3_[5],prod_3_[4],prod_3_[3],prod_3_[2],
             prod_3_[1],prod_3_[0]}), .b ({tap_4__14_,xmplr_dummy [534],
             xmplr_dummy [535],xmplr_dummy [536],tap_4__14_,xmplr_dummy [537],
             xmplr_dummy [538],tap_4__14_,tap_4__10_,tap_4__9_,tap_4__8_,
             tap_4__7_,tap_4__6_,tap_4__5_,tap_4__4_,tap_4__3_}), .d ({
             nx23_bus_15_,nx23_bus_14_,nx23_bus_13_,nx23_bus_12_,nx23_bus_11_,
             nx23_bus_10_,nx23_bus_9_,nx23_bus_8_,nx23_bus_7_,nx23_bus_6_,
             nx23_bus_5_,nx23_bus_4_,nx23_bus_3_,nx23_bus_2_,nx23_bus_1_,
             nx23_bus_0_})) ;
    add_16_2 modgen_add_2 (.a ({nx23_bus_15_,nx23_bus_14_,nx23_bus_13_,
             nx23_bus_12_,nx23_bus_11_,nx23_bus_10_,nx23_bus_9_,nx23_bus_8_,
             nx23_bus_7_,nx23_bus_6_,nx23_bus_5_,nx23_bus_4_,nx23_bus_3_,
             nx23_bus_2_,nx23_bus_1_,nx23_bus_0_}), .b ({nx3_bus_15_,nx3_bus_14_
             ,nx3_bus_13_,nx3_bus_12_,nx3_bus_11_,nx3_bus_10_,nx3_bus_9_,
             nx3_bus_8_,nx3_bus_7_,nx3_bus_6_,nx3_bus_5_,nx3_bus_4_,nx3_bus_3_,
             nx3_bus_2_,nx3_bus_1_,nx3_bus_0_}), .d ({nx43_bus_15_,nx43_bus_14_,
             nx43_bus_13_,nx43_bus_12_,nx43_bus_11_,nx43_bus_10_,nx43_bus_9_,
             nx43_bus_8_,nx43_bus_7_,nx43_bus_6_,nx43_bus_5_,nx43_bus_4_,
             nx43_bus_3_,nx43_bus_2_,nx43_bus_1_,nx43_bus_0_})) ;
    add_16_3 modgen_add_3 (.a ({prod_5__14_,prod_5__14_,prod_5__13_,prod_5__12_,
             prod_5__11_,prod_5__10_,prod_5__9_,prod_5__8_,prod_5__7_,prod_5__6_
             ,prod_5__5_,prod_5__4_,prod_5__3_,prod_5__2_,prod_5__1_,prod_5__0_}
             ), .b ({prod_6__14_,prod_6__14_,prod_6__13_,prod_6__12_,prod_6__11_
             ,prod_6__10_,prod_6__9_,prod_6__8_,prod_6__7_,prod_6__6_,prod_6__5_
             ,prod_6__4_,prod_6__3_,prod_6__2_,prod_6__1_,prod_6__0_}), .d ({
             nx63_bus_15_,nx63_bus_14_,nx63_bus_13_,nx63_bus_12_,nx63_bus_11_,
             nx63_bus_10_,nx63_bus_9_,nx63_bus_8_,nx63_bus_7_,nx63_bus_6_,
             nx63_bus_5_,nx63_bus_4_,nx63_bus_3_,nx63_bus_2_,nx63_bus_1_,
             nx63_bus_0_})) ;
    add_16_4 modgen_add_4 (.a ({prod_7__14_,prod_7__14_,prod_7__13_,prod_7__12_,
             prod_7__11_,prod_7__10_,prod_7__9_,prod_7__8_,prod_7__7_,prod_7__6_
             ,prod_7__5_,prod_7__4_,prod_7__3_,prod_7__2_,prod_7__1_,prod_7__0_}
             ), .b ({prod_8__14_,prod_8__14_,prod_8__13_,prod_8__12_,prod_8__11_
             ,prod_8__10_,prod_8__9_,prod_8__8_,prod_8__7_,prod_8__6_,prod_8__5_
             ,prod_8__4_,prod_8__3_,prod_8__2_,prod_8__1_,prod_8__0_}), .d ({
             nx83_bus_15_,nx83_bus_14_,nx83_bus_13_,nx83_bus_12_,nx83_bus_11_,
             nx83_bus_10_,nx83_bus_9_,nx83_bus_8_,nx83_bus_7_,nx83_bus_6_,
             nx83_bus_5_,nx83_bus_4_,nx83_bus_3_,nx83_bus_2_,nx83_bus_1_,
             nx83_bus_0_})) ;
    add_16_5 modgen_add_5 (.a ({nx83_bus_15_,nx83_bus_14_,nx83_bus_13_,
             nx83_bus_12_,nx83_bus_11_,nx83_bus_10_,nx83_bus_9_,nx83_bus_8_,
             nx83_bus_7_,nx83_bus_6_,nx83_bus_5_,nx83_bus_4_,nx83_bus_3_,
             nx83_bus_2_,nx83_bus_1_,nx83_bus_0_}), .b ({nx63_bus_15_,
             nx63_bus_14_,nx63_bus_13_,nx63_bus_12_,nx63_bus_11_,nx63_bus_10_,
             nx63_bus_9_,nx63_bus_8_,nx63_bus_7_,nx63_bus_6_,nx63_bus_5_,
             nx63_bus_4_,nx63_bus_3_,nx63_bus_2_,nx63_bus_1_,nx63_bus_0_}), .d (
             {nx103_bus_15_,nx103_bus_14_,nx103_bus_13_,nx103_bus_12_,
             nx103_bus_11_,nx103_bus_10_,nx103_bus_9_,nx103_bus_8_,nx103_bus_7_,
             nx103_bus_6_,nx103_bus_5_,nx103_bus_4_,nx103_bus_3_,nx103_bus_2_,
             nx103_bus_1_,nx103_bus_0_})) ;
    add_16_6 modgen_add_6 (.a ({nx43_bus_15_,nx43_bus_14_,nx43_bus_13_,
             nx43_bus_12_,nx43_bus_11_,nx43_bus_10_,nx43_bus_9_,nx43_bus_8_,
             nx43_bus_7_,nx43_bus_6_,nx43_bus_5_,nx43_bus_4_,nx43_bus_3_,
             nx43_bus_2_,nx43_bus_1_,nx43_bus_0_}), .b ({nx103_bus_15_,
             nx103_bus_14_,nx103_bus_13_,nx103_bus_12_,nx103_bus_11_,
             nx103_bus_10_,nx103_bus_9_,nx103_bus_8_,nx103_bus_7_,nx103_bus_6_,
             nx103_bus_5_,nx103_bus_4_,nx103_bus_3_,nx103_bus_2_,nx103_bus_1_,
             nx103_bus_0_}), .d ({nx123_bus_15_,nx123_bus_14_,nx123_bus_13_,
             nx123_bus_12_,nx123_bus_11_,nx123_bus_10_,nx123_bus_9_,nx123_bus_8_
             ,nx123_bus_7_,nx123_bus_6_,nx123_bus_5_,nx123_bus_4_,nx123_bus_3_,
             nx123_bus_2_,nx123_bus_1_,nx123_bus_0_})) ;
    add_16_7 modgen_add_7 (.a ({prod_9__14_,prod_9__14_,prod_9__13_,prod_9__12_,
             prod_9__11_,prod_9__10_,prod_9__9_,prod_9__8_,prod_9__7_,prod_9__6_
             ,prod_9__5_,prod_9__4_,prod_9__3_,prod_9__2_,prod_9__1_,prod_9__0_}
             ), .b ({prod_10__14_,prod_10__14_,prod_10__13_,prod_10__12_,
             prod_10__11_,prod_10__10_,prod_10__9_,prod_10__8_,prod_10__7_,
             prod_10__6_,prod_10__5_,prod_10__4_,prod_10__3_,prod_10__2_,
             prod_10__1_,prod_10__0_}), .d ({nx143_bus_15_,nx143_bus_14_,
             nx143_bus_13_,nx143_bus_12_,nx143_bus_11_,nx143_bus_10_,
             nx143_bus_9_,nx143_bus_8_,nx143_bus_7_,nx143_bus_6_,nx143_bus_5_,
             nx143_bus_4_,nx143_bus_3_,nx143_bus_2_,nx143_bus_1_,nx143_bus_0_})
             ) ;
    add_16_8 modgen_add_8 (.a ({prod_11__14_,prod_11__14_,prod_11__13_,
             prod_11__12_,prod_11__11_,prod_11__10_,prod_11__9_,prod_11__8_,
             prod_11__7_,prod_11__6_,prod_11__5_,prod_11__4_,prod_11__3_,
             prod_11__2_,prod_11__1_,prod_11__0_}), .b ({prod_12__14_,
             prod_12__14_,prod_12__13_,prod_12__12_,prod_12__11_,prod_12__10_,
             prod_12__9_,prod_12__8_,prod_12__7_,prod_12__6_,prod_12__5_,
             prod_12__4_,prod_12__3_,prod_12__2_,prod_12__1_,prod_12__0_}), .d (
             {nx163_bus_15_,nx163_bus_14_,nx163_bus_13_,nx163_bus_12_,
             nx163_bus_11_,nx163_bus_10_,nx163_bus_9_,nx163_bus_8_,nx163_bus_7_,
             nx163_bus_6_,nx163_bus_5_,nx163_bus_4_,nx163_bus_3_,nx163_bus_2_,
             nx163_bus_1_,nx163_bus_0_})) ;
    add_16_9 modgen_add_9 (.a ({nx163_bus_15_,nx163_bus_14_,nx163_bus_13_,
             nx163_bus_12_,nx163_bus_11_,nx163_bus_10_,nx163_bus_9_,nx163_bus_8_
             ,nx163_bus_7_,nx163_bus_6_,nx163_bus_5_,nx163_bus_4_,nx163_bus_3_,
             nx163_bus_2_,nx163_bus_1_,nx163_bus_0_}), .b ({nx143_bus_15_,
             nx143_bus_14_,nx143_bus_13_,nx143_bus_12_,nx143_bus_11_,
             nx143_bus_10_,nx143_bus_9_,nx143_bus_8_,nx143_bus_7_,nx143_bus_6_,
             nx143_bus_5_,nx143_bus_4_,nx143_bus_3_,nx143_bus_2_,nx143_bus_1_,
             nx143_bus_0_}), .d ({nx183_bus_15_,nx183_bus_14_,nx183_bus_13_,
             nx183_bus_12_,nx183_bus_11_,nx183_bus_10_,nx183_bus_9_,nx183_bus_8_
             ,nx183_bus_7_,nx183_bus_6_,nx183_bus_5_,nx183_bus_4_,nx183_bus_3_,
             nx183_bus_2_,nx183_bus_1_,nx183_bus_0_})) ;
    add_16_10 modgen_add_10 (.a ({prod_13__14_,prod_13__14_,prod_13__13_,
              prod_13__12_,prod_13__11_,prod_13__10_,prod_13__9_,prod_13__8_,
              prod_13__7_,prod_13__6_,prod_13__5_,prod_13__4_,prod_13__3_,
              prod_13__2_,prod_13__1_,prod_13__0_}), .b ({tap_14__14_,
              xmplr_dummy [539],xmplr_dummy [540],xmplr_dummy [541],tap_14__14_,
              xmplr_dummy [542],xmplr_dummy [543],tap_14__14_,tap_14__10_,
              tap_14__9_,tap_14__8_,tap_14__7_,tap_14__6_,tap_14__5_,tap_14__4_,
              tap_14__3_}), .d ({nx203_bus_15_,nx203_bus_14_,nx203_bus_13_,
              nx203_bus_12_,nx203_bus_11_,nx203_bus_10_,nx203_bus_9_,
              nx203_bus_8_,nx203_bus_7_,nx203_bus_6_,nx203_bus_5_,nx203_bus_4_,
              nx203_bus_3_,nx203_bus_2_,nx203_bus_1_,nx203_bus_0_})) ;
    add_16_11 modgen_add_11 (.a ({prod_16__13_,xmplr_dummy [544],prod_16__13_,
              prod_16__12_,prod_16__11_,prod_16__10_,prod_16__9_,prod_16__8_,
              prod_16__7_,prod_16__6_,prod_16__5_,prod_16__4_,prod_16__3_,
              prod_16__2_,prod_16__1_,prod_16__0_}), .b ({prod_17__14_,
              prod_17__14_,prod_17__13_,prod_17__12_,prod_17__11_,prod_17__10_,
              prod_17__9_,prod_17__8_,prod_17__7_,prod_17__6_,prod_17__5_,
              prod_17__4_,prod_17__3_,prod_17__2_,prod_17__1_,prod_17__0_}), .d (
              {nx223_bus_15_,nx223_bus_14_,nx223_bus_13_,nx223_bus_12_,
              nx223_bus_11_,nx223_bus_10_,nx223_bus_9_,nx223_bus_8_,nx223_bus_7_
              ,nx223_bus_6_,nx223_bus_5_,nx223_bus_4_,nx223_bus_3_,nx223_bus_2_,
              nx223_bus_1_,nx223_bus_0_})) ;
    add_16_12 modgen_add_12 (.a ({nx223_bus_15_,nx223_bus_14_,nx223_bus_13_,
              nx223_bus_12_,nx223_bus_11_,nx223_bus_10_,nx223_bus_9_,
              nx223_bus_8_,nx223_bus_7_,nx223_bus_6_,nx223_bus_5_,nx223_bus_4_,
              nx223_bus_3_,nx223_bus_2_,nx223_bus_1_,nx223_bus_0_}), .b ({
              prod_15__13_,xmplr_dummy [545],prod_15__13_,prod_15__12_,
              prod_15__11_,prod_15__10_,prod_15__9_,prod_15__8_,prod_15__7_,
              prod_15__6_,prod_15__5_,prod_15__4_,prod_15__3_,prod_15__2_,
              prod_15__1_,prod_15__0_}), .d ({nx243_bus[16],nx243_bus[15],
              nx243_bus[14],nx243_bus[13],nx243_bus[12],nx243_bus[11],
              nx243_bus[10],nx243_bus[9],nx243_bus[8],nx243_bus[7],nx243_bus[6],
              nx243_bus[5],nx243_bus[4],nx243_bus[3],nx243_bus[2],nx243_bus[1]})
              ) ;
    add_16_13 modgen_add_13 (.a ({nx243_bus[16],nx243_bus[15],nx243_bus[14],
              nx243_bus[13],nx243_bus[12],nx243_bus[11],nx243_bus[10],
              nx243_bus[9],nx243_bus[8],nx243_bus[7],nx243_bus[6],nx243_bus[5],
              nx243_bus[4],nx243_bus[3],nx243_bus[2],nx243_bus[1]}), .b ({
              nx203_bus_15_,nx203_bus_14_,nx203_bus_13_,nx203_bus_12_,
              nx203_bus_11_,nx203_bus_10_,nx203_bus_9_,nx203_bus_8_,nx203_bus_7_
              ,nx203_bus_6_,nx203_bus_5_,nx203_bus_4_,nx203_bus_3_,nx203_bus_2_,
              nx203_bus_1_,nx203_bus_0_}), .d ({nx262_bus[16],nx262_bus[15],
              nx262_bus[14],nx262_bus[13],nx262_bus[12],nx262_bus[11],
              nx262_bus[10],nx262_bus[9],nx262_bus[8],nx262_bus[7],nx262_bus[6],
              nx262_bus[5],nx262_bus[4],nx262_bus[3],nx262_bus[2],nx262_bus[1]})
              ) ;
    add_16_14 modgen_add_14 (.a ({nx183_bus_15_,nx183_bus_14_,nx183_bus_13_,
              nx183_bus_12_,nx183_bus_11_,nx183_bus_10_,nx183_bus_9_,
              nx183_bus_8_,nx183_bus_7_,nx183_bus_6_,nx183_bus_5_,nx183_bus_4_,
              nx183_bus_3_,nx183_bus_2_,nx183_bus_1_,nx183_bus_0_}), .b ({
              nx262_bus[16],nx262_bus[15],nx262_bus[14],nx262_bus[13],
              nx262_bus[12],nx262_bus[11],nx262_bus[10],nx262_bus[9],
              nx262_bus[8],nx262_bus[7],nx262_bus[6],nx262_bus[5],nx262_bus[4],
              nx262_bus[3],nx262_bus[2],nx262_bus[1]}), .d ({nx281_bus[16],
              nx281_bus[15],nx281_bus[14],nx281_bus[13],nx281_bus[12],
              nx281_bus[11],nx281_bus[10],nx281_bus[9],nx281_bus[8],nx281_bus[7]
              ,nx281_bus[6],nx281_bus[5],nx281_bus[4],nx281_bus[3],nx281_bus[2],
              nx281_bus[1]})) ;
    add_16_15 modgen_add_15 (.a ({nx123_bus_15_,nx123_bus_14_,nx123_bus_13_,
              nx123_bus_12_,nx123_bus_11_,nx123_bus_10_,nx123_bus_9_,
              nx123_bus_8_,nx123_bus_7_,nx123_bus_6_,nx123_bus_5_,nx123_bus_4_,
              nx123_bus_3_,nx123_bus_2_,nx123_bus_1_,nx123_bus_0_}), .b ({
              nx281_bus[16],nx281_bus[15],nx281_bus[14],nx281_bus[13],
              nx281_bus[12],nx281_bus[11],nx281_bus[10],nx281_bus[9],
              nx281_bus[8],nx281_bus[7],nx281_bus[6],nx281_bus[5],nx281_bus[4],
              nx281_bus[3],nx281_bus[2],nx281_bus[1]}), .d ({o_data[15],
              o_data[14],o_data[13],o_data[12],o_data[11],o_data[10],o_data[9],
              o_data[8],o_data[7],o_data[6],o_data[5],o_data[4],o_data[3],
              o_data[2],o_data[1],o_data[0]})) ;
    cycloneii_lcell_ff reg_tap_9__9_ (.regout (tap_9__9_), .datain (tap_8__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__8_ (.regout (tap_9__8_), .datain (tap_8__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__7_ (.regout (tap_9__7_), .datain (tap_8__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__6_ (.regout (tap_9__6_), .datain (tap_8__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__5_ (.regout (tap_9__5_), .datain (tap_8__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__4_ (.regout (tap_9__4_), .datain (tap_8__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__3_ (.regout (tap_9__3_), .datain (tap_8__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__2_ (.regout (tap_9__2_), .datain (tap_8__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__14_ (.regout (tap_9__14_), .datain (tap_8__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__10_ (.regout (tap_9__10_), .datain (tap_8__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__1_ (.regout (tap_9__1_), .datain (tap_8__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_9__0_ (.regout (tap_9__0_), .datain (tap_8__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__9_ (.regout (tap_8__9_), .datain (tap_7__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__8_ (.regout (tap_8__8_), .datain (tap_7__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__7_ (.regout (tap_8__7_), .datain (tap_7__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__6_ (.regout (tap_8__6_), .datain (tap_7__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__5_ (.regout (tap_8__5_), .datain (tap_7__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__4_ (.regout (tap_8__4_), .datain (tap_7__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__3_ (.regout (tap_8__3_), .datain (tap_7__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__2_ (.regout (tap_8__2_), .datain (tap_7__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__14_ (.regout (tap_8__14_), .datain (tap_7__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__10_ (.regout (tap_8__10_), .datain (tap_7__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__1_ (.regout (tap_8__1_), .datain (tap_7__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_8__0_ (.regout (tap_8__0_), .datain (tap_7__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__9_ (.regout (tap_7__9_), .datain (tap_6__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__8_ (.regout (tap_7__8_), .datain (tap_6__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__7_ (.regout (tap_7__7_), .datain (tap_6__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__6_ (.regout (tap_7__6_), .datain (tap_6__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__5_ (.regout (tap_7__5_), .datain (tap_6__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__4_ (.regout (tap_7__4_), .datain (tap_6__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__3_ (.regout (tap_7__3_), .datain (tap_6__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__2_ (.regout (tap_7__2_), .datain (tap_6__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__14_ (.regout (tap_7__14_), .datain (tap_6__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__10_ (.regout (tap_7__10_), .datain (tap_6__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__1_ (.regout (tap_7__1_), .datain (tap_6__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_7__0_ (.regout (tap_7__0_), .datain (tap_6__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__9_ (.regout (tap_6__9_), .datain (tap_5__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__8_ (.regout (tap_6__8_), .datain (tap_5__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__7_ (.regout (tap_6__7_), .datain (tap_5__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__6_ (.regout (tap_6__6_), .datain (tap_5__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__5_ (.regout (tap_6__5_), .datain (tap_5__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__4_ (.regout (tap_6__4_), .datain (tap_5__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__3_ (.regout (tap_6__3_), .datain (tap_5__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__2_ (.regout (tap_6__2_), .datain (tap_5__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__14_ (.regout (tap_6__14_), .datain (tap_5__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__10_ (.regout (tap_6__10_), .datain (tap_5__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__1_ (.regout (tap_6__1_), .datain (tap_5__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_6__0_ (.regout (tap_6__0_), .datain (tap_5__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__9_ (.regout (tap_5__9_), .datain (tap_4__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__8_ (.regout (tap_5__8_), .datain (tap_4__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__7_ (.regout (tap_5__7_), .datain (tap_4__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__6_ (.regout (tap_5__6_), .datain (tap_4__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__5_ (.regout (tap_5__5_), .datain (tap_4__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__4_ (.regout (tap_5__4_), .datain (tap_4__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__3_ (.regout (tap_5__3_), .datain (tap_4__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__2_ (.regout (tap_5__2_), .datain (tap_4__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__14_ (.regout (tap_5__14_), .datain (tap_4__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__10_ (.regout (tap_5__10_), .datain (tap_4__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__1_ (.regout (tap_5__1_), .datain (tap_4__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_5__0_ (.regout (tap_5__0_), .datain (tap_4__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__9_ (.regout (tap_4__9_), .datain (tap_3__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__8_ (.regout (tap_4__8_), .datain (tap_3__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__7_ (.regout (tap_4__7_), .datain (tap_3__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__6_ (.regout (tap_4__6_), .datain (tap_3__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__5_ (.regout (tap_4__5_), .datain (tap_3__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__4_ (.regout (tap_4__4_), .datain (tap_3__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__3_ (.regout (tap_4__3_), .datain (tap_3__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__2_ (.regout (tap_4__2_), .datain (tap_3__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__14_ (.regout (tap_4__14_), .datain (tap_3__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__10_ (.regout (tap_4__10_), .datain (tap_3__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__1_ (.regout (tap_4__1_), .datain (tap_3__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_4__0_ (.regout (tap_4__0_), .datain (tap_3__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__9_ (.regout (tap_3__9_), .datain (tap_2__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__8_ (.regout (tap_3__8_), .datain (tap_2__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__7_ (.regout (tap_3__7_), .datain (tap_2__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__6_ (.regout (tap_3__6_), .datain (tap_2__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__5_ (.regout (tap_3__5_), .datain (tap_2__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__4_ (.regout (tap_3__4_), .datain (tap_2__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__3_ (.regout (tap_3__3_), .datain (tap_2__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__2_ (.regout (tap_3__2_), .datain (tap_2__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__14_ (.regout (tap_3__14_), .datain (tap_2__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__10_ (.regout (tap_3__10_), .datain (tap_2__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__1_ (.regout (tap_3__1_), .datain (tap_2__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_3__0_ (.regout (tap_3__0_), .datain (tap_2__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__9_ (.regout (tap_2__9_), .datain (tap_1__9_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__8_ (.regout (tap_2__8_), .datain (tap_1__8_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__7_ (.regout (tap_2__7_), .datain (tap_1__7_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__6_ (.regout (tap_2__6_), .datain (tap_1__6_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__5_ (.regout (tap_2__5_), .datain (tap_1__5_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__4_ (.regout (tap_2__4_), .datain (tap_1__4_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__3_ (.regout (tap_2__3_), .datain (tap_1__3_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__2_ (.regout (tap_2__2_), .datain (tap_1__2_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__14_ (.regout (tap_2__14_), .datain (tap_1__14_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__10_ (.regout (tap_2__10_), .datain (tap_1__10_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__1_ (.regout (tap_2__1_), .datain (tap_1__1_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_2__0_ (.regout (tap_2__0_), .datain (tap_1__0_), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__9_ (.regout (tap_17__9_), .datain (tap_16__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__8_ (.regout (tap_17__8_), .datain (tap_16__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__7_ (.regout (tap_17__7_), .datain (tap_16__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__6_ (.regout (tap_17__6_), .datain (tap_16__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__5_ (.regout (tap_17__5_), .datain (tap_16__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__4_ (.regout (tap_17__4_), .datain (tap_16__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__3_ (.regout (tap_17__3_), .datain (tap_16__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__2_ (.regout (tap_17__2_), .datain (tap_16__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__14_ (.regout (tap_17__14_), .datain (
                       tap_16__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__10_ (.regout (tap_17__10_), .datain (
                       tap_16__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__1_ (.regout (tap_17__1_), .datain (tap_16__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_17__0_ (.regout (tap_17__0_), .datain (tap_16__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__9_ (.regout (tap_16__9_), .datain (tap_15__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__8_ (.regout (tap_16__8_), .datain (tap_15__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__7_ (.regout (tap_16__7_), .datain (tap_15__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__6_ (.regout (tap_16__6_), .datain (tap_15__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__5_ (.regout (tap_16__5_), .datain (tap_15__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__4_ (.regout (tap_16__4_), .datain (tap_15__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__3_ (.regout (tap_16__3_), .datain (tap_15__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__2_ (.regout (tap_16__2_), .datain (tap_15__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__14_ (.regout (tap_16__14_), .datain (
                       tap_15__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__10_ (.regout (tap_16__10_), .datain (
                       tap_15__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__1_ (.regout (tap_16__1_), .datain (tap_15__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_16__0_ (.regout (tap_16__0_), .datain (tap_15__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__9_ (.regout (tap_15__9_), .datain (tap_14__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__8_ (.regout (tap_15__8_), .datain (tap_14__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__7_ (.regout (tap_15__7_), .datain (tap_14__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__6_ (.regout (tap_15__6_), .datain (tap_14__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__5_ (.regout (tap_15__5_), .datain (tap_14__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__4_ (.regout (tap_15__4_), .datain (tap_14__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__3_ (.regout (tap_15__3_), .datain (tap_14__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__2_ (.regout (tap_15__2_), .datain (tap_14__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__14_ (.regout (tap_15__14_), .datain (
                       tap_14__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__10_ (.regout (tap_15__10_), .datain (
                       tap_14__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__1_ (.regout (tap_15__1_), .datain (tap_14__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_15__0_ (.regout (tap_15__0_), .datain (tap_14__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__9_ (.regout (tap_14__9_), .datain (tap_13__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__8_ (.regout (tap_14__8_), .datain (tap_13__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__7_ (.regout (tap_14__7_), .datain (tap_13__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__6_ (.regout (tap_14__6_), .datain (tap_13__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__5_ (.regout (tap_14__5_), .datain (tap_13__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__4_ (.regout (tap_14__4_), .datain (tap_13__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__3_ (.regout (tap_14__3_), .datain (tap_13__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__2_ (.regout (tap_14__2_), .datain (tap_13__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__14_ (.regout (tap_14__14_), .datain (
                       tap_13__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__10_ (.regout (tap_14__10_), .datain (
                       tap_13__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__1_ (.regout (tap_14__1_), .datain (tap_13__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_14__0_ (.regout (tap_14__0_), .datain (tap_13__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__9_ (.regout (tap_13__9_), .datain (tap_12__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__8_ (.regout (tap_13__8_), .datain (tap_12__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__7_ (.regout (tap_13__7_), .datain (tap_12__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__6_ (.regout (tap_13__6_), .datain (tap_12__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__5_ (.regout (tap_13__5_), .datain (tap_12__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__4_ (.regout (tap_13__4_), .datain (tap_12__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__3_ (.regout (tap_13__3_), .datain (tap_12__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__2_ (.regout (tap_13__2_), .datain (tap_12__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__14_ (.regout (tap_13__14_), .datain (
                       tap_12__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__10_ (.regout (tap_13__10_), .datain (
                       tap_12__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__1_ (.regout (tap_13__1_), .datain (tap_12__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_13__0_ (.regout (tap_13__0_), .datain (tap_12__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__9_ (.regout (tap_12__9_), .datain (tap_11__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__8_ (.regout (tap_12__8_), .datain (tap_11__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__7_ (.regout (tap_12__7_), .datain (tap_11__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__6_ (.regout (tap_12__6_), .datain (tap_11__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__5_ (.regout (tap_12__5_), .datain (tap_11__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__4_ (.regout (tap_12__4_), .datain (tap_11__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__3_ (.regout (tap_12__3_), .datain (tap_11__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__2_ (.regout (tap_12__2_), .datain (tap_11__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__14_ (.regout (tap_12__14_), .datain (
                       tap_11__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__10_ (.regout (tap_12__10_), .datain (
                       tap_11__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__1_ (.regout (tap_12__1_), .datain (tap_11__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_12__0_ (.regout (tap_12__0_), .datain (tap_11__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__9_ (.regout (tap_11__9_), .datain (tap_10__9_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__8_ (.regout (tap_11__8_), .datain (tap_10__8_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__7_ (.regout (tap_11__7_), .datain (tap_10__7_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__6_ (.regout (tap_11__6_), .datain (tap_10__6_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__5_ (.regout (tap_11__5_), .datain (tap_10__5_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__4_ (.regout (tap_11__4_), .datain (tap_10__4_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__3_ (.regout (tap_11__3_), .datain (tap_10__3_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__2_ (.regout (tap_11__2_), .datain (tap_10__2_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__14_ (.regout (tap_11__14_), .datain (
                       tap_10__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__10_ (.regout (tap_11__10_), .datain (
                       tap_10__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__1_ (.regout (tap_11__1_), .datain (tap_10__1_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_11__0_ (.regout (tap_11__0_), .datain (tap_10__0_
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__9_ (.regout (tap_10__9_), .datain (tap_9__9_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__8_ (.regout (tap_10__8_), .datain (tap_9__8_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__7_ (.regout (tap_10__7_), .datain (tap_9__7_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__6_ (.regout (tap_10__6_), .datain (tap_9__6_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__5_ (.regout (tap_10__5_), .datain (tap_9__5_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__4_ (.regout (tap_10__4_), .datain (tap_9__4_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__3_ (.regout (tap_10__3_), .datain (tap_9__3_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__2_ (.regout (tap_10__2_), .datain (tap_9__2_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__14_ (.regout (tap_10__14_), .datain (
                       tap_9__14_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__10_ (.regout (tap_10__10_), .datain (
                       tap_9__10_), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__1_ (.regout (tap_10__1_), .datain (tap_9__1_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_10__0_ (.regout (tap_10__0_), .datain (tap_9__0_)
                       , .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__9_ (.regout (tap_1__9_), .datain (i_data[9]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__8_ (.regout (tap_1__8_), .datain (i_data[8]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__7_ (.regout (tap_1__7_), .datain (i_data[7]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__6_ (.regout (tap_1__6_), .datain (i_data[6]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__5_ (.regout (tap_1__5_), .datain (i_data[5]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__4_ (.regout (tap_1__4_), .datain (i_data[4]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__3_ (.regout (tap_1__3_), .datain (i_data[3]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__2_ (.regout (tap_1__2_), .datain (i_data[2]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__14_ (.regout (tap_1__14_), .datain (i_data[14]
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__10_ (.regout (tap_1__10_), .datain (i_data[10]
                       ), .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__1_ (.regout (tap_1__1_), .datain (i_data[1]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap_1__0_ (.regout (tap_1__0_), .datain (i_data[0]), 
                       .sdata (1'b0), .clk (clk), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
endmodule


module add_16_15 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_15_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_15_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_15_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_15_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_14 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_14_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_14_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_14_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_14_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_13 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_13_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_13_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_13_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_13_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_12 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
         nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
         nx2247z9, nx2247z6, nx2247z4, nx_add_16_12_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z15), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z18)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_12_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z18), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z21)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z21), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z24)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z24), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z27)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z27), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z30)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z30), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z33)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z33), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z36)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z36), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z39)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z39), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z42)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z42), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z45)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z45), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_12_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z9)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z9), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z12)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z12), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_12_vcc_net), .cin (nx2247z15)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_11 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
         nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
         nx2247z9, nx2247z6, nx2247z4, nx_add_16_11_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z15), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z18)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_11_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z18), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z21)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z21), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z24)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z24), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z27)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z27), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z30)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z30), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z33)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z33), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z36)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z36), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z39)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z39), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z42)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z42), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z45)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z45), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_11_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z9)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z9), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z12)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z12), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_11_vcc_net), .cin (nx2247z15)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_10 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, nx2247z26, 
         nx2247z23, nx2247z20, nx2247z17, nx2247z15, nx2247z13, nx2247z10, 
         nx2247z8, nx2247z6, nx2247z4, nx_add_16_10_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z10), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
    assign nx_add_16_10_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z15)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z15), .dataa (
                         b[11]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z17)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z17), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z20)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z20), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z23)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z23), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z26)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z26), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z29)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z29), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z32)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z32), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z35)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z35), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z38)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z38), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z41)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z41), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_10_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[15]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z8)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z8), .dataa (
                         b[15]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_10_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
endmodule


module add_16_9 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_9_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_9_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_9_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_9_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_8 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_8_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_8_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_8_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_8_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_7 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_7_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_7_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_7_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_7_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_6 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_6_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_6_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_6_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_6_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_5 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_5_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_5_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_5_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_5_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_4 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_4_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_4_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_4_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_4_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_3 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_3_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_3_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_3_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_3_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
         nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
         nx2247z10, nx2247z7, nx2247z4, nx_add_16_2_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z16), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z19), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z22), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z25), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z28), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z31), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z34), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z37), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z40), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z43), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z46)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z46), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_2_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z7), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z10), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_2_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z39, nx2247z36, nx2247z33, nx2247z30, nx2247z27, nx2247z24, 
         nx2247z21, nx2247z18, nx2247z15, nx2247z13, nx2247z11, nx2247z8, 
         nx2247z6, nx2247z5, nx2247z4, nx_add_16_1_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z6), .dataa (
                         b[15]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z8)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    assign nx_add_16_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z8), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z11)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z11), .dataa (
                         b[11]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z13), .dataa (
                         b[11]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z15)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z15), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z18)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z18), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z21)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z21), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z24)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z24), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z27)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z27), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z30)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z30), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z33)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z33), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z36)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z36), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z39)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z39), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_1_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z5)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z5), .dataa (
                         b[15]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
endmodule


module add_16_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, nx2247z28, 
         nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, nx2247z10, 
         nx2247z7, nx2247z5, nx2247z4, nx_add_16_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z10), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
    assign nx_add_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z13), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z16), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z19), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z22), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z25), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z28), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z31), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z34), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z37), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z40), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z43), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_0_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z5)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z5), .dataa (
                         b[15]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z7), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
endmodule


module mult_32_74 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx5238z2, nx5238z15, nx5238z14, nx5238z13, nx5238z12, nx5238z11, 
         nx5238z10, nx5238z9, nx5238z8, nx5238z7, nx5238z6, nx5238z5, nx5238z4, 
         nx5238z3, nx_mult_32_74_vcc_net;
    wire [21:0] xmplr_dummy ;




    assign d[20] = a[31] ;
    assign d[19] = a[31] ;
    assign d[17] = d[16] ;
    cycloneii_lcell_comb ix5238z52923 (.combout (d[18]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_74_vcc_net), .cin (
                         nx5238z2)) ;
                         defparam ix5238z52923.lut_mask = 16'hf000;
                         
                         defparam ix5238z52923.sum_lutc_input = "cin";
    assign nx_mult_32_74_vcc_net = 1 ;
    cycloneii_lcell_comb ix5238z52925 (.combout (d[16]), .cout (nx5238z2), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z3)) ;
                         
                         defparam ix5238z52925.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52926 (.combout (d[15]), .cout (nx5238z3), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z4)) ;
                         
                         defparam ix5238z52926.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52927 (.combout (d[14]), .cout (nx5238z4), .dataa (
                         a[14]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z5)) ;
                         
                         defparam ix5238z52927.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52928 (.combout (d[13]), .cout (nx5238z5), .dataa (
                         a[14]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z6)) ;
                         
                         defparam ix5238z52928.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52929 (.combout (d[12]), .cout (nx5238z6), .dataa (
                         a[14]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z7)) ;
                         
                         defparam ix5238z52929.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52930 (.combout (d[11]), .cout (nx5238z7), .dataa (
                         a[11]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z8)) ;
                         
                         defparam ix5238z52930.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52931 (.combout (d[10]), .cout (nx5238z8), .dataa (
                         a[10]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z9)) ;
                         
                         defparam ix5238z52931.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52932 (.combout (d[9]), .cout (nx5238z9), .dataa (
                         a[9]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z10)) ;
                         
                         defparam ix5238z52932.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52933 (.combout (d[8]), .cout (nx5238z10), .dataa (
                         a[8]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z11)) ;
                         
                         defparam ix5238z52933.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52934 (.combout (d[7]), .cout (nx5238z11), .dataa (
                         a[7]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z12)) ;
                         
                         defparam ix5238z52934.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52935 (.combout (d[6]), .cout (nx5238z12), .dataa (
                         a[6]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_74_vcc_net), .cin (nx5238z13)) ;
                         
                         defparam ix5238z52935.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52936 (.cout (nx5238z13), .dataa (a[5]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_mult_32_74_vcc_net), .cin (
                         nx5238z14)) ;
                         
                         defparam ix5238z52936.lut_mask = 16'h00e8;
                         
                         defparam ix5238z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52937 (.cout (nx5238z14), .dataa (a[4]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_mult_32_74_vcc_net), .cin (
                         nx5238z15)) ;
                         
                         defparam ix5238z52937.lut_mask = 16'h00e8;
                         
                         defparam ix5238z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52938 (.cout (nx5238z15), .dataa (a[0]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_mult_32_74_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix5238z52938.lut_mask = 16'h0088;
endmodule


module mult_32_73 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_73_vcc_net;
    wire [20:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_15_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_73_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_15_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_73_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_15_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_73_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_15_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_73_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_15_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_73_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_15_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_73_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_15_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_73_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_15_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_73_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_15_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_73_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_15_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_15_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52933 (.cout (nx253z10), .dataa (
                         a[4]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_73_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_15_ix253z52933.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_15_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_73_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_15_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_15_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_73_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_15_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_15_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_15_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_73_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_15_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_73_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_72 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx6235z2, nx6235z17, nx6235z16, nx6235z15, nx6235z14, nx6235z13, 
         nx6235z12, nx6235z11, nx6235z10, nx6235z9, nx6235z8, nx6235z7, nx6235z6, 
         nx6235z5, nx6235z4, nx6235z3, nx_mult_32_72_vcc_net;
    wire [26:0] xmplr_dummy ;




    assign d[18] = d[19] ;
    assign d[17] = d[16] ;
    cycloneii_lcell_comb ix6235z52923 (.combout (d[19]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         nx6235z2)) ;
                         defparam ix6235z52923.lut_mask = 16'hf000;
                         
                         defparam ix6235z52923.sum_lutc_input = "cin";
    assign nx_mult_32_72_vcc_net = 1 ;
    cycloneii_lcell_comb ix6235z52925 (.combout (d[16]), .cout (nx6235z2), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z3)) ;
                         
                         defparam ix6235z52925.lut_mask = 16'h692b;
                         
                         defparam ix6235z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52926 (.combout (d[15]), .cout (nx6235z3), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z4)) ;
                         
                         defparam ix6235z52926.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52927 (.combout (d[14]), .cout (nx6235z4), .dataa (
                         a[14]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z5)) ;
                         
                         defparam ix6235z52927.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52928 (.combout (d[13]), .cout (nx6235z5), .dataa (
                         a[14]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z6)) ;
                         
                         defparam ix6235z52928.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52929 (.combout (d[12]), .cout (nx6235z6), .dataa (
                         a[14]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z7)) ;
                         
                         defparam ix6235z52929.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52930 (.combout (d[11]), .cout (nx6235z7), .dataa (
                         a[11]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z8)) ;
                         
                         defparam ix6235z52930.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52931 (.combout (d[10]), .cout (nx6235z8), .dataa (
                         a[10]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z9)) ;
                         
                         defparam ix6235z52931.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52932 (.combout (d[9]), .cout (nx6235z9), .dataa (
                         a[9]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z10)) ;
                         
                         defparam ix6235z52932.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52933 (.combout (d[8]), .cout (nx6235z10), .dataa (
                         a[8]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z11)) ;
                         
                         defparam ix6235z52933.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52934 (.combout (d[7]), .cout (nx6235z11), .dataa (
                         a[7]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z12)) ;
                         
                         defparam ix6235z52934.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52935 (.combout (d[6]), .cout (nx6235z12), .dataa (
                         a[6]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_72_vcc_net), .cin (nx6235z13)) ;
                         
                         defparam ix6235z52935.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52936 (.cout (nx6235z13), .dataa (a[5]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         nx6235z14)) ;
                         
                         defparam ix6235z52936.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52937 (.cout (nx6235z14), .dataa (a[4]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         nx6235z15)) ;
                         
                         defparam ix6235z52937.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52938 (.cout (nx6235z15), .dataa (a[3]), .datab (
                         a[0]), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         nx6235z16)) ;
                         
                         defparam ix6235z52938.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52939 (.cout (nx6235z16), .dataa (a[2]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         nx6235z17)) ;
                         
                         defparam ix6235z52939.lut_mask = 16'h0050;
                         
                         defparam ix6235z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52940 (.cout (nx6235z17), .dataa (a[1]), .datab (
                         a[0]), .datac (1'b1), .datad (nx_mult_32_72_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix6235z52940.lut_mask = 16'h0011;
endmodule


module mult_32_71 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx1250z2, nx1250z13, nx1250z12, nx1250z11, nx1250z10, nx1250z9, 
         nx1250z8, nx1250z7, nx1250z6, nx1250z5, nx1250z4, nx1250z3, 
         nx_mult_32_71_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[19] = a[31] ;
    assign d[18] = a[31] ;
    assign d[17] = a[14] ;
    assign d[16] = a[31] ;
    assign d[15] = a[31] ;
    cycloneii_lcell_comb modgen_add_13_ix1250z52925 (.combout (d[13]), .cout (
                         nx1250z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1
                         ), .datad (nx_mult_32_71_vcc_net), .cin (nx1250z3)) ;
                         
                         defparam modgen_add_13_ix1250z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52925.sum_lutc_input = "cin";
    assign nx_mult_32_71_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_13_ix1250z52926 (.combout (d[12]), .cout (
                         nx1250z3), .dataa (a[14]), .datab (a[10]), .datac (1'b1
                         ), .datad (nx_mult_32_71_vcc_net), .cin (nx1250z4)) ;
                         
                         defparam modgen_add_13_ix1250z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52927 (.combout (d[11]), .cout (
                         nx1250z4), .dataa (a[11]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z5)) ;
                         
                         defparam modgen_add_13_ix1250z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52928 (.combout (d[10]), .cout (
                         nx1250z5), .dataa (a[10]), .datab (a[8]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z6)) ;
                         
                         defparam modgen_add_13_ix1250z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52929 (.combout (d[9]), .cout (
                         nx1250z6), .dataa (a[9]), .datab (a[7]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z7)) ;
                         
                         defparam modgen_add_13_ix1250z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52930 (.combout (d[8]), .cout (
                         nx1250z7), .dataa (a[8]), .datab (a[6]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z8)) ;
                         
                         defparam modgen_add_13_ix1250z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52931 (.combout (d[7]), .cout (
                         nx1250z8), .dataa (a[7]), .datab (a[5]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z9)) ;
                         
                         defparam modgen_add_13_ix1250z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52932 (.combout (d[6]), .cout (
                         nx1250z9), .dataa (a[6]), .datab (a[4]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z10)) ;
                         
                         defparam modgen_add_13_ix1250z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52933 (.combout (d[5]), .cout (
                         nx1250z10), .dataa (a[5]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_71_vcc_net), .cin (nx1250z11)) ;
                         
                         defparam modgen_add_13_ix1250z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_13_ix1250z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52934 (.cout (nx1250z11), .dataa (
                         a[4]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_71_vcc_net), .cin (nx1250z12)) ;
                         
                         defparam modgen_add_13_ix1250z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_13_ix1250z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52935 (.cout (nx1250z12), .dataa (
                         a[3]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_71_vcc_net), .cin (nx1250z13)) ;
                         
                         defparam modgen_add_13_ix1250z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_13_ix1250z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_13_ix1250z52936 (.cout (nx1250z13), .dataa (
                         a[0]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_71_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_13_ix1250z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix1250z52923 (.combout (d[14]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_71_vcc_net), .cin (
                         nx1250z2)) ;
                         defparam ix1250z52923.lut_mask = 16'hf000;
                         
                         defparam ix1250z52923.sum_lutc_input = "cin";
endmodule


module mult_32_70 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire d_11__rename1271, d_10__rename1272, d_9__rename1273, d_8__rename1274, 
         d_7__rename1275, d_6__rename1276, d_5__rename1277, d_4__rename1278, 
         d_3__rename1279, d_2__rename1280, b_10__rename1282, nx3244z2, nx3244z16, 
         nx3244z15, nx3244z14, nx3244z13, nx3244z12, nx3244z11, nx3244z10, 
         nx3244z9, nx3244z8, nx3244z7, nx3244z6, nx3244z26, nx3244z25, nx3244z24, 
         nx3244z23, nx3244z22, nx3244z21, nx3244z20, nx3244z19, nx3244z18, 
         nx3244z17, nx3244z4, nx3244z3, nx3244z5, nx_mult_32_70_vcc_net;
    wire [39:0] xmplr_dummy ;




    assign d[20] = a[31] ;
    assign d[19] = a[31] ;
    assign d[18] = a[14] ;
    assign d[17] = a[31] ;
    cycloneii_lcell_comb modgen_add_12_ix3244z52925 (.combout (d[15]), .cout (
                         nx3244z2), .dataa (a[31]), .datab (a[14]), .datac (1'b1
                         ), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z3)) ;
                         
                         defparam modgen_add_12_ix3244z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52925.sum_lutc_input = "cin";
    assign nx_mult_32_70_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_12_ix3244z52926 (.combout (d[14]), .cout (
                         nx3244z3), .dataa (a[14]), .datab (a[11]), .datac (1'b1
                         ), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z4)) ;
                         
                         defparam modgen_add_12_ix3244z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52927 (.combout (d[13]), .cout (
                         nx3244z4), .dataa (nx3244z5), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z17)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52941 (.combout (d[12]), .cout (
                         nx3244z17), .dataa (d_11__rename1271), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z18)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52941.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52941.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52942 (.combout (d[11]), .cout (
                         nx3244z18), .dataa (d_10__rename1272), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z19)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52942.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52942.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52943 (.combout (d[10]), .cout (
                         nx3244z19), .dataa (d_9__rename1273), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z20)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52943.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52943.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52944 (.combout (d[9]), .cout (
                         nx3244z20), .dataa (d_8__rename1274), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z21)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52944.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52944.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52945 (.combout (d[8]), .cout (
                         nx3244z21), .dataa (d_7__rename1275), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z22)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52945.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52945.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52946 (.combout (d[7]), .cout (
                         nx3244z22), .dataa (d_6__rename1276), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z23)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52946.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52946.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52947 (.combout (d[6]), .cout (
                         nx3244z23), .dataa (d_5__rename1277), .datab (a[3]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z24)
                         ) ;
                         
                         defparam modgen_add_12_ix3244z52947.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_12_ix3244z52947.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52948 (.cout (nx3244z24), .dataa (
                         d_4__rename1278), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_70_vcc_net), .cin (nx3244z25)) ;
                         
                         defparam modgen_add_12_ix3244z52948.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_12_ix3244z52948.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52949 (.cout (nx3244z25), .dataa (
                         d_3__rename1279), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_70_vcc_net), .cin (nx3244z26)) ;
                         
                         defparam modgen_add_12_ix3244z52949.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_12_ix3244z52949.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_12_ix3244z52950 (.cout (nx3244z26), .dataa (
                         a[0]), .datab (d_2__rename1280), .datac (1'b1), .datad (
                         nx_mult_32_70_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_12_ix3244z52950.lut_mask = 16'h0088;
    cycloneii_lcell_comb modgen_add_11_ix3244z52929 (.combout (d_11__rename1271)
                         , .cout (b_10__rename1282), .dataa (a[14]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_mult_32_70_vcc_net), 
                         .cin (nx3244z6)) ;
                         
                         defparam modgen_add_11_ix3244z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52930 (.combout (d_10__rename1272)
                         , .cout (nx3244z6), .dataa (a[11]), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z7)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52931 (.combout (d_9__rename1273)
                         , .cout (nx3244z7), .dataa (a[10]), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z8)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52932 (.combout (d_8__rename1274)
                         , .cout (nx3244z8), .dataa (a[9]), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z9)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52933 (.combout (d_7__rename1275)
                         , .cout (nx3244z9), .dataa (a[8]), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z10)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52934 (.combout (d_6__rename1276)
                         , .cout (nx3244z10), .dataa (a[7]), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z11)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52934.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52935 (.combout (d_5__rename1277)
                         , .cout (nx3244z11), .dataa (a[6]), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z12)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52935.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52936 (.combout (d_4__rename1278)
                         , .cout (nx3244z12), .dataa (a[5]), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z13)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52936.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52937 (.combout (d_3__rename1279)
                         , .cout (nx3244z13), .dataa (a[4]), .datab (a[3]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z14)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52937.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52938 (.combout (d_2__rename1280)
                         , .cout (nx3244z14), .dataa (a[3]), .datab (a[2]), .datac (
                         1'b1), .datad (nx_mult_32_70_vcc_net), .cin (nx3244z15)
                         ) ;
                         
                         defparam modgen_add_11_ix3244z52938.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_11_ix3244z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52939 (.cout (nx3244z15), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_70_vcc_net), .cin (nx3244z16)) ;
                         
                         defparam modgen_add_11_ix3244z52939.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_11_ix3244z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_11_ix3244z52940 (.cout (nx3244z16), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_70_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_11_ix3244z52940.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix3244z52923 (.combout (d[16]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_70_vcc_net), .cin (
                         nx3244z2)) ;
                         defparam ix3244z52923.lut_mask = 16'hf000;
                         
                         defparam ix3244z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix3244z52928 (.combout (nx3244z5), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_70_vcc_net), .cin (
                         b_10__rename1282)) ;
                         
                         defparam ix3244z52928.lut_mask = 16'hf000;
                         
                         defparam ix3244z52928.sum_lutc_input = "cin";
endmodule


module mult_32_69 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_69_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_10_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_69_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_10_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_69_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_10_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_69_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_10_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_69_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_10_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_69_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_10_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_69_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_10_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_69_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_10_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_69_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_10_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_69_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_10_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52933 (.combout (d[4]), .cout (
                         nx253z10), .dataa (a[4]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_69_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_10_ix253z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_10_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_69_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_10_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_10_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_69_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_10_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_10_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_10_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_69_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_10_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_69_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_68 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_68_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_9_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_68_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_9_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_68_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_9_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_68_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_9_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_68_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_9_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_68_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_9_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_68_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_9_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_68_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_9_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_68_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_9_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_68_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_9_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52933 (.combout (d[4]), .cout (
                         nx253z10), .dataa (a[4]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_68_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_9_ix253z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_9_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_68_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_9_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_9_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_68_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_9_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_9_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_9_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_68_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_9_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_68_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_67 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_67_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_8_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_67_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_8_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_67_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_8_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_67_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_8_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_67_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_8_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_67_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_8_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_67_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_8_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_67_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_8_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_67_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_8_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_67_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_8_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52933 (.combout (d[4]), .cout (
                         nx253z10), .dataa (a[4]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_67_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_8_ix253z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_8_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_67_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_8_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_8_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_67_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_8_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_8_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_8_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_67_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_8_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_67_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_66 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_66_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_7_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_66_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_7_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_66_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_7_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_66_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_7_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_66_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_7_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_66_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_7_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_66_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_7_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_66_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_7_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_66_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_7_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_66_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_7_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52933 (.combout (d[4]), .cout (
                         nx253z10), .dataa (a[4]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_66_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_7_ix253z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_7_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_66_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_7_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_7_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_66_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_7_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_7_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_7_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_66_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_7_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_66_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_65 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_65_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_6_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_65_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_6_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_65_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_6_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_65_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_6_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_65_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_6_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_65_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_6_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_65_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_6_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_65_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_6_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_65_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_6_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_65_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_6_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52933 (.combout (d[4]), .cout (
                         nx253z10), .dataa (a[4]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_65_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_6_ix253z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_6_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_65_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_6_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_6_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_65_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_6_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_6_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_6_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_65_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_6_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_65_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_64 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire d_11__rename1135, d_10__rename1136, d_9__rename1137, d_8__rename1138, 
         d_7__rename1139, d_6__rename1140, d_5__rename1141, d_4__rename1142, 
         d_3__rename1143, d_2__rename1144, b_10__rename1146, nx3244z2, nx3244z16, 
         nx3244z15, nx3244z14, nx3244z13, nx3244z12, nx3244z11, nx3244z10, 
         nx3244z9, nx3244z8, nx3244z7, nx3244z6, nx3244z26, nx3244z25, nx3244z24, 
         nx3244z23, nx3244z22, nx3244z21, nx3244z20, nx3244z19, nx3244z18, 
         nx3244z17, nx3244z4, nx3244z3, nx3244z5, nx_mult_32_64_vcc_net;
    wire [39:0] xmplr_dummy ;




    assign d[20] = a[31] ;
    assign d[19] = a[31] ;
    assign d[18] = a[14] ;
    assign d[17] = a[31] ;
    cycloneii_lcell_comb modgen_add_5_ix3244z52925 (.combout (d[15]), .cout (
                         nx3244z2), .dataa (a[31]), .datab (a[14]), .datac (1'b1
                         ), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z3)) ;
                         
                         defparam modgen_add_5_ix3244z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52925.sum_lutc_input = "cin";
    assign nx_mult_32_64_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_5_ix3244z52926 (.combout (d[14]), .cout (
                         nx3244z3), .dataa (a[14]), .datab (a[11]), .datac (1'b1
                         ), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z4)) ;
                         
                         defparam modgen_add_5_ix3244z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52927 (.combout (d[13]), .cout (
                         nx3244z4), .dataa (nx3244z5), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z17)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52941 (.combout (d[12]), .cout (
                         nx3244z17), .dataa (d_11__rename1135), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z18)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52941.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52941.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52942 (.combout (d[11]), .cout (
                         nx3244z18), .dataa (d_10__rename1136), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z19)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52942.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52942.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52943 (.combout (d[10]), .cout (
                         nx3244z19), .dataa (d_9__rename1137), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z20)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52943.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52943.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52944 (.combout (d[9]), .cout (
                         nx3244z20), .dataa (d_8__rename1138), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z21)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52944.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52944.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52945 (.combout (d[8]), .cout (
                         nx3244z21), .dataa (d_7__rename1139), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z22)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52945.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52945.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52946 (.combout (d[7]), .cout (
                         nx3244z22), .dataa (d_6__rename1140), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z23)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52946.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52946.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52947 (.combout (d[6]), .cout (
                         nx3244z23), .dataa (d_5__rename1141), .datab (a[3]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z24)
                         ) ;
                         
                         defparam modgen_add_5_ix3244z52947.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_5_ix3244z52947.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52948 (.cout (nx3244z24), .dataa (
                         d_4__rename1142), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_64_vcc_net), .cin (nx3244z25)) ;
                         
                         defparam modgen_add_5_ix3244z52948.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_5_ix3244z52948.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52949 (.cout (nx3244z25), .dataa (
                         d_3__rename1143), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_64_vcc_net), .cin (nx3244z26)) ;
                         
                         defparam modgen_add_5_ix3244z52949.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_5_ix3244z52949.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_5_ix3244z52950 (.cout (nx3244z26), .dataa (
                         a[0]), .datab (d_2__rename1144), .datac (1'b1), .datad (
                         nx_mult_32_64_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_5_ix3244z52950.lut_mask = 16'h0088;
    cycloneii_lcell_comb modgen_add_4_ix3244z52929 (.combout (d_11__rename1135)
                         , .cout (b_10__rename1146), .dataa (a[14]), .datab (
                         a[11]), .datac (1'b1), .datad (nx_mult_32_64_vcc_net), 
                         .cin (nx3244z6)) ;
                         
                         defparam modgen_add_4_ix3244z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52930 (.combout (d_10__rename1136)
                         , .cout (nx3244z6), .dataa (a[11]), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z7)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52931 (.combout (d_9__rename1137), 
                         .cout (nx3244z7), .dataa (a[10]), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z8)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52932 (.combout (d_8__rename1138), 
                         .cout (nx3244z8), .dataa (a[9]), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z9)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52933 (.combout (d_7__rename1139), 
                         .cout (nx3244z9), .dataa (a[8]), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z10)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52934 (.combout (d_6__rename1140), 
                         .cout (nx3244z10), .dataa (a[7]), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z11)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52934.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52935 (.combout (d_5__rename1141), 
                         .cout (nx3244z11), .dataa (a[6]), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z12)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52935.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52936 (.combout (d_4__rename1142), 
                         .cout (nx3244z12), .dataa (a[5]), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z13)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52936.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52937 (.combout (d_3__rename1143), 
                         .cout (nx3244z13), .dataa (a[4]), .datab (a[3]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z14)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52937.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52938 (.combout (d_2__rename1144), 
                         .cout (nx3244z14), .dataa (a[3]), .datab (a[2]), .datac (
                         1'b1), .datad (nx_mult_32_64_vcc_net), .cin (nx3244z15)
                         ) ;
                         
                         defparam modgen_add_4_ix3244z52938.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_4_ix3244z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52939 (.cout (nx3244z15), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_64_vcc_net), .cin (nx3244z16)) ;
                         
                         defparam modgen_add_4_ix3244z52939.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_4_ix3244z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_4_ix3244z52940 (.cout (nx3244z16), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_64_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_4_ix3244z52940.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix3244z52923 (.combout (d[16]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_64_vcc_net), .cin (
                         nx3244z2)) ;
                         defparam ix3244z52923.lut_mask = 16'hf000;
                         
                         defparam ix3244z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix3244z52928 (.combout (nx3244z5), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_64_vcc_net), .cin (
                         b_10__rename1146)) ;
                         
                         defparam ix3244z52928.lut_mask = 16'hf000;
                         
                         defparam ix3244z52928.sum_lutc_input = "cin";
endmodule


module mult_32_63 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx1250z2, nx1250z13, nx1250z12, nx1250z11, nx1250z10, nx1250z9, 
         nx1250z8, nx1250z7, nx1250z6, nx1250z5, nx1250z4, nx1250z3, 
         nx_mult_32_63_vcc_net;
    wire [19:0] xmplr_dummy ;




    assign d[19] = a[31] ;
    assign d[18] = a[31] ;
    assign d[17] = a[14] ;
    assign d[16] = a[31] ;
    assign d[15] = a[31] ;
    cycloneii_lcell_comb modgen_add_3_ix1250z52925 (.combout (d[13]), .cout (
                         nx1250z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1
                         ), .datad (nx_mult_32_63_vcc_net), .cin (nx1250z3)) ;
                         
                         defparam modgen_add_3_ix1250z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52925.sum_lutc_input = "cin";
    assign nx_mult_32_63_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_3_ix1250z52926 (.combout (d[12]), .cout (
                         nx1250z3), .dataa (a[14]), .datab (a[10]), .datac (1'b1
                         ), .datad (nx_mult_32_63_vcc_net), .cin (nx1250z4)) ;
                         
                         defparam modgen_add_3_ix1250z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52927 (.combout (d[11]), .cout (
                         nx1250z4), .dataa (a[11]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z5)) ;
                         
                         defparam modgen_add_3_ix1250z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52928 (.combout (d[10]), .cout (
                         nx1250z5), .dataa (a[10]), .datab (a[8]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z6)) ;
                         
                         defparam modgen_add_3_ix1250z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52929 (.combout (d[9]), .cout (
                         nx1250z6), .dataa (a[9]), .datab (a[7]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z7)) ;
                         
                         defparam modgen_add_3_ix1250z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52930 (.combout (d[8]), .cout (
                         nx1250z7), .dataa (a[8]), .datab (a[6]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z8)) ;
                         
                         defparam modgen_add_3_ix1250z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52931 (.combout (d[7]), .cout (
                         nx1250z8), .dataa (a[7]), .datab (a[5]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z9)) ;
                         
                         defparam modgen_add_3_ix1250z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52932 (.combout (d[6]), .cout (
                         nx1250z9), .dataa (a[6]), .datab (a[4]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z10)) ;
                         
                         defparam modgen_add_3_ix1250z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52933 (.combout (d[5]), .cout (
                         nx1250z10), .dataa (a[5]), .datab (a[3]), .datac (1'b1)
                         , .datad (nx_mult_32_63_vcc_net), .cin (nx1250z11)) ;
                         
                         defparam modgen_add_3_ix1250z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_3_ix1250z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52934 (.cout (nx1250z11), .dataa (
                         a[4]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_63_vcc_net), .cin (nx1250z12)) ;
                         
                         defparam modgen_add_3_ix1250z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_3_ix1250z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52935 (.cout (nx1250z12), .dataa (
                         a[3]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_63_vcc_net), .cin (nx1250z13)) ;
                         
                         defparam modgen_add_3_ix1250z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_3_ix1250z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_3_ix1250z52936 (.cout (nx1250z13), .dataa (
                         a[0]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_63_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_3_ix1250z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix1250z52923 (.combout (d[14]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_63_vcc_net), .cin (
                         nx1250z2)) ;
                         defparam ix1250z52923.lut_mask = 16'hf000;
                         
                         defparam ix1250z52923.sum_lutc_input = "cin";
endmodule


module mult_32_62 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx6235z2, nx6235z17, nx6235z16, nx6235z15, nx6235z14, nx6235z13, 
         nx6235z12, nx6235z11, nx6235z10, nx6235z9, nx6235z8, nx6235z7, nx6235z6, 
         nx6235z5, nx6235z4, nx6235z3, nx_mult_32_62_vcc_net;
    wire [26:0] xmplr_dummy ;




    assign d[18] = d[19] ;
    assign d[17] = d[16] ;
    cycloneii_lcell_comb ix6235z52923 (.combout (d[19]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         nx6235z2)) ;
                         defparam ix6235z52923.lut_mask = 16'hf000;
                         
                         defparam ix6235z52923.sum_lutc_input = "cin";
    assign nx_mult_32_62_vcc_net = 1 ;
    cycloneii_lcell_comb ix6235z52925 (.combout (d[16]), .cout (nx6235z2), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z3)) ;
                         
                         defparam ix6235z52925.lut_mask = 16'h692b;
                         
                         defparam ix6235z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52926 (.combout (d[15]), .cout (nx6235z3), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z4)) ;
                         
                         defparam ix6235z52926.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52927 (.combout (d[14]), .cout (nx6235z4), .dataa (
                         a[14]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z5)) ;
                         
                         defparam ix6235z52927.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52928 (.combout (d[13]), .cout (nx6235z5), .dataa (
                         a[14]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z6)) ;
                         
                         defparam ix6235z52928.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52929 (.combout (d[12]), .cout (nx6235z6), .dataa (
                         a[14]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z7)) ;
                         
                         defparam ix6235z52929.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52930 (.combout (d[11]), .cout (nx6235z7), .dataa (
                         a[11]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z8)) ;
                         
                         defparam ix6235z52930.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52931 (.combout (d[10]), .cout (nx6235z8), .dataa (
                         a[10]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z9)) ;
                         
                         defparam ix6235z52931.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52932 (.combout (d[9]), .cout (nx6235z9), .dataa (
                         a[9]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z10)) ;
                         
                         defparam ix6235z52932.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52933 (.combout (d[8]), .cout (nx6235z10), .dataa (
                         a[8]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z11)) ;
                         
                         defparam ix6235z52933.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52934 (.combout (d[7]), .cout (nx6235z11), .dataa (
                         a[7]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z12)) ;
                         
                         defparam ix6235z52934.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52935 (.combout (d[6]), .cout (nx6235z12), .dataa (
                         a[6]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_62_vcc_net), .cin (nx6235z13)) ;
                         
                         defparam ix6235z52935.lut_mask = 16'h69d4;
                         
                         defparam ix6235z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52936 (.cout (nx6235z13), .dataa (a[5]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         nx6235z14)) ;
                         
                         defparam ix6235z52936.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52937 (.cout (nx6235z14), .dataa (a[4]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         nx6235z15)) ;
                         
                         defparam ix6235z52937.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52938 (.cout (nx6235z15), .dataa (a[3]), .datab (
                         a[0]), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         nx6235z16)) ;
                         
                         defparam ix6235z52938.lut_mask = 16'h00d4;
                         
                         defparam ix6235z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52939 (.cout (nx6235z16), .dataa (a[2]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         nx6235z17)) ;
                         
                         defparam ix6235z52939.lut_mask = 16'h0050;
                         
                         defparam ix6235z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix6235z52940 (.cout (nx6235z17), .dataa (a[1]), .datab (
                         a[0]), .datac (1'b1), .datad (nx_mult_32_62_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix6235z52940.lut_mask = 16'h0011;
endmodule


module mult_32_61 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
         nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_61_vcc_net;
    wire [20:0] xmplr_dummy ;




    assign d[18] = a[31] ;
    assign d[17] = a[31] ;
    assign d[16] = a[14] ;
    assign d[15] = a[31] ;
    assign d[14] = a[14] ;
    cycloneii_lcell_comb modgen_add_1_ix253z52925 (.combout (d[12]), .cout (
                         nx253z2), .dataa (a[14]), .datab (a[11]), .datac (1'b1)
                         , .datad (nx_mult_32_61_vcc_net), .cin (nx253z3)) ;
                         
                         defparam modgen_add_1_ix253z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52925.sum_lutc_input = "cin";
    assign nx_mult_32_61_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_1_ix253z52926 (.combout (d[11]), .cout (
                         nx253z3), .dataa (a[11]), .datab (a[10]), .datac (1'b1)
                         , .datad (nx_mult_32_61_vcc_net), .cin (nx253z4)) ;
                         
                         defparam modgen_add_1_ix253z52926.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52927 (.combout (d[10]), .cout (
                         nx253z4), .dataa (a[10]), .datab (a[9]), .datac (1'b1)
                         , .datad (nx_mult_32_61_vcc_net), .cin (nx253z5)) ;
                         
                         defparam modgen_add_1_ix253z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52928 (.combout (d[9]), .cout (
                         nx253z5), .dataa (a[9]), .datab (a[8]), .datac (1'b1), 
                         .datad (nx_mult_32_61_vcc_net), .cin (nx253z6)) ;
                         
                         defparam modgen_add_1_ix253z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52929 (.combout (d[8]), .cout (
                         nx253z6), .dataa (a[8]), .datab (a[7]), .datac (1'b1), 
                         .datad (nx_mult_32_61_vcc_net), .cin (nx253z7)) ;
                         
                         defparam modgen_add_1_ix253z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52930 (.combout (d[7]), .cout (
                         nx253z7), .dataa (a[7]), .datab (a[6]), .datac (1'b1), 
                         .datad (nx_mult_32_61_vcc_net), .cin (nx253z8)) ;
                         
                         defparam modgen_add_1_ix253z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52931 (.combout (d[6]), .cout (
                         nx253z8), .dataa (a[6]), .datab (a[5]), .datac (1'b1), 
                         .datad (nx_mult_32_61_vcc_net), .cin (nx253z9)) ;
                         
                         defparam modgen_add_1_ix253z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52932 (.combout (d[5]), .cout (
                         nx253z9), .dataa (a[5]), .datab (a[4]), .datac (1'b1), 
                         .datad (nx_mult_32_61_vcc_net), .cin (nx253z10)) ;
                         
                         defparam modgen_add_1_ix253z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix253z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52933 (.cout (nx253z10), .dataa (
                         a[4]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_61_vcc_net), .cin (nx253z11)) ;
                         
                         defparam modgen_add_1_ix253z52933.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix253z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52934 (.cout (nx253z11), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_61_vcc_net), .cin (nx253z12)) ;
                         
                         defparam modgen_add_1_ix253z52934.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix253z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52935 (.cout (nx253z12), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_61_vcc_net), .cin (nx253z13)) ;
                         
                         defparam modgen_add_1_ix253z52935.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix253z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix253z52936 (.cout (nx253z13), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_61_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_1_ix253z52936.lut_mask = 16'h0088;
    cycloneii_lcell_comb ix253z52923 (.combout (d[13]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_61_vcc_net), .cin (
                         nx253z2)) ;
                         defparam ix253z52923.lut_mask = 16'hf000;
                         
                         defparam ix253z52923.sum_lutc_input = "cin";
endmodule


module mult_32_60 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire nx5238z2, nx5238z15, nx5238z14, nx5238z13, nx5238z12, nx5238z11, 
         nx5238z10, nx5238z9, nx5238z8, nx5238z7, nx5238z6, nx5238z5, nx5238z4, 
         nx5238z3, nx_mult_32_60_vcc_net;
    wire [21:0] xmplr_dummy ;




    assign d[20] = a[31] ;
    assign d[19] = a[31] ;
    assign d[17] = d[16] ;
    cycloneii_lcell_comb ix5238z52923 (.combout (d[18]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_60_vcc_net), .cin (
                         nx5238z2)) ;
                         defparam ix5238z52923.lut_mask = 16'hf000;
                         
                         defparam ix5238z52923.sum_lutc_input = "cin";
    assign nx_mult_32_60_vcc_net = 1 ;
    cycloneii_lcell_comb ix5238z52925 (.combout (d[16]), .cout (nx5238z2), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z3)) ;
                         
                         defparam ix5238z52925.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52926 (.combout (d[15]), .cout (nx5238z3), .dataa (
                         a[31]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z4)) ;
                         
                         defparam ix5238z52926.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52927 (.combout (d[14]), .cout (nx5238z4), .dataa (
                         a[14]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z5)) ;
                         
                         defparam ix5238z52927.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52928 (.combout (d[13]), .cout (nx5238z5), .dataa (
                         a[14]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z6)) ;
                         
                         defparam ix5238z52928.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52929 (.combout (d[12]), .cout (nx5238z6), .dataa (
                         a[14]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z7)) ;
                         
                         defparam ix5238z52929.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52930 (.combout (d[11]), .cout (nx5238z7), .dataa (
                         a[11]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z8)) ;
                         
                         defparam ix5238z52930.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52931 (.combout (d[10]), .cout (nx5238z8), .dataa (
                         a[10]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z9)) ;
                         
                         defparam ix5238z52931.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52932 (.combout (d[9]), .cout (nx5238z9), .dataa (
                         a[9]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z10)) ;
                         
                         defparam ix5238z52932.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52933 (.combout (d[8]), .cout (nx5238z10), .dataa (
                         a[8]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z11)) ;
                         
                         defparam ix5238z52933.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52934 (.combout (d[7]), .cout (nx5238z11), .dataa (
                         a[7]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z12)) ;
                         
                         defparam ix5238z52934.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52935 (.combout (d[6]), .cout (nx5238z12), .dataa (
                         a[6]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_60_vcc_net), .cin (nx5238z13)) ;
                         
                         defparam ix5238z52935.lut_mask = 16'h96e8;
                         
                         defparam ix5238z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52936 (.cout (nx5238z13), .dataa (a[5]), .datab (
                         a[2]), .datac (1'b1), .datad (nx_mult_32_60_vcc_net), .cin (
                         nx5238z14)) ;
                         
                         defparam ix5238z52936.lut_mask = 16'h00e8;
                         
                         defparam ix5238z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52937 (.cout (nx5238z14), .dataa (a[4]), .datab (
                         a[1]), .datac (1'b1), .datad (nx_mult_32_60_vcc_net), .cin (
                         nx5238z15)) ;
                         
                         defparam ix5238z52937.lut_mask = 16'h00e8;
                         
                         defparam ix5238z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix5238z52938 (.cout (nx5238z15), .dataa (a[0]), .datab (
                         a[3]), .datac (1'b1), .datad (nx_mult_32_60_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix5238z52938.lut_mask = 16'h0088;
endmodule

