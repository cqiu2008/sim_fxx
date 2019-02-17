//----------------------------------------------------------------------------
//File Name    : lzw_backward_byte_reverse.v
//Author       : feng xiaoxiong
//----------------------------------------------------------------------------
//Module Hierarchy :
//xxx_inst |-lzw_backward_decompress_inst |-lzw_backward_byte_reverse_inst
//----------------------------------------------------------------------------
//Release History :
//Version         Date           Author        Description
// 1.0          2018-1-7     feng xiaoxiong    1st draft
//----------------------------------------------------------------------------
//Main Function:
//a)reverse payload data;
//----------------------------------------------------------------------------
module lzw_backward_byte_reverse(

input              I_sys_clk                      , ///system clock,250m clock                 ///
input              I_sys_rst                      , ///system reset,sync with 250m             ///
input              I_state_clr                    , ///clear state statistic                   ///
input       [ 7:0] I_dictionary_recv_data         , ///dictionary recv data                    ///  
input              I_dictionary_recv_data_en      , ///dictionary recv data_en                 ///
input              I_reverse_byte_flag            , ///reverse byte flag                       ///
input       [ 4:0] I_reverse_byte_num             , ///reverse byte num                        ///
input              I_reverse_byte_num_wren        , ///reverse byte num wren                   ///

output reg  [ 7:0] O_payload_data    =8'b0        , ///recovered payload data                  ///
output reg         O_payload_data_en =1'b0          ///recovered payload data en               ///
);

reg         [ 7:0] S_dictionary_recv_data   =8'h0 ;   
reg                S_dictionary_recv_data_en=1'b0 ; 
reg                S_reverse_byte_flag      =1'b0 ; 
reg         [ 4:0] S_reverse_byte_num       =5'h0 ; 
reg                S_reverse_byte_num_wren  =1'b0 ; 

reg         [ 4:0] S_para_fifo_wdata        =5'h0 ;
reg                S_para_fifo_wren         =1'b0 ;
reg                S_para_fifo_rden         =1'b0 ;
wire        [ 4:0] S_para_fifo_dout               ;
wire               S_para_fifo_full               ;
wire               S_para_fifo_empty              ;
wire        [ 9:0] S_para_fifo_data_count         ;
reg         [ 8:0] S_data_fifo_wdata        =9'h0 ;
reg                S_data_fifo_wren         =1'b0 ;
reg                S_data_fifo_rd_req       =1'b0 ;
reg                S_data_fifo_rden         =1'b0 ;
wire        [ 8:0] S_data_fifo_dout               ;
wire               S_data_fifo_full               ;
wire               S_data_fifo_empty              ;
wire        [ 9:0] S_data_fifo_data_count         ;

wire        [4:0]  S_rd_rev_num                   ;
wire               S_rd_rev_flg                   ;
wire        [7:0]  S_rd_rev_data                  ;

reg         [4:0]  S_rd_rev_cnt             =5'h0 ;
reg         [4:0]  S_rd_rev_cnt_d1          =5'h0 ;
reg                S_rd_rev_pos             =1'b0 ;
reg                S_rd_rev_pos_d1          =1'b0 ;
reg                S_rd_rev_valid           =1'b0 ;
reg                S_rd_rev_end             =1'b0 ;
reg                S_rd_rev_end_d1          =1'b0 ;
reg                S_rd_rev_end_d2          =1'b0 ;
reg                S_rd_rev_data_en         =1'b0 ;
reg                S_rd_rev_data_en_d1      =1'b0 ;
reg                S_rd_rev_data_en_d2      =1'b0 ;
reg                S_rd_rev_data_en_d3      =1'b0 ;
reg                S_rd_rev_data_en_d4      =1'b0 ;
reg         [7:0]  S_rd_rev_data_d1         =8'h0 ;
reg         [7:0]  S_rd_rev_data_d2         =8'h0 ;
reg         [7:0]  S_rd_rev_data_d3         =8'h0 ;
reg         [7:0]  S_rd_rev_data_d4         =8'h0 ;
reg         [9:0]  S_ram_base_addr          =10'h0;
reg         [9:0]  S_ram_wr_addr            =10'h0;
reg                S_ram_wr_en              =1'b0 ;
reg         [7:0]  S_ram_wr_data            =8'h0 ;
reg                S_ram_rd_ready           =1'b0 ;
reg                S_ram_rd_en              =1'b0 ;
reg                S_ram_rd_en_d1           =1'b0 ;
reg         [9:0]  S_ram_rd_addr            =10'h0;
wire        [7:0]  S_ram_rd_data                  ;
reg                S_state_clr              =1'b0 ;
reg        [15:0]  S_data_fifo_wr_cnt       =16'h0;
reg        [15:0]  S_data_fifo_rd_cnt       =16'h0;
reg        [15:0]  S_para_fifo_wr_cnt       =16'h0;
reg        [15:0]  S_para_fifo_rd_cnt       =16'h0;

