//
// Verilog description for cell lab3, 
// 02/15/14 13:32:02
//
// Precision RTL Synthesis, 2008a.47//


module lab3 ( i_clock, i_valid, i_input, i_reset, o_output ) ;

    input i_clock ;
    input i_valid ;
    input [7:0]i_input ;
    input i_reset ;
    output [7:0]o_output ;

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
         nx3163z34, nx3163z38, i_clock_int, i_valid_int;
    wire [7:0]i_input_int;
    wire i_reset_int, nx3163z76, nx3163z1, nx3163z72, nx3163z57, nx46973z1, 
         nx3163z3;
    wire [7:0]rtlc4n0_4n1s3f2;
    wire nx35397z1, nx51243z1, nx54113z1, nx12249z1, nx13246z1, nx14243z1, 
         modgen_counter_y_pos_NOT_a_0_, nx35397z2, nx43982z1, nx44979z1, 
         nx45976z1, modgen_counter_x_pos_NOT_a_0_, nx53087z2, nx53087z1, 
         nx3163z58, nx3163z73, nx3163z74, nx3163z75, nx3163z60, nx3163z65, 
         nx3163z2, nx3163z56, nx3163z77, nx3163z5, nx3163z70, nx42146z1, 
         nx42146z2, nx41149z1, nx40152z1, nx39155z1, nx38158z1, nx37161z1, 
         nx36164z1, nx35167z1, nx20192z1, nx19195z1, nx18198z1, nx17201z1, 
         nx16204z1, nx15207z1, nx14210z1, nx13213z1, nx3163z71, nx53066z1, 
         nx54084z1, NOT_i_2_;
    wire [540:0] xmplr_dummy ;




    addsub_9_0 ix3163z30602 (.cin (i[0]), .a ({xmplr_dummy [0],
               rtlc4n0_4n1s3f1[7],rtlc4n0_4n1s3f1[6],rtlc4n0_4n1s3f1[5],
               rtlc4n0_4n1s3f1[4],rtlc4n0_4n1s3f1[3],rtlc4n0_4n1s3f1[2],
               rtlc4n0_4n1s3f1[1],rtlc4n0_4n1s3f1[0]}), .b ({xmplr_dummy [1],
               rtlc4n0_4n1s3f2[7],rtlc4n0_4n1s3f2[6],rtlc4n0_4n1s3f2[5],
               rtlc4n0_4n1s3f2[4],rtlc4n0_4n1s3f2[3],rtlc4n0_4n1s3f2[2],
               rtlc4n0_4n1s3f2[1],rtlc4n0_4n1s3f2[0]}), .d ({nx3163z59,nx3163z8,
               nx3163z49,nx3163z50,nx3163z51,nx3163z52,nx3163z53,nx3163z54,
               nx3163z55}), .px147 (nx54084z1)) ;
    modgen_counter_8_0 modgen_counter_o_output (.clock (i_clock_int), .clk_en (
                       nx3163z1), .aclear (i_reset_int), .sclear (nx3163z76), .cnt_en (
                       nx3163z72), .px51 (nx42146z1), .px24 (nx42146z2), .px47 (
                       nx41149z1), .px25 (nx40152z1), .px17 (nx39155z1), .px13 (
                       nx38158z1), .px9 (nx37161z1), .px5 (nx36164z1), .px1 (
                       nx35167z1)) ;
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
            nx3163z53,nx3163z54,nx3163z55}), .b ({i_input_int[7],i_input_int[6],
            i_input_int[5],i_input_int[4],i_input_int[3],i_input_int[2],
            i_input_int[1],i_input_int[0]}), .d (rtlc4n0_4n1s2), .cout (nx3163z7
            )) ;
    ram_dq_8_0 mem (.wr_data1 ({i_input_int[7],i_input_int[6],i_input_int[5],
               i_input_int[4],i_input_int[3],i_input_int[2],i_input_int[1],
               i_input_int[0]}), .rd_data1 ({mem_1_q[7],mem_1_q[6],mem_1_q[5],
               mem_1_q[4],mem_1_q[3],mem_1_q[2],mem_1_q[1],mem_1_q[0]}), .addr1 (
               {x_pos[3],x_pos[2],x_pos[1],x_pos[0]}), .wr_clk1 (i_clock_int), .wr_ena1 (
               nx51243z1)) ;
    ram_dq_8_1 mem_0 (.wr_data1 ({i_input_int[7],i_input_int[6],i_input_int[5],
               i_input_int[4],i_input_int[3],i_input_int[2],i_input_int[1],
               i_input_int[0]}), .rd_data1 ({mem_2_q[7],mem_2_q[6],mem_2_q[5],
               mem_2_q[4],mem_2_q[3],mem_2_q[2],mem_2_q[1],mem_2_q[0]}), .addr1 (
               {x_pos[3],x_pos[2],x_pos[1],x_pos[0]}), .wr_clk1 (i_clock_int), .wr_ena1 (
               nx3163z3)) ;
    ram_dq_8_2 mem_1 (.wr_data1 ({i_input_int[7],i_input_int[6],i_input_int[5],
               i_input_int[4],i_input_int[3],i_input_int[2],i_input_int[1],
               i_input_int[0]}), .rd_data1 ({mem_3_q[7],mem_3_q[6],mem_3_q[5],
               mem_3_q[4],mem_3_q[3],mem_3_q[2],mem_3_q[1],mem_3_q[0]}), .addr1 (
               {x_pos[3],x_pos[2],x_pos[1],x_pos[0]}), .wr_clk1 (i_clock_int), .wr_ena1 (
               nx54113z1)) ;
    assign modgen_counter_y_pos_NOT_a_0_ = ~y_pos[0] ;
    assign modgen_counter_x_pos_NOT_a_0_ = ~x_pos[0] ;
    assign i[0] = ~nx54084z1 ;
    assign NOT_i_2_ = ~i[2] ;
    cycloneii_lcell_ff reg_out_o_output_obuf_7_ (.regout (nx13213z1), .datain (
                       nx42146z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_6_ (.regout (nx14210z1), .datain (
                       nx41149z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_5_ (.regout (nx15207z1), .datain (
                       nx40152z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_4_ (.regout (nx16204z1), .datain (
                       nx39155z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_3_ (.regout (nx17201z1), .datain (
                       nx38158z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_2_ (.regout (nx18198z1), .datain (
                       nx37161z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_1_ (.regout (nx19195z1), .datain (
                       nx36164z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_out_o_output_obuf_0_ (.regout (nx20192z1), .datain (
                       nx35167z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx42146z2), .aclr (i_reset_int), .sclr (nx3163z76), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff reg_new_number_set (.regout (nx3163z71), .datain (
                       nx53066z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_2_ (.regout (i[2]), .datain (i[1]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (nx53087z1), .aclr (nx46973z1), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_1_ (.regout (i[1]), .datain (i[0]), .sdata (1'b0), 
                       .clk (i_clock_int), .ena (nx53087z1), .aclr (nx46973z1), 
                       .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_i_0_ (.regout (nx54084z1), .datain (NOT_i_2_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx53087z1), .aclr (
                       nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_end_of_input (.regout (end_of_input), .datain (
                       nx35397z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_3_ (.regout (y_pos[3]), .datain (
                       nx12249z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_2_ (.regout (y_pos[2]), .datain (
                       nx13246z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_1_ (.regout (y_pos[1]), .datain (
                       nx14243z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx53087z1), .aclr (nx46973z1), .sclr (1'b0), .sload (1'b0
                       )) ;
    cycloneii_lcell_ff modgen_counter_y_pos_reg_q_0_ (.regout (y_pos[0]), .datain (
                       modgen_counter_y_pos_NOT_a_0_), .sdata (1'b0), .clk (
                       i_clock_int), .ena (nx53087z1), .aclr (nx46973z1), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_3_ (.regout (x_pos[3]), .datain (
                       nx43982z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (nx46973z1), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_2_ (.regout (x_pos[2]), .datain (
                       nx44979z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (nx46973z1), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_1_ (.regout (x_pos[1]), .datain (
                       nx45976z1), .sdata (1'b0), .clk (i_clock_int), .ena (
                       i_valid_int), .aclr (nx46973z1), .sclr (1'b0), .sload (
                       1'b0)) ;
    cycloneii_lcell_ff modgen_counter_x_pos_reg_q_0_ (.regout (x_pos[0]), .datain (
                       modgen_counter_x_pos_NOT_a_0_), .sdata (1'b0), .clk (
                       i_clock_int), .ena (i_valid_int), .aclr (nx46973z1), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io ix20192z43919 (.padio (o_output[0]), .datain (nx20192z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix20192z43919.operation_mode = "output";
                 
                 defparam ix20192z43919.output_register_mode = "none";
                 
                 defparam ix20192z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix20192z43919.oe_register_mode = "none";
                 
                 defparam ix20192z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix20192z43919.input_register_mode = "none";
    cycloneii_io ix13213z43919 (.padio (o_output[7]), .datain (nx13213z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix13213z43919.operation_mode = "output";
                 
                 defparam ix13213z43919.output_register_mode = "none";
                 
                 defparam ix13213z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix13213z43919.oe_register_mode = "none";
                 
                 defparam ix13213z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix13213z43919.input_register_mode = "none";
    cycloneii_io ix14210z43919 (.padio (o_output[6]), .datain (nx14210z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix14210z43919.operation_mode = "output";
                 
                 defparam ix14210z43919.output_register_mode = "none";
                 
                 defparam ix14210z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix14210z43919.oe_register_mode = "none";
                 
                 defparam ix14210z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix14210z43919.input_register_mode = "none";
    cycloneii_io ix15207z43919 (.padio (o_output[5]), .datain (nx15207z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix15207z43919.operation_mode = "output";
                 
                 defparam ix15207z43919.output_register_mode = "none";
                 
                 defparam ix15207z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix15207z43919.oe_register_mode = "none";
                 
                 defparam ix15207z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix15207z43919.input_register_mode = "none";
    cycloneii_io ix16204z43919 (.padio (o_output[4]), .datain (nx16204z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix16204z43919.operation_mode = "output";
                 
                 defparam ix16204z43919.output_register_mode = "none";
                 
                 defparam ix16204z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix16204z43919.oe_register_mode = "none";
                 
                 defparam ix16204z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix16204z43919.input_register_mode = "none";
    cycloneii_io ix17201z43919 (.padio (o_output[3]), .datain (nx17201z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix17201z43919.operation_mode = "output";
                 
                 defparam ix17201z43919.output_register_mode = "none";
                 
                 defparam ix17201z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix17201z43919.oe_register_mode = "none";
                 
                 defparam ix17201z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix17201z43919.input_register_mode = "none";
    cycloneii_io ix18198z43919 (.padio (o_output[2]), .datain (nx18198z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix18198z43919.operation_mode = "output";
                 
                 defparam ix18198z43919.output_register_mode = "none";
                 
                 defparam ix18198z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix18198z43919.oe_register_mode = "none";
                 
                 defparam ix18198z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix18198z43919.input_register_mode = "none";
    cycloneii_io ix19195z43919 (.padio (o_output[1]), .datain (nx19195z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix19195z43919.operation_mode = "output";
                 
                 defparam ix19195z43919.output_register_mode = "none";
                 
                 defparam ix19195z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix19195z43919.oe_register_mode = "none";
                 
                 defparam ix19195z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix19195z43919.input_register_mode = "none";
    cycloneii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_valid_ibuf.operation_mode = "input";
                 
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_valid_ibuf.input_register_mode = "none";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_input_ibuf_7_ (.combout (i_input_int[7]), .padio (i_input[7])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_7_.operation_mode = "input";
                 
                 defparam i_input_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_7_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_7_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_7_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_6_ (.combout (i_input_int[6]), .padio (i_input[6])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_6_.operation_mode = "input";
                 
                 defparam i_input_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_6_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_6_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_6_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_5_ (.combout (i_input_int[5]), .padio (i_input[5])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_5_.operation_mode = "input";
                 
                 defparam i_input_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_5_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_5_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_5_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_4_ (.combout (i_input_int[4]), .padio (i_input[4])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_4_.operation_mode = "input";
                 
                 defparam i_input_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_4_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_4_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_4_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_3_ (.combout (i_input_int[3]), .padio (i_input[3])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_3_.operation_mode = "input";
                 
                 defparam i_input_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_3_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_3_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_3_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_2_ (.combout (i_input_int[2]), .padio (i_input[2])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_2_.operation_mode = "input";
                 
                 defparam i_input_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_2_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_2_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_2_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_1_ (.combout (i_input_int[1]), .padio (i_input[1])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_1_.operation_mode = "input";
                 
                 defparam i_input_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_1_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_1_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_1_.input_register_mode = "none";
    cycloneii_io i_input_ibuf_0_ (.combout (i_input_int[0]), .padio (i_input[0])
                 , .datain (1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1)
                 , .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam i_input_ibuf_0_.operation_mode = "input";
                 
                 defparam i_input_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_input_ibuf_0_.tie_off_output_clock_enable = "false";
                 defparam i_input_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_input_ibuf_0_.tie_off_oe_clock_enable = "false";
                 defparam i_input_ibuf_0_.input_register_mode = "none";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix3163z52931 (.combout (rtlc4n0_4n1s3f1[7]), .dataa (
                         nx3163z10), .datab (nx54113z1), .datac (nx3163z12), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52931.lut_mask = 16'h6262;
    cycloneii_lcell_comb ix3163z52946 (.combout (nx3163z38), .dataa (mem_2_q[0])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z39), .cin (1'b0)) ;
                         
                         defparam ix3163z52946.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52944 (.combout (nx3163z34), .dataa (mem_2_q[1])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z35), .cin (1'b0)) ;
                         
                         defparam ix3163z52944.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52933 (.combout (rtlc4n0_4n1s3f1[6]), .dataa (
                         nx3163z14), .datab (nx3163z16), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52933.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52942 (.combout (nx3163z30), .dataa (mem_2_q[2])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z31), .cin (1'b0)) ;
                         
                         defparam ix3163z52942.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52940 (.combout (nx3163z26), .dataa (mem_2_q[3])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z27), .cin (1'b0)) ;
                         
                         defparam ix3163z52940.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52938 (.combout (nx3163z22), .dataa (mem_2_q[4])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z23), .cin (1'b0)) ;
                         
                         defparam ix3163z52938.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52935 (.combout (rtlc4n0_4n1s3f1[5]), .dataa (
                         nx3163z18), .datab (nx3163z20), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52935.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52936 (.combout (nx3163z18), .dataa (mem_2_q[5])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z19), .cin (1'b0)) ;
                         
                         defparam ix3163z52936.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52934 (.combout (nx3163z14), .dataa (mem_2_q[6])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z15), .cin (1'b0)) ;
                         
                         defparam ix3163z52934.lut_mask = 16'he3e0;
    cycloneii_lcell_comb ix3163z52937 (.combout (rtlc4n0_4n1s3f1[4]), .dataa (
                         nx3163z22), .datab (nx3163z24), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52937.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52932 (.combout (nx3163z10), .dataa (mem_2_q[7])
                         , .datab (nx54113z1), .datac (nx51243z1), .datad (
                         nx3163z11), .cin (1'b0)) ;
                         
                         defparam ix3163z52932.lut_mask = 16'he3e0;
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
    cycloneii_lcell_comb ix53087z52924 (.combout (nx53087z1), .dataa (x_pos[3])
                         , .datab (x_pos[2]), .datac (nx53087z2), .datad (
                         i_valid_int), .cin (1'b0)) ;
                         
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
    cycloneii_lcell_comb ix53066z52923 (.combout (nx53066z1), .dataa (nx3163z71)
                         , .datab (i_valid_int), .datac (1'b1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix53066z52923.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix3163z52954 (.combout (rtlc4n0_4n1s3f2[0]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[0]), .datad (
                         i_input_int[0]), .cin (1'b0)) ;
                         
                         defparam ix3163z52954.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52953 (.combout (rtlc4n0_4n1s3f2[1]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[1]), .datad (
                         i_input_int[1]), .cin (1'b0)) ;
                         
                         defparam ix3163z52953.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52952 (.combout (rtlc4n0_4n1s3f2[2]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[2]), .datad (
                         i_input_int[2]), .cin (1'b0)) ;
                         
                         defparam ix3163z52952.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52951 (.combout (rtlc4n0_4n1s3f2[3]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[3]), .datad (
                         i_input_int[3]), .cin (1'b0)) ;
                         
                         defparam ix3163z52951.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52950 (.combout (rtlc4n0_4n1s3f2[4]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[4]), .datad (
                         i_input_int[4]), .cin (1'b0)) ;
                         
                         defparam ix3163z52950.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52949 (.combout (rtlc4n0_4n1s3f2[5]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[5]), .datad (
                         i_input_int[5]), .cin (1'b0)) ;
                         
                         defparam ix3163z52949.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52948 (.combout (rtlc4n0_4n1s3f2[6]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[6]), .datad (
                         i_input_int[6]), .cin (1'b0)) ;
                         
                         defparam ix3163z52948.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52947 (.combout (rtlc4n0_4n1s3f2[7]), .dataa (
                         i[2]), .datab (i[1]), .datac (mem_3_q[7]), .datad (
                         i_input_int[7]), .cin (1'b0)) ;
                         
                         defparam ix3163z52947.lut_mask = 16'hfe10;
    cycloneii_lcell_comb ix3163z52925 (.combout (nx3163z3), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix3163z52925.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix46973z52924 (.combout (nx46973z1), .dataa (
                         end_of_input), .datab (i_reset_int), .datac (1'b1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix46973z52924.lut_mask = 16'heeee;
    cycloneii_lcell_comb ix3163z52956 (.combout (nx3163z57), .dataa (i[2]), .datab (
                         i[1]), .datac (nx54084z1), .datad (1'b1), .cin (1'b0)
                         ) ;
                         defparam ix3163z52956.lut_mask = 16'h6060;
    cycloneii_lcell_comb ix3163z52961 (.combout (nx3163z72), .dataa (y_pos[3]), 
                         .datab (y_pos[2]), .datac (y_pos[1]), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix3163z52961.lut_mask = 16'hfefe;
    cycloneii_lcell_comb ix3163z52923 (.combout (nx3163z1), .dataa (i_valid_int)
                         , .datab (nx3163z2), .datac (nx3163z56), .datad (
                         nx3163z70), .cin (1'b0)) ;
                         
                         defparam ix3163z52923.lut_mask = 16'haaa8;
    cycloneii_lcell_comb ix3163z52965 (.combout (nx3163z76), .dataa (nx3163z71)
                         , .datab (nx3163z72), .datac (nx3163z77), .datad (
                         nx3163z56), .cin (1'b0)) ;
                         
                         defparam ix3163z52965.lut_mask = 16'h1115;
    cycloneii_lcell_comb ix3163z52941 (.combout (rtlc4n0_4n1s3f1[2]), .dataa (
                         nx3163z30), .datab (nx3163z32), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52941.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52943 (.combout (rtlc4n0_4n1s3f1[1]), .dataa (
                         nx3163z34), .datab (nx3163z36), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52943.lut_mask = 16'h4a4a;
    cycloneii_lcell_comb ix3163z52945 (.combout (rtlc4n0_4n1s3f1[0]), .dataa (
                         nx3163z38), .datab (nx3163z40), .datac (nx54113z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix3163z52945.lut_mask = 16'h4a4a;
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

    wire nx64056z1, rd_ena1_rename336;



    altsyncram ix64056z44885 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename336), .q_b ({rd_data1[7],
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
    assign rd_ena1_rename336 = 1 ;
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

    wire nx64056z1, rd_ena1_rename310;



    altsyncram ix64056z44884 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename310), .q_b ({rd_data1[7],
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
    assign rd_ena1_rename310 = 1 ;
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

    wire nx64056z1, rd_ena1_rename284;



    altsyncram ix64056z44883 (.data_a ({wr_data1[7],wr_data1[6],wr_data1[5],
               wr_data1[4],wr_data1[3],wr_data1[2],wr_data1[1],wr_data1[0]}), .address_a (
               {addr1[3],addr1[2],addr1[1],addr1[0]}), .wren_a (wr_ena1), .clock0 (
               wr_clk1), .clocken0 (rd_ena1_rename284), .q_b ({rd_data1[7],
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
    assign rd_ena1_rename284 = 1 ;
    assign nx64056z1 = 1 ;
endmodule


module add_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, nx44952z7, 
         nx44952z4, nx23445z2, nx_add_8_0_vcc_net;
    wire [12:0] xmplr_dummy ;




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
    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_add_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hf000;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52930 (.combout (d[1]), .cout (nx44952z19), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (nx44952z22)) ;
                         
                         defparam ix44952z52930.lut_mask = 16'h96e8;
                         
                         defparam ix44952z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix44952z52931 (.combout (d[0]), .cout (nx44952z22), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix44952z52931.lut_mask = 16'h6688;
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
                            updn, cnt_en, px51, px24, px47, px25, px17, px13, 
                            px9, px5, px1 ) ;

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
    output px51 ;
    output px24 ;
    output px47 ;
    output px25 ;
    output px17 ;
    output px13 ;
    output px9 ;
    output px5 ;
    output px1 ;

    wire nx32510z2, nx32510z4, nx32510z6, nx32510z8, nx32510z10, nx32510z12, 
         nx32510z14, nx32510z16, nx32510z15, nx32510z13, nx32510z11, nx32510z9, 
         nx32510z7, nx32510z5, nx32510z3, nx_modgen_counter_8_0_vcc_net;
    wire [36:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (nx32510z2), .datain (px51), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (nx32510z4), .datain (px47), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (nx32510z6), .datain (px25), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (nx32510z8), .datain (px17), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (nx32510z10), .datain (px13), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (nx32510z12), .datain (px9), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (nx32510z14), .datain (px5), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (nx32510z16), .datain (px1), .sdata (
                       1'b0), .clk (clock), .ena (px24), .aclr (aclear), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix32510z52929 (.combout (px9), .cout (nx32510z11), .dataa (
                         nx32510z12), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z13)) ;
                         
                         defparam ix32510z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix32510z52923 (.combout (px51), .dataa (nx32510z2), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z3)) ;
                         
                         defparam ix32510z52923.lut_mask = 16'h5a00;
                         
                         defparam ix32510z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52925 (.combout (px47), .cout (nx32510z3), .dataa (
                         nx32510z4), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z5)) ;
                         
                         defparam ix32510z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52930 (.combout (px5), .cout (nx32510z13), .dataa (
                         nx32510z14), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z15)) ;
                         
                         defparam ix32510z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52926 (.combout (px25), .cout (nx32510z5), .dataa (
                         nx32510z6), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z7)) ;
                         
                         defparam ix32510z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52927 (.combout (px17), .cout (nx32510z7), .dataa (
                         nx32510z8), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z9)) ;
                         
                         defparam ix32510z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52928 (.combout (px13), .cout (nx32510z9), .dataa (
                         nx32510z10), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z11)) ;
                         
                         defparam ix32510z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52931 (.combout (px1), .cout (nx32510z15), .dataa (
                         nx32510z16), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix32510z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix58250z52923 (.combout (px24), .dataa (clk_en), .datab (
                         sclear), .datac (cnt_en), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'ha8a8;
endmodule


module addsub_9_0 ( mode, cin, a, b, d, cout, px147 ) ;

    input mode ;
    input cin ;
    input [8:0]a ;
    input [8:0]b ;
    output [8:0]d ;
    output cout ;
    input px147 ;

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
    cycloneii_lcell_comb ix45949z52941 (.cout (nx45949z35), .dataa (px147), .datab (
                         1'b1), .datac (1'b1), .datad (nx_addsub_9_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix45949z52941.lut_mask = 16'h0055;
    cycloneii_lcell_comb ix45949z52923 (.combout (d[8]), .dataa (px147), .datab (
                         1'b1), .datac (1'b1), .datad (nx_addsub_9_0_vcc_net), .cin (
                         nx45949z3)) ;
                         
                         defparam ix45949z52923.lut_mask = 16'ha500;
                         
                         defparam ix45949z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix45949z52938 (.combout (nx45949z28), .dataa (b[1]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52938.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52940 (.combout (nx45949z32), .dataa (b[0]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52940.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52926 (.combout (nx45949z4), .dataa (b[7]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52926.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52928 (.combout (nx45949z8), .dataa (b[6]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52928.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52930 (.combout (nx45949z12), .dataa (b[5]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52930.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52932 (.combout (nx45949z16), .dataa (b[4]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52932.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52934 (.combout (nx45949z20), .dataa (b[3]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52934.lut_mask = 16'h9999;
    cycloneii_lcell_comb ix45949z52936 (.combout (nx45949z24), .dataa (b[2]), .datab (
                         px147), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix45949z52936.lut_mask = 16'h9999;
endmodule

