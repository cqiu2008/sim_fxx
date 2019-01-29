module lzw_forward_frame(

input              I_sys_clk                , ///system clock,250m clock                         ///
input              I_sys_rst                , ///system reset,sync with 250m                     ///

input              I_head_no_pload          ,
input              I_fifo_head_req          ,
output             O_fifo_head_ack          ,
output             O_fifo_head_rd           ,
input       [ 8:0] I_fifo_head_rdata        ,
input              I_fifo_head_full         ,
input              I_fifo_head_empty        ,

input              I_fifo_pload_req         ,
output             O_fifo_pload_ack         ,
output             O_fifo_pload_rd          ,
input       [ 8:0] I_fifo_pload_rdata       ,
input              I_fifo_pload_empty       ,
input              I_fifo_pload_full        ,

input              I_fifo_cmprs_req         ,
output             O_fifo_cmprs_ack         ,
input       [15:0] I_fifo_cmprs_rdata       ,
input              I_fifo_cmprs_empty       ,
input              I_fifo_cmprs_full        ,

input              I_dict_req               ,
output             O_dict_ack               ,
input              I_dict_txen              ,
input       [ 7:0] I_dict_txd               ,

output             O_lzw_forward_rst        ,

output      [ 7:0 ] O_gmii_txd              ,
output              O_gmii_txen             , 
output              O_gmii_txerr            
);





endmodule