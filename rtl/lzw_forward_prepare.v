module lzw_forward_prepare(

input              I_sys_clk                , ///system clock,250m clock                         ///
input              I_sys_rst                , ///system reset,sync with 250m                     ///

input       [ 7:0] I_tx_gmii_data           , 
input              I_tx_gmii_data_en        , 

output             O_head_no_pload          ,
output             O_fifo_head_req          ,
input              I_fifo_head_ack          ,
input              I_fifo_head_rd           ,
output      [ 8:0] O_fifo_head_rdata        ,
output             O_fifo_head_full         ,
output             O_fifo_head_empty        ,

output             O_fifo_pload_req         ,
input              I_fifo_pload_ack         ,
input              I_fifo_pload_rd          ,
output      [ 8:0] O_fifo_pload_rdata       ,
output             O_fifo_pload_empty       ,
output             O_fifo_pload_full        ,

output      [ 7:0] O_pload_txd              , 
output             O_pload_txen               

);

endmodule