always @(posedge I_sys_clk)
begin
    S_dictionary_recv_data_en <= I_dictionary_recv_data_en;
    S_dictionary_recv_data    <= I_dictionary_recv_data   ;
end

always @(posedge I_sys_clk)
begin
    if(S_dictionary_recv_data_en)
    begin
        S_data_fifo_wdata <= {S_reverse_byte_flag,S_dictionary_recv_data};
        S_data_fifo_wren  <= 1'b1;
    end
    else
    begin
        S_data_fifo_wdata <= S_data_fifo_wdata;
        S_data_fifo_wren  <= 1'b0;
    end
end

always @(posedge I_sys_clk)
begin
    S_reverse_byte_flag     <= I_reverse_byte_flag    ;
    S_reverse_byte_num      <= I_reverse_byte_num     ;
    S_reverse_byte_num_wren <= I_reverse_byte_num_wren;
end

always @(posedge I_sys_clk)
begin
    if(S_reverse_byte_num_wren)
    begin
        S_para_fifo_wdata <= S_reverse_byte_num;
        S_para_fifo_wren  <= 1'b1              ;
    end
    else
    begin
        S_para_fifo_wdata <= S_para_fifo_wdata ;
        S_para_fifo_wren  <= 1'b0              ;
    end
end

fifo_1k_9bit data_fifo (
  .clk        (I_sys_clk             ), // input wire clk
  .srst       (I_sys_rst             ), // input wire srst
  .din        (S_data_fifo_wdata     ), // input wire [8 : 0] din
  .wr_en      (S_data_fifo_wren      ), // input wire wr_en
  .rd_en      (S_data_fifo_rden      ), // input wire rd_en
  .dout       (S_data_fifo_dout      ), // output wire [8 : 0] dout
  .full       (S_data_fifo_full      ), // output wire full
  .empty      (S_data_fifo_empty     ), // output wire empty
  .data_count (S_data_fifo_data_count)  // output wire [9 : 0] data_count
);

fifo_1k_5bit para_fifo (
  .clk        (I_sys_clk             ), // input wire clk
  .srst       (I_sys_rst             ), // input wire srst
  .din        (S_para_fifo_wdata     ), // input wire [4 : 0] din
  .wr_en      (S_para_fifo_wren      ), // input wire wr_en
  .rd_en      (S_para_fifo_rden      ), // input wire rd_en
  .dout       (S_para_fifo_dout      ), // output wire [4 : 0] dout
  .full       (S_para_fifo_full      ), // output wire full
  .empty      (S_para_fifo_empty     ), // output wire empty
  .data_count (S_para_fifo_data_count)  // output wire [9 : 0] data_count
);

assign  S_rd_rev_num   = S_para_fifo_dout[4:0];
assign  S_rd_rev_flg   = S_data_fifo_dout[8]  ;
assign  S_rd_rev_data  = S_data_fifo_dout[7:0];

