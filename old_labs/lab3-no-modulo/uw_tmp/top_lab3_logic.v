//
// Verilog description for cell top_lab3, 
// 02/15/14 13:29:38
//
// Precision RTL Synthesis, 2008a.47//


module top_lab3 ( nrst, clk, rxflex, txflex, ctsflex, o_sevenseg ) ;

    input nrst ;
    input clk ;
    input rxflex ;
    output txflex ;
    output ctsflex ;
    output [15:0]o_sevenseg ;

    wire pixavail;
    wire [7:0]pixel;
    wire [7:0]result;
    wire nrst_int, clk_int, rxflex_int, rst, ctsflex_dup0, nx59584z1, nx60581z1, 
         nx61578z1, nx63572z1, nx25683z1, nx26680z1, nx27677z1, nx29671z1, 
         nx57590z1, nx58587z1, nx62575z1, nx30z1, nx1027z1, nx28674z1, 
         Tx_Reg_14n6ss1_0__dup_4, NOT_rtlcn2_dup_5, RData_0_, nx41851z1, 
         nx42848z1, nx43845z1, nx44842z1, nx45839z1, nx46836z1, nx47833z1, 
         nx49827z1, nx50824z1, nx62540z1, nx63537z1, nx64534z1, nx65531z1, 
         nx992z1, nx21351z1, nx21351z2;
    wire [436:0] xmplr_dummy ;




    uw_uart u_uw_uart (.CLK (clk_int), .RST (rst), .RXFLEX (rxflex_int), .datain (
            {pixel[7],pixel[6],pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],
            pixel[0]}), .o_pixavail (pixavail), .p_Tx_Reg_14n6ss1_0_ (
            Tx_Reg_14n6ss1_0__dup_4), .p_NOT_rtlcn2 (NOT_rtlcn2_dup_5), .p_RData_0_ (
            RData_0_), .p_nrst_int (nrst_int)) ;
    lab3 u_lab3 (.i_clock (clk_int), .i_valid (pixavail), .i_input ({pixel[7],
         pixel[6],pixel[5],pixel[4],pixel[3],pixel[2],pixel[1],pixel[0]}), .i_reset (
         rst), .o_output ({result[7],result[6],result[5],result[4],result[3],
         result[2],result[1],result[0]}), .p_RData_0_ (RData_0_), .p_nrst_int (
         nrst_int)) ;
    assign rst = ~nrst_int ;
    assign ctsflex_dup0 = 1 ;
    assign nx21351z1 = ~nx21351z2 ;
    cycloneii_io rxflex_ibuf (.combout (rxflex_int), .padio (rxflex), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam rxflex_ibuf.operation_mode = "input";
                 
                 defparam rxflex_ibuf.output_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam rxflex_ibuf.oe_register_mode = "none";
                 
                 defparam rxflex_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam rxflex_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_txflex_obuf (.regout (nx21351z2), .datain (
                       Tx_Reg_14n6ss1_0__dup_4), .sdata (1'b0), .clk (clk_int), 
                       .ena (NOT_rtlcn2_dup_5), .aclr (rst), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_ (.regout (nx50824z1), .datain (
                       nx1027z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_ (.regout (nx49827z1), .datain (
                       nx30z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_ (.regout (nx47833z1), .datain (
                       nx63572z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_ (.regout (nx46836z1), .datain (
                       nx62575z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_ (.regout (nx45839z1), .datain (
                       nx61578z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_ (.regout (nx44842z1), .datain (
                       nx60581z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_ (.regout (nx43845z1), .datain (
                       nx59584z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_ (.regout (nx992z1), .datain (
                       nx29671z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_ (.regout (nx65531z1), .datain (
                       nx28674z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_ (.regout (nx64534z1), .datain (
                       nx27677z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_ (.regout (nx63537z1), .datain (
                       nx26680z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_ (.regout (nx62540z1), .datain (
                       nx25683z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_ (.regout (nx42848z1), .datain (
                       nx58587z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_ (.regout (nx41851z1), .datain (
                       nx57590z1), .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io o_sevenseg_obuf_7_ (.padio (o_sevenseg[7]), .datain (nrst_int)
                 , .oe (1'b1), .outclk (clk_int), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_7_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_7_.output_register_mode = "register";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_7_.input_register_mode = "none";
    cycloneii_io o_sevenseg_obuf_15_ (.padio (o_sevenseg[15]), .datain (
                 ctsflex_dup0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_sevenseg_obuf_15_.operation_mode = "output";
                 
                 defparam o_sevenseg_obuf_15_.output_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_sevenseg_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_sevenseg_obuf_15_.input_register_mode = "none";
    cycloneii_io nrst_ibuf (.combout (nrst_int), .padio (nrst), .datain (1'b0), 
                 .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam nrst_ibuf.operation_mode = "input";
                 
                 defparam nrst_ibuf.output_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam nrst_ibuf.oe_register_mode = "none";
                 
                 defparam nrst_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam nrst_ibuf.input_register_mode = "none";
    cycloneii_io ix21351z43919 (.padio (txflex), .datain (nx21351z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix21351z43919.operation_mode = "output";
                 
                 defparam ix21351z43919.output_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix21351z43919.oe_register_mode = "none";
                 
                 defparam ix21351z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix21351z43919.input_register_mode = "none";
    cycloneii_io ix992z43919 (.padio (o_sevenseg[14]), .datain (nx992z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix992z43919.operation_mode = "output";
                 
                 defparam ix992z43919.output_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix992z43919.oe_register_mode = "none";
                 
                 defparam ix992z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix992z43919.input_register_mode = "none";
    cycloneii_io ix65531z43919 (.padio (o_sevenseg[13]), .datain (nx65531z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix65531z43919.operation_mode = "output";
                 
                 defparam ix65531z43919.output_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix65531z43919.oe_register_mode = "none";
                 
                 defparam ix65531z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix65531z43919.input_register_mode = "none";
    cycloneii_io ix64534z43919 (.padio (o_sevenseg[12]), .datain (nx64534z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix64534z43919.operation_mode = "output";
                 
                 defparam ix64534z43919.output_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix64534z43919.oe_register_mode = "none";
                 
                 defparam ix64534z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix64534z43919.input_register_mode = "none";
    cycloneii_io ix63537z43919 (.padio (o_sevenseg[11]), .datain (nx63537z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix63537z43919.operation_mode = "output";
                 
                 defparam ix63537z43919.output_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix63537z43919.oe_register_mode = "none";
                 
                 defparam ix63537z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix63537z43919.input_register_mode = "none";
    cycloneii_io ix62540z43919 (.padio (o_sevenseg[10]), .datain (nx62540z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix62540z43919.operation_mode = "output";
                 
                 defparam ix62540z43919.output_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix62540z43919.oe_register_mode = "none";
                 
                 defparam ix62540z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix62540z43919.input_register_mode = "none";
    cycloneii_io ix50824z43919 (.padio (o_sevenseg[9]), .datain (nx50824z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix50824z43919.operation_mode = "output";
                 
                 defparam ix50824z43919.output_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix50824z43919.oe_register_mode = "none";
                 
                 defparam ix50824z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix50824z43919.input_register_mode = "none";
    cycloneii_io ix49827z43919 (.padio (o_sevenseg[8]), .datain (nx49827z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix49827z43919.operation_mode = "output";
                 
                 defparam ix49827z43919.output_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix49827z43919.oe_register_mode = "none";
                 
                 defparam ix49827z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix49827z43919.input_register_mode = "none";
    cycloneii_io ix47833z43919 (.padio (o_sevenseg[6]), .datain (nx47833z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix47833z43919.operation_mode = "output";
                 
                 defparam ix47833z43919.output_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix47833z43919.oe_register_mode = "none";
                 
                 defparam ix47833z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix47833z43919.input_register_mode = "none";
    cycloneii_io ix46836z43919 (.padio (o_sevenseg[5]), .datain (nx46836z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix46836z43919.operation_mode = "output";
                 
                 defparam ix46836z43919.output_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix46836z43919.oe_register_mode = "none";
                 
                 defparam ix46836z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix46836z43919.input_register_mode = "none";
    cycloneii_io ix45839z43919 (.padio (o_sevenseg[4]), .datain (nx45839z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45839z43919.operation_mode = "output";
                 
                 defparam ix45839z43919.output_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45839z43919.oe_register_mode = "none";
                 
                 defparam ix45839z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45839z43919.input_register_mode = "none";
    cycloneii_io ix44842z43919 (.padio (o_sevenseg[3]), .datain (nx44842z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix44842z43919.operation_mode = "output";
                 
                 defparam ix44842z43919.output_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix44842z43919.oe_register_mode = "none";
                 
                 defparam ix44842z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix44842z43919.input_register_mode = "none";
    cycloneii_io ix43845z43919 (.padio (o_sevenseg[2]), .datain (nx43845z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix43845z43919.operation_mode = "output";
                 
                 defparam ix43845z43919.output_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix43845z43919.oe_register_mode = "none";
                 
                 defparam ix43845z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix43845z43919.input_register_mode = "none";
    cycloneii_io ix42848z43919 (.padio (o_sevenseg[1]), .datain (nx42848z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix42848z43919.operation_mode = "output";
                 
                 defparam ix42848z43919.output_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix42848z43919.oe_register_mode = "none";
                 
                 defparam ix42848z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix42848z43919.input_register_mode = "none";
    cycloneii_io ix41851z43919 (.padio (o_sevenseg[0]), .datain (nx41851z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix41851z43919.operation_mode = "output";
                 
                 defparam ix41851z43919.output_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix41851z43919.oe_register_mode = "none";
                 
                 defparam ix41851z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix41851z43919.input_register_mode = "none";
    cycloneii_io ctsflex_obuf (.padio (ctsflex), .datain (ctsflex_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ctsflex_obuf.operation_mode = "output";
                 
                 defparam ctsflex_obuf.output_register_mode = "none";
                 
                 defparam ctsflex_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam ctsflex_obuf.oe_register_mode = "none";
                 
                 defparam ctsflex_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam ctsflex_obuf.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix28674z52923 (.combout (nx28674z1), .dataa (result[7])
                         , .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix28674z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix1027z52923 (.combout (nx1027z1), .dataa (result[7]), 
                         .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix1027z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix30z52923 (.combout (nx30z1), .dataa (result[7]), .datab (
                         result[6]), .datac (result[5]), .datad (result[4]), .cin (
                         1'b0)) ;
                         defparam ix30z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix62575z52923 (.combout (nx62575z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix62575z52923.lut_mask = 16'ha4c8;
    cycloneii_lcell_comb ix58587z52923 (.combout (nx58587z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix58587z52923.lut_mask = 16'h5910;
    cycloneii_lcell_comb ix57590z52923 (.combout (nx57590z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix57590z52923.lut_mask = 16'h4109;
    cycloneii_lcell_comb ix29671z52923 (.combout (nx29671z1), .dataa (result[7])
                         , .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix29671z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix27677z52923 (.combout (nx27677z1), .dataa (result[7])
                         , .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix27677z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix26680z52923 (.combout (nx26680z1), .dataa (result[7])
                         , .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix26680z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix25683z52923 (.combout (nx25683z1), .dataa (result[7])
                         , .datab (result[6]), .datac (result[5]), .datad (
                         result[4]), .cin (1'b0)) ;
                         
                         defparam ix25683z52923.lut_mask = 16'h5704;
    cycloneii_lcell_comb ix63572z52923 (.combout (nx63572z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix63572z52923.lut_mask = 16'h2904;
    cycloneii_lcell_comb ix61578z52923 (.combout (nx61578z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix61578z52923.lut_mask = 16'h8098;
    cycloneii_lcell_comb ix60581z52923 (.combout (nx60581z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix60581z52923.lut_mask = 16'hc324;
    cycloneii_lcell_comb ix59584z52923 (.combout (nx59584z1), .dataa (result[3])
                         , .datab (result[2]), .datac (result[1]), .datad (
                         result[0]), .cin (1'b0)) ;
                         
                         defparam ix59584z52923.lut_mask = 16'h5704;
endmodule


module lab3 ( i_clock, i_valid, i_input, i_reset, o_output, p_RData_0_, 
              p_nrst_int ) ;

    input i_clock ;
    input i_valid ;
    input [7:0]i_input ;
    input i_reset ;
    output [7:0]o_output ;
    input p_RData_0_ ;
    input p_nrst_int ;

    wire [3:0]x_pos;
    wire [3:0]y_pos;
    wire [2:0]i;
    wire end_of_input;
    wire [7:0]mem_1_q;
    wire [7:0]mem_2_q;
    wire [7:0]mem_3_q;
    wire nx3163z8, nx3163z49, nx3163z50, nx3163z51, nx3163z52, nx3163z53, 
         nx3163z54, nx3163z55;
    wire [7:0]rtlc4n0_4n1s2;
    wire nx3163z11, nx3163z15, nx3163z19, nx3163z23, nx3163z27, nx3163z31, 
         nx3163z35, nx3163z39, nx3163z12, nx3163z16, nx3163z20, nx3163z24, 
         nx3163z28, nx3163z32, nx3163z36, nx3163z40, nx3163z59, nx3163z6, 
         nx3163z4, nx3163z7;
    wire [7:0]rtlc4n0_4n1s3f1;
    wire nx3163z10, nx3163z14, nx3163z18, nx3163z22, nx3163z26, nx3163z30, 
         nx3163z34, nx3163z38, nx3163z76, nx3163z1, nx3163z72, nx3163z57, 
         nx46973z1, nx3163z3;
    wire [7:0]rtlc4n0_4n1s3f2;
    wire nx35397z1, nx51243z1, nx54113z1, nx12249z1, nx13246z1, nx14243z1, 
         modgen_counter_y_pos_NOT_a_0_, nx35397z2, nx43982z1, nx44979z1, 
         nx45976z1, modgen_counter_x_pos_NOT_a_0_, nx53087z2, nx53087z1, 
         nx3163z58, nx3163z73, nx3163z74, nx3163z75, nx3163z60, nx3163z65, 
         nx3163z2, nx3163z56, nx3163z77, nx3163z5, nx3163z70, nx3163z71, 
         nx53066z1, nx54084z1, NOT_i_2_;
    wire [213:0] xmplr_dummy ;




    addsub_9_0 ix3163z30602 (.cin (i[0]), .a ({xmplr_dummy [0],
               rtlc4n0_4n1s3f1[7],rtlc4n0_4n1s3f1[6],rtlc4n0_4n1s3f1[5],
               rtlc4n0_4n1s3f1[4],rtlc4n0_4n1s3f1[3],rtlc4n0_4n1s3f1[2],
               rtlc4n0_4n1s3f1[1],rtlc4n0_4n1s3f1[0]}), .b ({xmplr_dummy [1],
               rtlc4n0_4n1s3f2[7],rtlc4n0_4n1s3f2[6],rtlc4n0_4n1s3f2[5],
               rtlc4n0_4n1s3f2[4],rtlc4n0_4n1s3f2[3],rtlc4n0_4n1s3f2[2],
               rtlc4n0_4n1s3f2[1],rtlc4n0_4n1s3f2[0]}), .d ({nx3163z59,nx3163z8,
               nx3163z49,nx3163z50,nx3163z51,nx3163z52,nx3163z53,nx3163z54,
               nx3163z55}), .px64 (nx54084z1)) ;
    modgen_counter_8_0 modgen_counter_o_output (.clock (i_clock), .q ({
                       o_output[7],o_output[6],o_output[5],o_output[4],
                       o_output[3],o_output[2],o_output[1],o_output[0]}), .clk_en (
                       nx3163z1), .aclear (i_reset), .sclear (nx3163z76), .cnt_en (
                       nx3163z72)) ;
    sub_8_0 ix3163z19322 (.a ({mem_1_q[7],mem_1_q[6],mem_1_q[5],mem_1_q[4],
            mem_1_q[3],mem_1_q[2],mem_1_q[1],mem_1_q[0]}), .b ({mem_2_q[7],
            mem_2_q[6],mem_2_q[5],mem_2_q[4],mem_2_q[3],mem_2_q[2],mem_2_q[1],
            mem_2_q[0]}), .d ({nx3163z12,nx3163z16,nx3163z20,nx3163z24,nx3163z28
            ,nx3163z32,nx3163z36,nx3163z40}), .cout (nx3163z6)) ;
    sub_8_1 ix3163z19319 (.a ({mem_3_q[7],mem_3_q[6],mem_3_q[5],mem_3_q[4],
            mem_3_q[3],mem_3_q[2],mem_3_q[1],mem_3_q[0]}), .b ({mem_1_q[7],
            mem_1_q[6],mem_1_q[5],mem_1_q[4],mem_1_q[3],mem_1_q[2],mem_1_q[1],
            mem_1_q[0]}), .d ({nx3163z11,nx3163z15,nx3163z19,nx3163z23,nx3163z27
            ,nx3163z31,nx3163z35,nx3163z39}), .cout (nx3163z4)) ;
    add_8_0 ix3163z60014 (.a ({nx3163z8,nx3163z49,nx3163z50,nx3163z51,nx3163z52,
            nx3163z53,nx3163z54,nx3163z55}), .b ({i_input[7],i_input[6],
            i_input[5],i_input[4],i_input[3],i_input[2],i_input[1],
            xmplr_dummy [2]}), .d (rtlc4n0_4n1s2), .cout (nx3163z7), .p_i_valid (
            i_valid), .p_RData_0_ (p_RData_0_)) ;
    ram_dq_8_0 mem (.wr_data1 ({i_input[7],i_input[6],i_input[5],i_input[4],
               i_input[3],i_input[2],i_input[1],i_input[0]}), .rd_data1 ({
               mem_1_q[7],mem_1_q[6],mem_1_q[5],mem_1_q[4],mem_1_q[3],mem_1_q[2]
               ,mem_1_q[1],mem_1_q[0]}), .addr1 ({x_pos[3],x_pos[2],x_pos[1],
               x_pos[0]}), .wr_clk1 (i_clock), .wr_ena1 (nx51243z1)) ;
    ram_dq_8_1 mem_0 (.wr_data1 ({i_input[7],i_input[6],i_input[5],i_input[4],
               i_input[3],i_input[2],i_input[1],i_input[0]}), .rd_data1 ({
               mem_2_q[7],mem_2_q[6],mem_2_q[5],mem_2_q[4],mem_2_q[3],mem_2_q[2]
               ,mem_2_q[1],mem_2_q[0]}), .addr1 ({x_pos[3],x_pos[2],x_pos[1],
               x_pos[0]}), .wr_clk1 (i_clock), .wr_ena1 (nx3163z3)) ;
    ram_dq_8_2 mem_1 (.wr_data1 ({i_input[7],i_input[6],i_input[5],i_input[4],
               i_input[3],i_input[2],i_input[1],i_input[0]}), .rd_data1 ({
               mem_3_q[7],mem_3_q[6],mem_3_q[5],mem_3_q[4],mem_3_q[3],mem_3_q[2]
               ,mem_3_q[1],mem_3_q[0]}), .addr1 ({x_pos[3],x_pos[2],x_pos[1],
               x_pos[0]}), .wr_clk1 (i_clock), .wr_ena1 (nx54113z1)) ;
    assign modgen_counter_y_pos_NOT_a_0_ = ~y_pos[0] ;
    assign modgen_counter_x_pos_NOT_a_0_ = ~x_pos[0] ;
    assign i[0] = ~nx54084z1 ;
    assign NOT_i_2_ = ~i[2] ;
    cycloneii_lcell_ff reg_new_number_set (.regout (nx3163z71), .datain (
                       nx53066z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (i[1]), .sdata (1'b0), 
                       .clk (i_clock), .ena (nx53087z1), .aclr (nx46973z1), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (i[0]), .sdata (1'b0), 
                       .clk (i_clock), .ena (nx53087z1), .aclr (nx46973z1), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_0_ (.regout (nx54084z1), .datain (NOT_i_2_), .sdata (
                       1'b0), .clk (i_clock), .ena (nx53087z1), .aclr (nx46973z1
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_end_of_input (.regout (end_of_input), .datain (
                       nx35397z1), .sdata (1'b0), .clk (i_clock), .ena (1'b1), .aclr (
                       nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_3_ (.regout (y_pos[3]), .datain (
                       nx12249z1), .sdata (1'b0), .clk (i_clock), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_2_ (.regout (y_pos[2]), .datain (
                       nx13246z1), .sdata (1'b0), .clk (i_clock), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_1_ (.regout (y_pos[1]), .datain (
                       nx14243z1), .sdata (1'b0), .clk (i_clock), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_0_ (.regout (y_pos[0]), .datain (
                       modgen_counter_y_pos_NOT_a_0_), .sdata (1'b0), .clk (
                       i_clock), .ena (nx53087z1), .aclr (nx46973z1), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_3_ (.regout (x_pos[3]), .datain (
                       nx43982z1), .sdata (1'b0), .clk (i_clock), .ena (i_valid)
                       , .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_2_ (.regout (x_pos[2]), .datain (
                       nx44979z1), .sdata (1'b0), .clk (i_clock), .ena (i_valid)
                       , .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_1_ (.regout (x_pos[1]), .datain (
                       nx45976z1), .sdata (1'b0), .clk (i_clock), .ena (i_valid)
                       , .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_0_ (.regout (x_pos[0]), .datain (
                       modgen_counter_x_pos_NOT_a_0_), .sdata (1'b0), .clk (
                       i_clock), .ena (i_valid), .aclr (nx46973z1), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_comb ix3163z52931 (.combout (rtlc4n0_4n1s3f1[7]), .dataa (
                         nx3163z10), .datab (nx54113z1), .datac (nx3163z12), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52931.lut_mask = 16'h6262;
    cycloneii_lcell_comb ix3163z52933 (.combout (rtlc4n0_4n1s3f1[6]), .dataa (
                         nx3163z14), .datab (nx3163z16), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52933.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52935 (.combout (rtlc4n0_4n1s3f1[5]), .dataa (
                         nx3163z18), .datab (nx3163z20), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52935.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52937 (.combout (rtlc4n0_4n1s3f1[4]), .dataa (
                         nx3163z22), .datab (nx3163z24), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52937.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52939 (.combout (rtlc4n0_4n1s3f1[3]), .dataa (
                         nx3163z26), .datab (nx3163z28), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52939.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52960 (.combout (nx3163z70), .dataa (nx3163z71)
                         , .datab (nx3163z72), .datac (nx3163z73), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix3163z52960.lut_mask = 16'hf7f7;
    cycloneii_lcell_comb ix3163z52927 (.combout (nx3163z5), .dataa (nx3163z6), .datab (
                         nx3163z7), .datac (nx51243z1), .datad (nx54113z1), .cin (
                         1'b0)) ;
                         defparam ix3163z52927.lut_mask = 16'h8acf;
    cycloneii_lcell_comb ix3163z52966 (.combout (nx3163z77), .dataa (nx3163z3), 
                         .datab (nx3163z4), .datac (nx3163z73), .datad (nx3163z5
                         ), .cin (1'b0)) ;
                         
                         defparam ix3163z52966.lut_mask = 16'hfdf0;
    cycloneii_lcell_comb ix3163z52955 (.combout (nx3163z56), .dataa (nx3163z57)
                         , .datab (nx3163z58), .datac (nx3163z60), .datad (
                         nx3163z65), .cin (1'b0)) ;
                         
                         defparam ix3163z52955.lut_mask = 16'hdccc;
    cycloneii_lcell_comb ix3163z52924 (.combout (nx3163z2), .dataa (nx3163z3), .datab (
                         nx3163z4), .datac (nx3163z5), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix3163z52924.lut_mask = 16'hd0d0;
    cycloneii_lcell_comb ix3163z52959 (.combout (nx3163z65), .dataa (
                         rtlc4n0_4n1s2[3]), .datab (rtlc4n0_4n1s2[2]), .datac (
                         rtlc4n0_4n1s2[1]), .datad (rtlc4n0_4n1s2[0]), .cin (
                         1'b0)) ;
                         defparam ix3163z52959.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix3163z52958 (.combout (nx3163z60), .dataa (
                         rtlc4n0_4n1s2[7]), .datab (rtlc4n0_4n1s2[6]), .datac (
                         rtlc4n0_4n1s2[5]), .datad (rtlc4n0_4n1s2[4]), .cin (
                         1'b0)) ;
                         defparam ix3163z52958.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix3163z52964 (.combout (nx3163z75), .dataa (nx3163z52)
                         , .datab (nx3163z53), .datac (nx3163z54), .datad (
                         nx3163z55), .cin (1'b0)) ;
                         
                         defparam ix3163z52964.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix3163z52963 (.combout (nx3163z74), .dataa (nx3163z8), 
                         .datab (nx3163z49), .datac (nx3163z50), .datad (
                         nx3163z51), .cin (1'b0)) ;
                         
                         defparam ix3163z52963.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix3163z52962 (.combout (nx3163z73), .dataa (nx3163z57)
                         , .datab (nx3163z74), .datac (nx3163z75), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix3163z52962.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix3163z52957 (.combout (nx3163z58), .dataa (nx54084z1)
                         , .datab (nx3163z59), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix3163z52957.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix53087z52924 (.combout (nx53087z1), .dataa (i_valid), 
                         .datab (x_pos[3]), .datac (x_pos[2]), .datad (nx53087z2
                         ), .cin (1'b0)) ;
                         
                         defparam ix53087z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix53087z52925 (.combout (nx53087z2), .dataa (x_pos[1])
                         , .datab (x_pos[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix53087z52925.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix45976z52923 (.combout (nx45976z1), .dataa (x_pos[1])
                         , .datab (x_pos[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix45976z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix44979z52923 (.combout (nx44979z1), .dataa (x_pos[2])
                         , .datab (x_pos[1]), .datac (x_pos[0]), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix44979z52923.lut_mask = 16'h6a6a;
    cycloneii_lcell_comb ix43982z52923 (.combout (nx43982z1), .dataa (x_pos[3])
                         , .datab (x_pos[2]), .datac (x_pos[1]), .datad (
                         x_pos[0]), .cin (1'b0)) ;
                         
                         defparam ix43982z52923.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix35397z52924 (.combout (nx35397z2), .dataa (y_pos[2])
                         , .datab (y_pos[1]), .datac (y_pos[0]), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix35397z52924.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix14243z52923 (.combout (nx14243z1), .dataa (y_pos[1])
                         , .datab (y_pos[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix14243z52923.lut_mask = 16'h6666;
    cycloneii_lcell_comb ix13246z52923 (.combout (nx13246z1), .dataa (y_pos[2])
                         , .datab (y_pos[1]), .datac (y_pos[0]), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix13246z52923.lut_mask = 16'h6a6a;
    cycloneii_lcell_comb ix12249z52923 (.combout (nx12249z1), .dataa (y_pos[3])
                         , .datab (y_pos[2]), .datac (y_pos[1]), .datad (
                         y_pos[0]), .cin (1'b0)) ;
                         
                         defparam ix12249z52923.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix54113z52923 (.combout (nx54113z1), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix54113z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix51243z52923 (.combout (nx51243z1), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix51243z52923.lut_mask = 16'h0101;
    cycloneii_lcell_comb ix35397z52923 (.combout (nx35397z1), .dataa (y_pos[3])
                         , .datab (end_of_input), .datac (nx35397z2), .datad (
                         nx53087z1), .cin (1'b0)) ;
                         
                         defparam ix35397z52923.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix53066z52923 (.combout (nx53066z1), .dataa (i_valid), 
                         .datab (nx3163z71), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix53066z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix3163z52954 (.combout (rtlc4n0_4n1s3f2[0]), .dataa (
                         i_input[0]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[0]), .cin (1'b0)) ;
                         
                         defparam ix3163z52954.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52953 (.combout (rtlc4n0_4n1s3f2[1]), .dataa (
                         i_input[1]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[1]), .cin (1'b0)) ;
                         
                         defparam ix3163z52953.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52952 (.combout (rtlc4n0_4n1s3f2[2]), .dataa (
                         i_input[2]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[2]), .cin (1'b0)) ;
                         
                         defparam ix3163z52952.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52951 (.combout (rtlc4n0_4n1s3f2[3]), .dataa (
                         i_input[3]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[3]), .cin (1'b0)) ;
                         
                         defparam ix3163z52951.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52950 (.combout (rtlc4n0_4n1s3f2[4]), .dataa (
                         i_input[4]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[4]), .cin (1'b0)) ;
                         
                         defparam ix3163z52950.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52949 (.combout (rtlc4n0_4n1s3f2[5]), .dataa (
                         i_input[5]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[5]), .cin (1'b0)) ;
                         
                         defparam ix3163z52949.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52948 (.combout (rtlc4n0_4n1s3f2[6]), .dataa (
                         i_input[6]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[6]), .cin (1'b0)) ;
                         
                         defparam ix3163z52948.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52947 (.combout (rtlc4n0_4n1s3f2[7]), .dataa (
                         i_input[7]), .datab (i[2]), .datac (i[1]), .datad (
                         mem_3_q[7]), .cin (1'b0)) ;
                         
                         defparam ix3163z52947.lut_mask = 16'haba8;
    cycloneii_lcell_comb ix3163z52925 (.combout (nx3163z3), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix3163z52925.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix3163z52956 (.combout (nx3163z57), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix3163z52956.lut_mask = 16'h6060;
    cycloneii_lcell_comb ix3163z52961 (.combout (nx3163z72), .dataa (y_pos[3]), 
                         .datab (y_pos[2]), .datac (y_pos[1]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix3163z52961.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix3163z52923 (.combout (nx3163z1), .dataa (i_valid), .datab (
                         nx3163z2), .datac (nx3163z56), .datad (nx3163z70), .cin (
                         1'b0)) ;
                         defparam ix3163z52923.lut_mask = 16'haaa8;
    cycloneii_lcell_comb ix3163z52965 (.combout (nx3163z76), .dataa (nx3163z71)
                         , .datab (nx3163z72), .datac (nx3163z77), .datad (
                         nx3163z56), .cin (1'b0)) ;
                         
                         defparam ix3163z52965.lut_mask = 16'h1115;
    cycloneii_lcell_comb ix3163z52946 (.combout (nx3163z38), .dataa (mem_2_q[0])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z39), .cin (1'b0)) ;
                         
                         defparam ix3163z52946.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52944 (.combout (nx3163z34), .dataa (mem_2_q[1])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z35), .cin (1'b0)) ;
                         
                         defparam ix3163z52944.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52941 (.combout (rtlc4n0_4n1s3f1[2]), .dataa (
                         nx3163z30), .datab (nx3163z32), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52941.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52942 (.combout (nx3163z30), .dataa (mem_2_q[2])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z31), .cin (1'b0)) ;
                         
                         defparam ix3163z52942.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52940 (.combout (nx3163z26), .dataa (mem_2_q[3])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z27), .cin (1'b0)) ;
                         
                         defparam ix3163z52940.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52943 (.combout (rtlc4n0_4n1s3f1[1]), .dataa (
                         nx3163z34), .datab (nx3163z36), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52943.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52938 (.combout (nx3163z22), .dataa (mem_2_q[4])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z23), .cin (1'b0)) ;
                         
                         defparam ix3163z52938.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52936 (.combout (nx3163z18), .dataa (mem_2_q[5])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z19), .cin (1'b0)) ;
                         
                         defparam ix3163z52936.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52934 (.combout (nx3163z14), .dataa (mem_2_q[6])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z15), .cin (1'b0)) ;
                         
                         defparam ix3163z52934.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52945 (.combout (rtlc4n0_4n1s3f1[0]), .dataa (
                         nx3163z38), .datab (nx3163z40), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52945.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52932 (.combout (nx3163z10), .dataa (mem_2_q[7])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z11), .cin (1'b0)) ;
                         
                         defparam ix3163z52932.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix46973z52924 (.combout (nx46973z1), .dataa (
                         end_of_input), .datab (p_nrst_int), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix46973z52924.lut_mask = 16'hbbbb;
endmodule


module ram_dq_8_2 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [3:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire nx64056z1, rd_ena1_rename581;



    altsyncram ix64056z44885 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename581), .q_b ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]}), .rden_b (nx64056z1), .clock1 (wr_clk1)
               , .clocken1 (nx64056z1), .address_b ({addr1[3],addr1[2],addr1[1],
               addr1[0]})) ;
               defparam ix64056z44885.width_a = 8;
               defparam ix64056z44885.widthad_a = 4;
               defparam ix64056z44885.numwords_a = 16;
               
               defparam ix64056z44885.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z44885.address_aclr_a = "NONE";
               defparam ix64056z44885.outdata_aclr_a = "NONE";
               defparam ix64056z44885.indata_aclr_a = "NONE";
               defparam ix64056z44885.wrcontrol_aclr_a = "NONE";
               defparam ix64056z44885.byteena_aclr_a = "NONE";
               defparam ix64056z44885.width_byteena_a = 1;
               defparam ix64056z44885.width_b = 8;
               defparam ix64056z44885.widthad_b = 4;
               defparam ix64056z44885.numwords_b = 16;
               defparam ix64056z44885.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z44885.address_reg_b = "CLOCK1";
               
               defparam ix64056z44885.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z44885.outdata_aclr_b = "NONE";
               defparam ix64056z44885.rdcontrol_aclr_b = "NONE";
               defparam ix64056z44885.indata_reg_b = "CLOCK1";
               
               defparam ix64056z44885.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z44885.byteena_reg_b = "CLOCK1";
               defparam ix64056z44885.indata_aclr_b = "NONE";
               defparam ix64056z44885.wrcontrol_aclr_b = "NONE";
               defparam ix64056z44885.byteena_aclr_b = "NONE";
               defparam ix64056z44885.width_byteena_b = 1;
               defparam ix64056z44885.address_aclr_b = "NONE";
               
               defparam ix64056z44885.operation_mode = "DUAL_PORT";
               defparam ix64056z44885.byte_size = 8;
               
               defparam ix64056z44885.read_during_write_mode_mixed_ports = "OLD_DATA";
               defparam ix64056z44885.ram_block_type = "AUTO";
               defparam ix64056z44885.init_file = "UNUSED";
               defparam ix64056z44885.init_file_layout = "UNUSED";
               defparam ix64056z44885.maximum_depth = 0;
               
               defparam ix64056z44885.intended_device_family = "Stratix";
               defparam ix64056z44885.lpm_hint = "UNUSED";
               defparam ix64056z44885.lpm_type = "altsyncram";
    assign rd_ena1_rename581 = 1 ;
    assign nx64056z1 = 1 ;
endmodule


module ram_dq_8_1 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [3:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire nx64056z1, rd_ena1_rename555;



    altsyncram ix64056z44884 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename555), .q_b ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]}), .rden_b (nx64056z1), .clock1 (wr_clk1)
               , .clocken1 (nx64056z1), .address_b ({addr1[3],addr1[2],addr1[1],
               addr1[0]})) ;
               defparam ix64056z44884.width_a = 8;
               defparam ix64056z44884.widthad_a = 4;
               defparam ix64056z44884.numwords_a = 16;
               
               defparam ix64056z44884.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z44884.address_aclr_a = "NONE";
               defparam ix64056z44884.outdata_aclr_a = "NONE";
               defparam ix64056z44884.indata_aclr_a = "NONE";
               defparam ix64056z44884.wrcontrol_aclr_a = "NONE";
               defparam ix64056z44884.byteena_aclr_a = "NONE";
               defparam ix64056z44884.width_byteena_a = 1;
               defparam ix64056z44884.width_b = 8;
               defparam ix64056z44884.widthad_b = 4;
               defparam ix64056z44884.numwords_b = 16;
               defparam ix64056z44884.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z44884.address_reg_b = "CLOCK1";
               
               defparam ix64056z44884.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z44884.outdata_aclr_b = "NONE";
               defparam ix64056z44884.rdcontrol_aclr_b = "NONE";
               defparam ix64056z44884.indata_reg_b = "CLOCK1";
               
               defparam ix64056z44884.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z44884.byteena_reg_b = "CLOCK1";
               defparam ix64056z44884.indata_aclr_b = "NONE";
               defparam ix64056z44884.wrcontrol_aclr_b = "NONE";
               defparam ix64056z44884.byteena_aclr_b = "NONE";
               defparam ix64056z44884.width_byteena_b = 1;
               defparam ix64056z44884.address_aclr_b = "NONE";
               
               defparam ix64056z44884.operation_mode = "DUAL_PORT";
               defparam ix64056z44884.byte_size = 8;
               
               defparam ix64056z44884.read_during_write_mode_mixed_ports = "OLD_DATA";
               defparam ix64056z44884.ram_block_type = "AUTO";
               defparam ix64056z44884.init_file = "UNUSED";
               defparam ix64056z44884.init_file_layout = "UNUSED";
               defparam ix64056z44884.maximum_depth = 0;
               
               defparam ix64056z44884.intended_device_family = "Stratix";
               defparam ix64056z44884.lpm_hint = "UNUSED";
               defparam ix64056z44884.lpm_type = "altsyncram";
    assign rd_ena1_rename555 = 1 ;
    assign nx64056z1 = 1 ;
endmodule


module ram_dq_8_0 ( wr_data1, rd_data1, addr1, wr_clk1, rd_clk1, wr_ena1, 
                    rd_ena1, ena1, rst1, regce1 ) ;

    input [7:0]wr_data1 ;
    output [7:0]rd_data1 ;
    input [3:0]addr1 ;
    input wr_clk1 ;
    input rd_clk1 ;
    input wr_ena1 ;
    input rd_ena1 ;
    input ena1 ;
    input rst1 ;
    input regce1 ;

    wire nx64056z1, rd_ena1_rename529;



    altsyncram ix64056z44883 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename529), .q_b ({rd_data1[7],
               rd_data1[6],rd_data1[5],rd_data1[4],rd_data1[3],rd_data1[2],
               rd_data1[1],rd_data1[0]}), .rden_b (nx64056z1), .clock1 (wr_clk1)
               , .clocken1 (nx64056z1), .address_b ({addr1[3],addr1[2],addr1[1],
               addr1[0]})) ;
               defparam ix64056z44883.width_a = 8;
               defparam ix64056z44883.widthad_a = 4;
               defparam ix64056z44883.numwords_a = 16;
               
               defparam ix64056z44883.outdata_reg_a = "UNREGISTERED";
               defparam ix64056z44883.address_aclr_a = "NONE";
               defparam ix64056z44883.outdata_aclr_a = "NONE";
               defparam ix64056z44883.indata_aclr_a = "NONE";
               defparam ix64056z44883.wrcontrol_aclr_a = "NONE";
               defparam ix64056z44883.byteena_aclr_a = "NONE";
               defparam ix64056z44883.width_byteena_a = 1;
               defparam ix64056z44883.width_b = 8;
               defparam ix64056z44883.widthad_b = 4;
               defparam ix64056z44883.numwords_b = 16;
               defparam ix64056z44883.rdcontrol_reg_b = "CLOCK1";
               defparam ix64056z44883.address_reg_b = "CLOCK1";
               
               defparam ix64056z44883.outdata_reg_b = "UNREGISTERED";
               defparam ix64056z44883.outdata_aclr_b = "NONE";
               defparam ix64056z44883.rdcontrol_aclr_b = "NONE";
               defparam ix64056z44883.indata_reg_b = "CLOCK1";
               
               defparam ix64056z44883.wrcontrol_wraddress_reg_b = "CLOCK1";
               defparam ix64056z44883.byteena_reg_b = "CLOCK1";
               defparam ix64056z44883.indata_aclr_b = "NONE";
               defparam ix64056z44883.wrcontrol_aclr_b = "NONE";
               defparam ix64056z44883.byteena_aclr_b = "NONE";
               defparam ix64056z44883.width_byteena_b = 1;
               defparam ix64056z44883.address_aclr_b = "NONE";
               
               defparam ix64056z44883.operation_mode = "DUAL_PORT";
               defparam ix64056z44883.byte_size = 8;
               
               defparam ix64056z44883.read_during_write_mode_mixed_ports = "OLD_DATA";
               defparam ix64056z44883.ram_block_type = "AUTO";
               defparam ix64056z44883.init_file = "UNUSED";
               defparam ix64056z44883.init_file_layout = "UNUSED";
               defparam ix64056z44883.maximum_depth = 0;
               
               defparam ix64056z44883.intended_device_family = "Stratix";
               defparam ix64056z44883.lpm_hint = "UNUSED";
               defparam ix64056z44883.lpm_type = "altsyncram";
    assign rd_ena1_rename529 = 1 ;
    assign nx64056z1 = 1 ;
endmodule


module add_8_0 ( cin, a, b, d, cout, p_i_valid, p_RData_0_ ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;
    input p_i_valid ;
    input p_RData_0_ ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx44952z23, nx_add_8_0_vcc_net;
    wire [15:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_add_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52932 (.cout (nx44952z23), .dataa (a[0]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix44952z52932.lut_mask = 16'h00aa;
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         p_RData_0_), .datab (p_i_valid), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z23)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h7880;
                         
                         defparam ix44952z52931.sum_lutc_input = "cin";
endmodule


module sub_8_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_sub_8_1_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_sub_8_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_1_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_8_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h66bb;
endmodule


module sub_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_sub_8_0_vcc_net;
    wire [12:0] xmplr_dummy ;




    cycloneii_lcell_comb ix44952z52923 (.combout (d[7]), .cout (nx23445z2), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z4)) ;
                         
                         defparam ix44952z52923.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52923.sum_lutc_input = "cin";
    assign nx_sub_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix44952z52925 (.combout (d[6]), .cout (nx44952z4), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z7)) ;
                         
                         defparam ix44952z52925.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52926 (.combout (d[5]), .cout (nx44952z7), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z10)) ;
                         
                         defparam ix44952z52926.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52927 (.combout (d[4]), .cout (nx44952z10), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z13)) ;
                         
                         defparam ix44952z52927.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52928 (.combout (d[3]), .cout (nx44952z13), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z16)) ;
                         
                         defparam ix44952z52928.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52929 (.combout (d[2]), .cout (nx44952z16), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z19)) ;
                         
                         defparam ix44952z52929.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h69d4;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_sub_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h66bb;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx57253z3, nx51271z1, nx58250z14, nx52268z1, nx58250z12, nx53265z1, 
         nx58250z10, nx54262z1, nx58250z8, nx55259z1, nx58250z6, nx56256z1, 
         nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
         nx_modgen_counter_8_0_vcc_net;
    wire [36:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (nx57253z3), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix58250z52929 (.combout (nx53265z1), .cout (nx58250z10)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z12)) ;
                         
                         defparam ix58250z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z1), .dataa (q[7]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z2)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'h5a00;
                         
                         defparam ix58250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52925 (.combout (nx57253z1), .cout (nx58250z2)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z4)) ;
                         
                         defparam ix58250z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52930 (.combout (nx52268z1), .cout (nx58250z12)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z14)) ;
                         
                         defparam ix58250z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52926 (.combout (nx56256z1), .cout (nx58250z4)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z6)) ;
                         
                         defparam ix58250z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52927 (.combout (nx55259z1), .cout (nx58250z6)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z8)) ;
                         
                         defparam ix58250z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52928 (.combout (nx54262z1), .cout (nx58250z8)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx58250z10)) ;
                         
                         defparam ix58250z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix58250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix58250z52931 (.combout (nx51271z1), .cout (nx58250z14)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix58250z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix57253z52923 (.combout (nx57253z3), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix57253z52923.lut_mask = 16'ha8a8;
endmodule


module addsub_9_0 ( mode, cin, a, b, d, cout, px64 ) ;

    input mode ;
    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;
    input px64 ;

    wire nx45949z32, nx45949z31, nx45949z28, nx45949z27, nx45949z24, nx45949z23, 
         nx45949z20, nx45949z19, nx45949z16, nx45949z15, nx45949z12, nx45949z11, 
         nx45949z8, nx45949z7, nx45949z4, nx45949z3, nx45949z35, 
         nx_addsub_9_0_vcc_net;
    wire [46:0] xmplr_dummy ;




    cycloneii_lcell_comb ix45949z52925 (.combout (d[7]), .cout (nx45949z3), .dataa (
                         nx45949z4), .datab (a[7]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z7)) ;
                         
                         defparam ix45949z52925.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52925.sum_lutc_input = "cin";
    assign nx_addsub_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix45949z52927 (.combout (d[6]), .cout (nx45949z7), .dataa (
                         nx45949z8), .datab (a[6]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z11)) ;
                         
                         defparam ix45949z52927.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52929 (.combout (d[5]), .cout (nx45949z11), .dataa (
                         nx45949z12), .datab (a[5]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z15)) ;
                         
                         defparam ix45949z52929.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52931 (.combout (d[4]), .cout (nx45949z15), .dataa (
                         nx45949z16), .datab (a[4]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z19)) ;
                         
                         defparam ix45949z52931.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52933 (.combout (d[3]), .cout (nx45949z19), .dataa (
                         nx45949z20), .datab (a[3]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z23)) ;
                         
                         defparam ix45949z52933.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52935 (.combout (d[2]), .cout (nx45949z23), .dataa (
                         nx45949z24), .datab (a[2]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z27)) ;
                         
                         defparam ix45949z52935.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52937 (.combout (d[1]), .cout (nx45949z27), .dataa (
                         nx45949z28), .datab (a[1]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z31)) ;
                         
                         defparam ix45949z52937.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52939 (.combout (d[0]), .cout (nx45949z31), .dataa (
                         nx45949z32), .datab (a[0]), .datac (1'b1), .datad (
                         nx_addsub_9_0_vcc_net), .cin (nx45949z35)) ;
                         
                         defparam ix45949z52939.lut_mask = 16'h96e8;
                         
                         defparam ix45949z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52941 (.cout (nx45949z35), .dataa (px64), .datab (
                         1'b1), .datac (1'b1), .datad (nx_addsub_9_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix45949z52941.lut_mask = 16'h0055;
    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .dataa (px64), .datab (
                         1'b1), .datac (1'b1), .datad (nx_addsub_9_0_vcc_net), .cin (
                         nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'ha500;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52938 (.combout (nx45949z28), .dataa (b[1]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52938.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52940 (.combout (nx45949z32), .dataa (b[0]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52940.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52926 (.combout (nx45949z4), .dataa (b[7]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52928 (.combout (nx45949z8), .dataa (b[6]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52930 (.combout (nx45949z12), .dataa (b[5]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52932 (.combout (nx45949z16), .dataa (b[4]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52934 (.combout (nx45949z20), .dataa (b[3]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52934.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52936 (.combout (nx45949z24), .dataa (b[2]), .datab (
                         px64), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52936.lut_mask = 16'h9999;
endmodule


module uw_uart ( CLK, RST, RXFLEX, datain, TXFLEX, o_pixavail, 
                 p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_RData_0_, p_nrst_int ) ;

    input CLK ;
    input RST ;
    input RXFLEX ;
    output [7:0]datain ;
    output TXFLEX ;
    output o_pixavail ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    output p_RData_0_ ;
    input p_nrst_int ;

    wire [7:0]SDin;
    wire RxErr, RxRDY, sdout_3_;
    wire [7:0]RData;
    wire State, dsend, mdata_3_, ack;
    wire [15:0]waitcount;
    wire LD_SDOUT, RawRx, nx46385z1, nx33354z2, nx42856z2, nx46385z6, nx33354z1, 
         nx39480z1, nx33468z1, PWR, nx36748z1, nx42856z1, nx54369z1, nx46385z2, 
         nx46385z3, nx46385z4, nx46385z5, nx36748z2;
    wire [158:0] xmplr_dummy ;




    UARTS u_UARTS (.CLK (CLK), .RST (RST), .Din ({xmplr_dummy [0],
          xmplr_dummy [1],xmplr_dummy [2],xmplr_dummy [3],sdout_3_,
          xmplr_dummy [4],xmplr_dummy [5],xmplr_dummy [6]}), .LD (LD_SDOUT), .Rx (
          RawRx), .Dout ({SDin[7],SDin[6],SDin[5],SDin[4],SDin[3],SDin[2],
          SDin[1],SDin[0]}), .RxErr (RxErr), .RxRDY (RxRDY), .p_Tx_Reg_14n6ss1_0_ (
          p_Tx_Reg_14n6ss1_0_), .p_NOT_rtlcn2 (p_NOT_rtlcn2), .p_RXFLEX (RXFLEX)
          , .p_nrst_int_dup_76 (p_nrst_int)) ;
    modgen_counter_16_0 modgen_counter_waitcount (.clock (CLK), .q ({
                        waitcount[15],waitcount[14],waitcount[13],waitcount[12],
                        waitcount[11],waitcount[10],waitcount[9],waitcount[8],
                        waitcount[7],waitcount[6],waitcount[5],waitcount[4],
                        waitcount[3],waitcount[2],waitcount[1],waitcount[0]}), .clk_en (
                        nx33354z1), .sclear (nx33354z2)) ;
    assign PWR = 1 ;
    cycloneii_lcell_ff reg_sdout_3_ (.regout (sdout_3_), .datain (nx42856z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_mdata_3_ (.regout (mdata_3_), .datain (nx36748z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_dsend (.regout (dsend), .datain (nx46385z1), .sdata (
                       RxErr), .clk (CLK), .ena (PWR), .aclr (1'b0), .sclr (RST)
                       , .sload (nx46385z6)) ;
    cycloneii_lcell_ff reg_ack (.regout (ack), .datain (nx39480z1), .sdata (1'b0
                       ), .clk (CLK), .ena (1'b1), .aclr (1'b0), .sclr (RST), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_State (.regout (State), .datain (nx42856z2), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_7_ (.regout (RData[7]), .datain (SDin[7]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_6_ (.regout (RData[6]), .datain (SDin[6]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_5_ (.regout (RData[5]), .datain (SDin[5]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_4_ (.regout (RData[4]), .datain (SDin[4]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_3_ (.regout (RData[3]), .datain (SDin[3]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_2_ (.regout (RData[2]), .datain (SDin[2]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_1_ (.regout (RData[1]), .datain (SDin[1]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RData_0_ (.regout (p_RData_0_), .datain (SDin[0]), .sdata (
                       1'b0), .clk (CLK), .ena (RxRDY), .aclr (RST), .sclr (1'b0
                       ), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_LD_SDOUT (.regout (LD_SDOUT), .datain (nx54369z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_CharAvail (.regout (o_pixavail), .datain (nx33468z1)
                       , .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix42856z52923 (.combout (nx42856z1), .dataa (nx42856z2)
                         , .datab (mdata_3_), .datac (sdout_3_), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix42856z52923.lut_mask = 16'hd8f0;
    cycloneii_lcell_comb ix36748z52923 (.combout (nx36748z1), .dataa (nx36748z2)
                         , .datab (nx46385z6), .datac (mdata_3_), .datad (
                         p_nrst_int), .cin (1'b0)) ;
                         
                         defparam ix36748z52923.lut_mask = 16'h72f0;
    cycloneii_lcell_comb ix33354z52923 (.combout (nx33354z1), .dataa (ack), .datab (
                         o_pixavail), .datac (p_nrst_int), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52923.lut_mask = 16'hefef;
    cycloneii_lcell_comb ix33354z52924 (.combout (nx33354z2), .dataa (nx46385z1)
                         , .datab (p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33354z52924.lut_mask = 16'hbbbb;
    cycloneii_lcell_comb ix36748z52924 (.combout (nx36748z2), .dataa (o_pixavail
                         ), .datab (RxErr), .datac (ack), .datad (nx46385z1), .cin (
                         1'b0)) ;
                         defparam ix36748z52924.lut_mask = 16'hfe04;
    cycloneii_lcell_comb ix46385z52927 (.combout (nx46385z5), .dataa (
                         waitcount[3]), .datab (waitcount[2]), .datac (
                         waitcount[1]), .datad (waitcount[0]), .cin (1'b0)) ;
                         
                         defparam ix46385z52927.lut_mask = 16'h0004;
    cycloneii_lcell_comb ix46385z52926 (.combout (nx46385z4), .dataa (
                         waitcount[7]), .datab (waitcount[6]), .datac (
                         waitcount[5]), .datad (waitcount[4]), .cin (1'b0)) ;
                         
                         defparam ix46385z52926.lut_mask = 16'h0040;
    cycloneii_lcell_comb ix46385z52925 (.combout (nx46385z3), .dataa (
                         waitcount[11]), .datab (waitcount[10]), .datac (
                         waitcount[9]), .datad (waitcount[8]), .cin (1'b0)) ;
                         
                         defparam ix46385z52925.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix46385z52924 (.combout (nx46385z2), .dataa (
                         waitcount[15]), .datab (waitcount[14]), .datac (
                         waitcount[13]), .datad (waitcount[12]), .cin (1'b0)) ;
                         
                         defparam ix46385z52924.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix54369z52923 (.combout (nx54369z1), .dataa (State), .datab (
                         dsend), .datac (LD_SDOUT), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix54369z52923.lut_mask = 16'h5454;
    cycloneii_lcell_comb ix33468z52923 (.combout (nx33468z1), .dataa (o_pixavail
                         ), .datab (RxRDY), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix33468z52923.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix39480z52923 (.combout (nx39480z1), .dataa (o_pixavail
                         ), .datab (ack), .datac (nx46385z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix39480z52923.lut_mask = 16'h0e0e;
    cycloneii_lcell_comb ix46385z52928 (.combout (nx46385z6), .dataa (o_pixavail
                         ), .datab (ack), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46385z52928.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix42856z52924 (.combout (nx42856z2), .dataa (State), .datab (
                         dsend), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix42856z52924.lut_mask = 16'h4444;
    cycloneii_lcell_comb ix46385z52923 (.combout (nx46385z1), .dataa (nx46385z2)
                         , .datab (nx46385z3), .datac (nx46385z4), .datad (
                         nx46385z5), .cin (1'b0)) ;
                         
                         defparam ix46385z52923.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix40426z52923 (.combout (datain[0]), .dataa (o_pixavail
                         ), .datab (p_RData_0_), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix40426z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix41423z52923 (.combout (datain[1]), .dataa (o_pixavail
                         ), .datab (RData[1]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix41423z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix42420z52923 (.combout (datain[2]), .dataa (o_pixavail
                         ), .datab (RData[2]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix42420z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix43417z52923 (.combout (datain[3]), .dataa (o_pixavail
                         ), .datab (RData[3]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix43417z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix44414z52923 (.combout (datain[4]), .dataa (o_pixavail
                         ), .datab (RData[4]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix44414z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix45411z52923 (.combout (datain[5]), .dataa (o_pixavail
                         ), .datab (RData[5]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix45411z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix46408z52923 (.combout (datain[6]), .dataa (o_pixavail
                         ), .datab (RData[6]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix46408z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix47405z52923 (.combout (datain[7]), .dataa (o_pixavail
                         ), .datab (RData[7]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix47405z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix29443z52923 (.combout (RawRx), .dataa (RXFLEX), .datab (
                         p_nrst_int), .datac (1'b1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix29443z52923.lut_mask = 16'h8888;
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

    wire nx51271z1, nx22081z30, nx52268z1, nx22081z28, nx53265z1, nx22081z26, 
         nx54262z1, nx22081z24, nx55259z1, nx22081z22, nx56256z1, nx22081z20, 
         nx57253z1, nx22081z18, nx58250z1, nx22081z16, nx59247z1, nx22081z14, 
         nx60244z1, nx22081z12, nx17096z1, nx22081z10, nx18093z1, nx22081z8, 
         nx19090z1, nx22081z6, nx20087z1, nx22081z4, nx21084z1, nx22081z2, 
         nx22081z1, nx_modgen_counter_16_0_vcc_net;
    wire [81:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_15_ (.regout (q[15]), .datain (nx22081z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_14_ (.regout (q[14]), .datain (nx21084z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_13_ (.regout (q[13]), .datain (nx20087z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_12_ (.regout (q[12]), .datain (nx19090z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (clk_en), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix22081z52925 (.combout (nx21084z1), .cout (nx22081z2)
                         , .dataa (q[14]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z4)) ;
                         
                         defparam ix22081z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52925.sum_lutc_input = "cin";
    assign nx_modgen_counter_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix22081z52926 (.combout (nx20087z1), .cout (nx22081z4)
                         , .dataa (q[13]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z6)) ;
                         
                         defparam ix22081z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52927 (.combout (nx19090z1), .cout (nx22081z6)
                         , .dataa (q[12]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z8)) ;
                         
                         defparam ix22081z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52928 (.combout (nx18093z1), .cout (nx22081z8)
                         , .dataa (q[11]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z10)) ;
                         
                         defparam ix22081z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52929 (.combout (nx17096z1), .cout (nx22081z10)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z12)) ;
                         
                         defparam ix22081z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52937 (.combout (nx53265z1), .cout (nx22081z26)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z28)) ;
                         
                         defparam ix22081z52937.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52930 (.combout (nx60244z1), .cout (nx22081z12)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z14)) ;
                         
                         defparam ix22081z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52938 (.combout (nx52268z1), .cout (nx22081z28)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z30)) ;
                         
                         defparam ix22081z52938.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52931 (.combout (nx59247z1), .cout (nx22081z14)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z16)) ;
                         
                         defparam ix22081z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52932 (.combout (nx58250z1), .cout (nx22081z16)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z18)) ;
                         
                         defparam ix22081z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52933 (.combout (nx57253z1), .cout (nx22081z18)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z20)) ;
                         
                         defparam ix22081z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52934 (.combout (nx56256z1), .cout (nx22081z20)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z22)) ;
                         
                         defparam ix22081z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52935 (.combout (nx55259z1), .cout (nx22081z22)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z24)) ;
                         
                         defparam ix22081z52935.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52936 (.combout (nx54262z1), .cout (nx22081z24)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z26)) ;
                         
                         defparam ix22081z52936.lut_mask = 16'h5aa0;
                         
                         defparam ix22081z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52923 (.combout (nx22081z1), .dataa (q[15]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (nx22081z2)) ;
                         
                         defparam ix22081z52923.lut_mask = 16'h5a00;
                         
                         defparam ix22081z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix22081z52939 (.combout (nx51271z1), .cout (nx22081z30)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix22081z52939.lut_mask = 16'h55aa;
endmodule


module UARTS ( CLK, RST, Din, LD, Rx, Baud, Dout, Tx, TxBusy, RxErr, RxRDY, 
               p_Tx_Reg_14n6ss1_0_, p_NOT_rtlcn2, p_RXFLEX, p_nrst_int_dup_76
                ) ;

    input CLK ;
    input RST ;
    input [7:0]Din ;
    input LD ;
    input Rx ;
    input Baud ;
    output [7:0]Dout ;
    output Tx ;
    output TxBusy ;
    output RxErr ;
    output RxRDY ;
    output p_Tx_Reg_14n6ss1_0_ ;
    output p_NOT_rtlcn2 ;
    input p_RXFLEX ;
    input p_nrst_int_dup_76 ;

    wire [7:0]Rx_Reg;
    wire TxDivisor_5_;
    wire [10:0]RxDiv;
    wire [11:0]TxDiv;
    wire TopTx, TopRx;
    wire [3:0]TxBitCnt;
    wire [3:0]RxBitCnt;
    wire Rx_r;
    wire [1:0]TxFSM;
    wire RxFSM_6_, RxFSM_5_, RxFSM_3_, RxFSM_2_, RxFSM_1_, RxFSM_0_, nx65151z1, 
         Tx_Reg_14n6ss1_3_, Tx_Reg_14n6ss1_2_, Tx_Reg_14n6ss1_1_, nx50920z2, 
         nx31615z2, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, nx13547z1, 
         nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, nx13547z2, 
         nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, nx9370z2, 
         nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, nx9370z1, 
         nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, nx34394z5, 
         nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, nx32400z2, 
         nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, nx15541z2, 
         nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, nx32400z8, 
         nx32400z9, not_Rx_r, NOT_Rx, nx30618z2, nx31615z1, nx29621z2, nx30618z1, 
         nx28624z2, nx29621z1, nx61140z1, nx28624z1, nx34394z2, nx16538z1;
    wire [335:0] xmplr_dummy ;




    modgen_counter_11_0 modgen_counter_RxDiv (.clock (CLK), .q ({RxDiv[10],
                        RxDiv[9],RxDiv[8],RxDiv[7],RxDiv[6],RxDiv[5],RxDiv[4],
                        RxDiv[3],RxDiv[2],RxDiv[1],RxDiv[0]}), .aclear (RST), .sclear (
                        nx65151z1)) ;
    modgen_counter_12_0 modgen_counter_TxDiv (.clock (CLK), .q ({TxDiv[11],
                        TxDiv[10],TxDiv[9],TxDiv[8],TxDiv[7],TxDiv[6],TxDiv[5],
                        TxDiv[4],TxDiv[3],TxDiv[2],TxDiv[1],TxDiv[0]}), .aclear (
                        RST), .sclear (nx32400z1)) ;
    assign PWR = 1 ;
    assign Rx_r = ~not_Rx_r ;
    assign RxFSM_0_ = ~nx34394z2 ;
    cycloneii_lcell_ff reg_Tx_Reg_4_ (.regout (nx30618z2), .datain (nx31615z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_3_ (.regout (nx29621z2), .datain (nx30618z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_2_ (.regout (nx28624z2), .datain (nx29621z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Tx_Reg_1_ (.regout (nx61140z1), .datain (nx28624z1), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_1_ (.regout (TxFSM[1]), .datain (nx5605z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxFSM_0_ (.regout (TxFSM[0]), .datain (nx4608z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TxDivisor_5_ (.regout (TxDivisor_5_), .datain (PWR), 
                       .sdata (1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopTx (.regout (TopTx), .datain (nx32400z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_TopRx (.regout (TopRx), .datain (nx34394z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_r (.regout (not_Rx_r), .datain (NOT_Rx), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_7_ (.regout (Rx_Reg[7]), .datain (Rx_r), .sdata (
                       1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_6_ (.regout (Rx_Reg[6]), .datain (Rx_Reg[7]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_5_ (.regout (Rx_Reg[5]), .datain (Rx_Reg[6]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_4_ (.regout (Rx_Reg[4]), .datain (Rx_Reg[5]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_3_ (.regout (Rx_Reg[3]), .datain (Rx_Reg[4]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_2_ (.regout (Rx_Reg[2]), .datain (Rx_Reg[3]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_1_ (.regout (Rx_Reg[1]), .datain (Rx_Reg[2]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Rx_Reg_0_ (.regout (Rx_Reg[0]), .datain (Rx_Reg[1]), 
                       .sdata (1'b0), .clk (CLK), .ena (nx54636z1), .aclr (RST)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxRDYi (.regout (RxRDY), .datain (nx30017z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_6_ (.regout (RxFSM_6_), .datain (RxFSM_1_), .sdata (
                       RxFSM_5_), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (not_Rx_r)) ;
    cycloneii_lcell_ff reg_RxFSM_5_ (.regout (RxFSM_5_), .datain (nx11553z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_3_ (.regout (RxFSM_3_), .datain (nx13547z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_2_ (.regout (RxFSM_2_), .datain (nx14544z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_1_ (.regout (RxFSM_1_), .datain (RxFSM_0_), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxFSM_0_ (.regout (nx34394z2), .datain (nx16538z1), .sdata (
                       1'b0), .clk (CLK), .ena (nx15541z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_RxErr (.regout (RxErr), .datain (nx15376z1), .sdata (
                       1'b0), .clk (CLK), .ena (1'b1), .aclr (RST), .sclr (1'b0)
                       , .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_7_ (.regout (Dout[7]), .datain (Rx_Reg[7]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_6_ (.regout (Dout[6]), .datain (Rx_Reg[6]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_5_ (.regout (Dout[5]), .datain (Rx_Reg[5]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_4_ (.regout (Dout[4]), .datain (Rx_Reg[4]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_3_ (.regout (Dout[3]), .datain (Rx_Reg[3]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_2_ (.regout (Dout[2]), .datain (Rx_Reg[2]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_1_ (.regout (Dout[1]), .datain (Rx_Reg[1]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_Dout_0_ (.regout (Dout[0]), .datain (Rx_Reg[0]), .sdata (
                       1'b0), .clk (CLK), .ena (nx30017z1), .aclr (RST), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_3_ (.regout (TxBitCnt[3]), 
                       .datain (nx51917z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_2_ (.regout (TxBitCnt[2]), 
                       .datain (nx50920z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_1_ (.regout (TxBitCnt[1]), 
                       .datain (nx49923z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_TxBitCnt_reg_q_0_ (.regout (TxBitCnt[0]), 
                       .datain (nx48926z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_3_ (.regout (RxBitCnt[3]), 
                       .datain (nx8373z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_2_ (.regout (RxBitCnt[2]), 
                       .datain (nx9370z1), .sdata (1'b0), .clk (CLK), .ena (1'b1
                       ), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_1_ (.regout (RxBitCnt[1]), 
                       .datain (nx10367z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_RxBitCnt_reg_q_0_ (.regout (RxBitCnt[0]), 
                       .datain (nx11364z1), .sdata (1'b0), .clk (CLK), .ena (
                       1'b1), .aclr (RST), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_comb ix29621z52924 (.combout (Tx_Reg_14n6ss1_2_), .dataa (
                         Din[3]), .datab (nx29621z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix30618z52924 (.combout (Tx_Reg_14n6ss1_3_), .dataa (
                         Din[3]), .datab (nx30618z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix65151z52923 (.combout (nx65151z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix65151z52923.lut_mask = 16'hdddd;
    cycloneii_lcell_comb ix32400z52931 (.combout (nx32400z9), .dataa (TxDiv[10])
                         , .datab (TxDiv[9]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix32400z52931.lut_mask = 16'h1111;
    cycloneii_lcell_comb ix32400z52930 (.combout (nx32400z8), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[0]), .datad (
                         nx32400z9), .cin (1'b0)) ;
                         
                         defparam ix32400z52930.lut_mask = 16'h0100;
    cycloneii_lcell_comb ix8373z52925 (.combout (nx8373z2), .dataa (RxBitCnt[3])
                         , .datab (RxBitCnt[2]), .datac (RxBitCnt[1]), .datad (
                         RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix8373z52925.lut_mask = 16'h6aaa;
    cycloneii_lcell_comb ix51917z52926 (.combout (nx51917z4), .dataa (
                         TxBitCnt[3]), .datab (TxBitCnt[2]), .datac (nx50920z2)
                         , .datad (nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix51917z52926.lut_mask = 16'hf0f1;
    cycloneii_lcell_comb ix4608z52925 (.combout (nx4608z3), .dataa (TxBitCnt[3])
                         , .datab (TxBitCnt[2]), .datac (TxBitCnt[1]), .datad (
                         TxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix4608z52925.lut_mask = 16'hfeff;
    cycloneii_lcell_comb ix4608z52924 (.combout (nx4608z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix4608z52924.lut_mask = 16'h3335;
    cycloneii_lcell_comb ix15541z52925 (.combout (nx15541z2), .dataa (Rx), .datab (
                         TopRx), .datac (RxFSM_6_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix15541z52925.lut_mask = 16'hac00;
    cycloneii_lcell_comb ix32400z52929 (.combout (nx32400z7), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52927 (.combout (nx32400z5), .dataa (TxDiv[4])
                         , .datab (TxDiv[3]), .datac (TxDiv[2]), .datad (
                         TxDiv[1]), .cin (1'b0)) ;
                         
                         defparam ix32400z52927.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52928 (.combout (nx32400z6), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix32400z52926 (.combout (nx32400z4), .dataa (TxDiv[8])
                         , .datab (TxDiv[7]), .datac (TxDiv[6]), .datad (
                         TxDiv[5]), .cin (1'b0)) ;
                         
                         defparam ix32400z52926.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix32400z52925 (.combout (nx32400z3), .dataa (
                         TxDivisor_5_), .datab (TxDiv[11]), .datac (TxDiv[10]), 
                         .datad (TxDiv[9]), .cin (1'b0)) ;
                         
                         defparam ix32400z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52924 (.combout (nx32400z2), .dataa (TxDiv[0])
                         , .datab (nx32400z3), .datac (nx32400z4), .datad (
                         nx32400z5), .cin (1'b0)) ;
                         
                         defparam ix32400z52924.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix34394z52929 (.combout (nx34394z8), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52929.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52931 (.combout (nx34394z10), .dataa (RxDiv[3])
                         , .datab (RxDiv[2]), .datac (RxDiv[1]), .datad (
                         RxDiv[0]), .cin (1'b0)) ;
                         
                         defparam ix34394z52931.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix34394z52928 (.combout (nx34394z7), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52928.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52930 (.combout (nx34394z9), .dataa (RxDiv[7])
                         , .datab (RxDiv[6]), .datac (RxDiv[5]), .datad (
                         RxDiv[4]), .cin (1'b0)) ;
                         
                         defparam ix34394z52930.lut_mask = 16'h0800;
    cycloneii_lcell_comb ix15541z52926 (.combout (nx15541z3), .dataa (p_RXFLEX)
                         , .datab (RxFSM_6_), .datac (p_nrst_int_dup_76), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix15541z52926.lut_mask = 16'hb3b3;
    cycloneii_lcell_comb ix34394z52927 (.combout (nx34394z6), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52927.lut_mask = 16'h0001;
    cycloneii_lcell_comb ix34394z52926 (.combout (nx34394z5), .dataa (nx34394z6)
                         , .datab (nx34394z7), .datac (nx34394z8), .datad (1'b1)
                         , .cin (1'b0)) ;
                         
                         defparam ix34394z52926.lut_mask = 16'h8080;
    cycloneii_lcell_comb ix34394z52925 (.combout (nx34394z4), .dataa (
                         TxDivisor_5_), .datab (RxDiv[10]), .datac (RxDiv[9]), .datad (
                         RxDiv[8]), .cin (1'b0)) ;
                         
                         defparam ix34394z52925.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix15376z52923 (.combout (nx15376z1), .dataa (RxErr), .datab (
                         RxRDY), .datac (RxFSM_6_), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix15376z52923.lut_mask = 16'hf2f2;
    cycloneii_lcell_comb ix11364z52923 (.combout (nx11364z1), .dataa (TopRx), .datab (
                         RxBitCnt[0]), .datac (RxFSM_3_), .datad (nx34394z2), .cin (
                         1'b0)) ;
                         defparam ix11364z52923.lut_mask = 16'h6c40;
    cycloneii_lcell_comb ix10367z52923 (.combout (nx10367z1), .dataa (
                         RxBitCnt[1]), .datab (RxBitCnt[0]), .datac (nx34394z2)
                         , .datad (not_rtlc17_X_0_n360), .cin (1'b0)) ;
                         
                         defparam ix10367z52923.lut_mask = 16'h60aa;
    cycloneii_lcell_comb ix9370z52923 (.combout (nx9370z1), .dataa (RxBitCnt[2])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx9370z2), .cin (1'b0)) ;
                         
                         defparam ix9370z52923.lut_mask = 16'h4a8a;
    cycloneii_lcell_comb ix8373z52923 (.combout (nx8373z1), .dataa (RxBitCnt[3])
                         , .datab (nx34394z2), .datac (not_rtlc17_X_0_n360), .datad (
                         nx8373z2), .cin (1'b0)) ;
                         
                         defparam ix8373z52923.lut_mask = 16'hca0a;
    cycloneii_lcell_comb ix48926z52923 (.combout (nx48926z1), .dataa (TopTx), .datab (
                         TxBitCnt[0]), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix48926z52923.lut_mask = 16'hce6c;
    cycloneii_lcell_comb ix49923z52923 (.combout (nx49923z1), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (nx50920z2)
                         , .datad (nx51917z2), .cin (1'b0)) ;
                         
                         defparam ix49923z52923.lut_mask = 16'h09aa;
    cycloneii_lcell_comb ix50920z52923 (.combout (nx50920z1), .dataa (
                         TxBitCnt[2]), .datab (nx50920z2), .datac (nx51917z2), .datad (
                         nx50920z3), .cin (1'b0)) ;
                         
                         defparam ix50920z52923.lut_mask = 16'h2a1a;
    cycloneii_lcell_comb ix51917z52923 (.combout (nx51917z1), .dataa (
                         TxBitCnt[3]), .datab (nx51917z2), .datac (nx51917z3), .datad (
                         nx51917z4), .cin (1'b0)) ;
                         
                         defparam ix51917z52923.lut_mask = 16'heea2;
    cycloneii_lcell_comb ix28624z52923 (.combout (nx28624z1), .dataa (nx61140z1)
                         , .datab (Tx_Reg_14n6ss1_1_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix29621z52923 (.combout (nx29621z1), .dataa (nx28624z2)
                         , .datab (Tx_Reg_14n6ss1_2_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix29621z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix30618z52923 (.combout (nx30618z1), .dataa (nx29621z2)
                         , .datab (Tx_Reg_14n6ss1_3_), .datac (nx31615z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix30618z52923.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix31615z52923 (.combout (nx31615z1), .dataa (Din[3]), .datab (
                         nx30618z2), .datac (TxFSM[1]), .datad (nx31615z2), .cin (
                         1'b0)) ;
                         defparam ix31615z52923.lut_mask = 16'h05cc;
    cycloneii_lcell_comb ix61812z52923 (.combout (p_NOT_rtlcn2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix61812z52923.lut_mask = 16'h0cca;
    cycloneii_lcell_comb ix9370z52924 (.combout (nx9370z2), .dataa (RxBitCnt[1])
                         , .datab (RxBitCnt[0]), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix9370z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix51917z52925 (.combout (nx51917z3), .dataa (
                         TxBitCnt[2]), .datab (TxBitCnt[1]), .datac (TxBitCnt[0]
                         ), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix51917z52925.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix50920z52925 (.combout (nx50920z3), .dataa (
                         TxBitCnt[1]), .datab (TxBitCnt[0]), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52925.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix51917z52924 (.combout (nx51917z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (TxFSM[0]), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix51917z52924.lut_mask = 16'h2828;
    cycloneii_lcell_comb ix4608z52923 (.combout (nx4608z1), .dataa (TxFSM[1]), .datab (
                         TxFSM[0]), .datac (nx4608z2), .datad (nx4608z3), .cin (
                         1'b0)) ;
                         defparam ix4608z52923.lut_mask = 16'hc1c3;
    cycloneii_lcell_comb ix30017z52923 (.combout (nx30017z1), .dataa (TopRx), .datab (
                         not_Rx_r), .datac (RxFSM_5_), .datad (1'b1), .cin (1'b0
                         )) ;
                         defparam ix30017z52923.lut_mask = 16'h2020;
    cycloneii_lcell_comb ix13547z52924 (.combout (nx13547z2), .dataa (
                         RxBitCnt[3]), .datab (RxBitCnt[2]), .datac (RxBitCnt[1]
                         ), .datad (RxBitCnt[0]), .cin (1'b0)) ;
                         
                         defparam ix13547z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix32400z52923 (.combout (nx32400z1), .dataa (nx32400z2)
                         , .datab (nx32400z6), .datac (nx32400z7), .datad (
                         nx32400z8), .cin (1'b0)) ;
                         
                         defparam ix32400z52923.lut_mask = 16'heaaa;
    cycloneii_lcell_comb ix34394z52924 (.combout (nx34394z3), .dataa (nx34394z4)
                         , .datab (nx34394z5), .datac (nx34394z9), .datad (
                         nx34394z10), .cin (1'b0)) ;
                         
                         defparam ix34394z52924.lut_mask = 16'heccc;
    cycloneii_lcell_comb ix34394z52923 (.combout (nx34394z1), .dataa (nx34394z2)
                         , .datab (nx34394z3), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix34394z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix11553z52923 (.combout (nx11553z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix11553z52923.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix16538z52923 (.combout (nx16538z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_6_), .datac (RxFSM_5_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix16538z52923.lut_mask = 16'h2323;
    cycloneii_lcell_comb ix14544z52923 (.combout (nx14544z1), .dataa (not_Rx_r)
                         , .datab (RxFSM_3_), .datac (RxFSM_1_), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix14544z52923.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix13547z52923 (.combout (nx13547z1), .dataa (RxFSM_2_)
                         , .datab (nx13547z2), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix13547z52923.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix15541z52924 (.combout (nx15541z1), .dataa (not_Rx_r)
                         , .datab (nx34394z2), .datac (nx15541z2), .datad (
                         nx15541z3), .cin (1'b0)) ;
                         
                         defparam ix15541z52924.lut_mask = 16'hf2f0;
    cycloneii_lcell_comb ix54636z52924 (.combout (nx54636z1), .dataa (TopRx), .datab (
                         RxFSM_3_), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix54636z52924.lut_mask = 16'h8888;
    cycloneii_lcell_comb ix8373z52924 (.combout (not_rtlc17_X_0_n360), .dataa (
                         TopRx), .datab (RxFSM_3_), .datac (nx34394z2), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix8373z52924.lut_mask = 16'h8b8b;
    cycloneii_lcell_comb ix31615z52924 (.combout (nx31615z2), .dataa (LD), .datab (
                         TopTx), .datac (TxFSM[1]), .datad (TxFSM[0]), .cin (
                         1'b0)) ;
                         defparam ix31615z52924.lut_mask = 16'h00ca;
    cycloneii_lcell_comb ix50920z52924 (.combout (nx50920z2), .dataa (TopTx), .datab (
                         TxFSM[1]), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix50920z52924.lut_mask = 16'h2222;
    cycloneii_lcell_comb ix61140z52923 (.combout (p_Tx_Reg_14n6ss1_0_), .dataa (
                         nx61140z1), .datab (TxFSM[1]), .datac (TxFSM[0]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix61140z52923.lut_mask = 16'hf8f8;
    cycloneii_lcell_comb ix28624z52924 (.combout (Tx_Reg_14n6ss1_1_), .dataa (
                         Din[3]), .datab (nx28624z2), .datac (TxFSM[1]), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix28624z52924.lut_mask = 16'h3a3a;
    cycloneii_lcell_comb ix5605z52923 (.combout (nx5605z1), .dataa (TxFSM[0]), .datab (
                         TxFSM[1]), .datac (TopTx), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix5605z52923.lut_mask = 16'h6c6c;
    cycloneii_lcell_comb ix57064z52923 (.combout (NOT_Rx), .dataa (p_RXFLEX), .datab (
                         p_nrst_int_dup_76), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix57064z52923.lut_mask = 16'h7777;
endmodule


module modgen_counter_12_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [11:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [11:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
         nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
         nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
         nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
         nx_modgen_counter_12_0_vcc_net;
    wire [61:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_11_ (.regout (q[11]), .datain (nx18093z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix18093z52933 (.combout (nx53265z1), .cout (nx18093z18)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z20)) ;
                         
                         defparam ix18093z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52933.sum_lutc_input = "cin";
    assign nx_modgen_counter_12_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix18093z52923 (.combout (nx18093z1), .dataa (q[11]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z2)) ;
                         
                         defparam ix18093z52923.lut_mask = 16'h5a00;
                         
                         defparam ix18093z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52925 (.combout (nx17096z1), .cout (nx18093z2)
                         , .dataa (q[10]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z4)) ;
                         
                         defparam ix18093z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52926 (.combout (nx60244z1), .cout (nx18093z4)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z6)) ;
                         
                         defparam ix18093z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52927 (.combout (nx59247z1), .cout (nx18093z6)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z8)) ;
                         
                         defparam ix18093z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52928 (.combout (nx58250z1), .cout (nx18093z8)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z10)) ;
                         
                         defparam ix18093z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52934 (.combout (nx52268z1), .cout (nx18093z20)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z22)) ;
                         
                         defparam ix18093z52934.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52929 (.combout (nx57253z1), .cout (nx18093z10)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z12)) ;
                         
                         defparam ix18093z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52930 (.combout (nx56256z1), .cout (nx18093z12)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z14)) ;
                         
                         defparam ix18093z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52931 (.combout (nx55259z1), .cout (nx18093z14)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z16)) ;
                         
                         defparam ix18093z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52932 (.combout (nx54262z1), .cout (nx18093z16)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (nx18093z18)) ;
                         
                         defparam ix18093z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix18093z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix18093z52935 (.combout (nx51271z1), .cout (nx18093z22)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_12_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix18093z52935.lut_mask = 16'h55aa;
endmodule


module modgen_counter_11_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                             updn, cnt_en ) ;

    input clock ;
    output [10:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [10:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx51271z1, nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, 
         nx54262z1, nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, 
         nx57253z1, nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, 
         nx60244z1, nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net;
    wire [56:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_9_ (.regout (q[9]), .datain (nx60244z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_10_ (.regout (q[10]), .datain (nx17096z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (1'b1), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix17096z52932 (.combout (nx53265z1), .cout (nx17096z16)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z18)) ;
                         
                         defparam ix17096z52932.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52932.sum_lutc_input = "cin";
    assign nx_modgen_counter_11_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix17096z52923 (.combout (nx17096z1), .dataa (q[10]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z2)) ;
                         
                         defparam ix17096z52923.lut_mask = 16'h5a00;
                         
                         defparam ix17096z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52925 (.combout (nx60244z1), .cout (nx17096z2)
                         , .dataa (q[9]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z4)) ;
                         
                         defparam ix17096z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52926 (.combout (nx59247z1), .cout (nx17096z4)
                         , .dataa (q[8]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z6)) ;
                         
                         defparam ix17096z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52927 (.combout (nx58250z1), .cout (nx17096z6)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z8)) ;
                         
                         defparam ix17096z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52933 (.combout (nx52268z1), .cout (nx17096z18)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z20)) ;
                         
                         defparam ix17096z52933.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52928 (.combout (nx57253z1), .cout (nx17096z8)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z10)) ;
                         
                         defparam ix17096z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52929 (.combout (nx56256z1), .cout (nx17096z10)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z12)) ;
                         
                         defparam ix17096z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52930 (.combout (nx55259z1), .cout (nx17096z12)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z14)) ;
                         
                         defparam ix17096z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52931 (.combout (nx54262z1), .cout (nx17096z14)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (nx17096z16)) ;
                         
                         defparam ix17096z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix17096z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix17096z52934 (.combout (nx51271z1), .cout (nx17096z20)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_11_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix17096z52934.lut_mask = 16'h55aa;
endmodule