always @(posedge I_sys_clk)
begin
    if((S_data_fifo_data_count >= 10'h20) && !S_para_fifo_empty)
    begin
        S_data_fifo_rd_req <= 1'b1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_data_fifo_empty)
    begin
        S_data_fifo_rden <= 1'b0;
    end
    else if(S_data_fifo_rd_req)
    begin
        S_data_fifo_rden <= ~S_data_fifo_rden;
    end
    else
    begin
        S_data_fifo_rden <= 1'b0;
    end
end

always @(posedge I_sys_clk)
begin 
    S_rd_rev_data_en <= S_data_fifo_rden;
end

always @(posedge I_sys_clk)
begin
    if(S_rd_rev_flg && S_rd_rev_data_en)
    begin
        S_para_fifo_rden <= 1'b1;
    end
    else
    begin
        S_para_fifo_rden <= 1'b0;
    end
end

always @(posedge I_sys_clk)
begin
    S_rd_rev_pos <= S_rd_rev_flg && S_rd_rev_data_en;
end

always @(posedge I_sys_clk)
begin
    if(S_rd_rev_pos)
    begin
        S_rd_rev_valid <= 1'b1;
        S_rd_rev_cnt   <= 5'h1;
    end
    else if(S_rd_rev_end)
    begin
        S_rd_rev_valid <= 1'b0;
        S_rd_rev_cnt   <= 5'h0;
    end
    else if(S_rd_rev_valid && S_rd_rev_data_en_d1)
    begin
        S_rd_rev_valid <= S_rd_rev_valid;
        S_rd_rev_cnt   <= S_rd_rev_cnt + 5'h1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_rd_rev_valid && S_rd_rev_data_en_d2 && (S_rd_rev_cnt == S_rd_rev_num))
    begin
        S_rd_rev_end <= 1'b1;
    end
    else
    begin
        S_rd_rev_end <= 1'b0;
    end
end

always @(posedge I_sys_clk)
begin
    S_rd_rev_pos_d1 <= S_rd_rev_pos   ;
    S_rd_rev_end_d1 <= S_rd_rev_end   ;
    S_rd_rev_end_d2 <= S_rd_rev_end_d1;
    S_rd_rev_cnt_d1 <= S_rd_rev_cnt   ;
end

always @(posedge I_sys_clk)
begin
    if(S_rd_rev_end_d1)
    begin
        S_ram_base_addr <= S_ram_base_addr + S_rd_rev_cnt_d1;
    end
    else if(S_rd_rev_pos_d1)
    begin
        S_ram_base_addr <= S_ram_wr_addr;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_ram_wr_en)
    begin
        if(S_rd_rev_valid)
        begin
            S_ram_wr_addr <= S_ram_base_addr + {5'h0,S_rd_rev_num - S_rd_rev_cnt} + 10'h1;
        end
        else if(S_rd_rev_end_d2)
        begin
            S_ram_wr_addr <= S_ram_base_addr + 10'h1;
        end
        else
        begin
            S_ram_wr_addr <= S_ram_wr_addr + 10'h1;
        end
    end
end

always @(posedge I_sys_clk)
begin
    S_rd_rev_data_en_d1 <= S_rd_rev_data_en   ;
    S_rd_rev_data_en_d2 <= S_rd_rev_data_en_d1;
    S_rd_rev_data_en_d3 <= S_rd_rev_data_en_d2;
    S_rd_rev_data_en_d4 <= S_rd_rev_data_en_d3;
end

always @(posedge I_sys_clk)
begin
    S_rd_rev_data_d1    <= S_rd_rev_data      ;
    S_rd_rev_data_d2    <= S_rd_rev_data_d1   ;
    S_rd_rev_data_d3    <= S_rd_rev_data_d2   ;
    S_rd_rev_data_d4    <= S_rd_rev_data_d3   ;
end

always @(posedge I_sys_clk)
begin
    if(S_rd_rev_data_en_d4)
    begin
        S_ram_wr_en   <= 1'b1; 
        S_ram_wr_data <= S_rd_rev_data_d4;
    end
    else
    begin
        S_ram_wr_en   <= 1'b0;
        S_ram_wr_data <= S_ram_wr_data;
    end
end

blk_mem_1k_8bit  blk_mem_1k_8bit_inst (
  .clka  (I_sys_clk             ), // input wire clka
  .rsta  (I_sys_rst             ), // input wire rsta
  .wea   (S_ram_wr_en           ), // input wire [0 : 0] wea
  .ena   (1'b1                  ), // input wire [0 : 0] ena
  .addra (S_ram_wr_addr         ), // input wire [9 : 0] addra
  .dina  (S_ram_wr_data         ), // input wire [7 : 0] dina
  .douta (                      ), // output wire [7 : 0] douta
  .clkb  (I_sys_clk             ), // input wire clkb
  .rstb  (I_sys_rst             ), // input wire rstb
  .web   (1'b0                  ), // input wire [0 : 0] web
  .enb   (S_ram_rd_en           ), // input wire [0 : 0] enb
  .addrb (S_ram_rd_addr         ), // input wire [9 : 0] addrb
  .dinb  (23'h0                 ), // input wire [7 : 0] dinb
  .doutb (S_ram_rd_data         )  // output wire [7 : 0] doutb
);

//read process wrong ,waiting for next step
always @(posedge I_sys_clk)
begin
    if(S_ram_rd_addr >= 10'h14f)
    begin
        S_ram_rd_ready <= 1'b0;
    end
    else if(S_ram_wr_addr > 10'h14f)
    begin
        S_ram_rd_ready <= 1'b1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_ram_rd_ready)
    begin
        S_ram_rd_en <= ~S_ram_rd_en; 
    end
    else
    begin
        S_ram_rd_en <= 1'b0;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_ram_rd_en)
    begin
        S_ram_rd_addr <= S_ram_rd_addr + 10'h1;
    end
end

always @(posedge I_sys_clk)
begin
    S_ram_rd_en_d1 <= S_ram_rd_en   ;
end

always @(posedge I_sys_clk)
begin
    if(S_ram_rd_en_d1)
    begin
        O_payload_data_en <= 1'b1;
        O_payload_data    <= S_ram_rd_data;
    end
    else
    begin
        O_payload_data_en <= 1'b0;
        O_payload_data    <= O_payload_data;
    end
end

always @(posedge I_sys_clk)
begin
    S_state_clr <= I_state_clr;
end

always @(posedge I_sys_clk)
begin
    if(S_state_clr)
    begin
        S_data_fifo_wr_cnt <= 16'h0;
    end
    else if(S_data_fifo_wren)
    begin
        S_data_fifo_wr_cnt <= S_data_fifo_wr_cnt + 16'h1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_state_clr)
    begin
        S_data_fifo_rd_cnt <= 16'h0;
    end
    else if(S_data_fifo_rden)
    begin
        S_data_fifo_rd_cnt <= S_data_fifo_rd_cnt + 16'h1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_state_clr)
    begin
        S_para_fifo_wr_cnt <= 16'h0;
    end
    else if(S_para_fifo_wren)
    begin
        S_para_fifo_wr_cnt <= S_para_fifo_wr_cnt + 16'h1;
    end
end

always @(posedge I_sys_clk)
begin
    if(S_state_clr)
    begin
        S_para_fifo_rd_cnt <= 16'h0;
    end
    else if(S_para_fifo_rden)
    begin
        S_para_fifo_rd_cnt <= S_para_fifo_rd_cnt + 16'h1;
    end
end

//*  .--,       .--,
//* ( (  \.---./  ) )
//*  '.__/o   o\__.'
//*     {=  ^  =}
//*      >  -  <
//*     /       \
//*    //       \\
//*   //|   .   |\\
//*   "'\       /'"_.-~^`'-.
//*      \  _  /--'         `
//*    ___)( )(___
//*   (((__) (__)))  



endmodule


