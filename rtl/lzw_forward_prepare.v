module lzw_forward_prepare(

input              I_sys_clk                , ///system clock,250m clock                         ///
input              I_sys_rst                , ///system reset,sync with 250m                     ///

input       [ 7:0] I_tx_gmii_data           , 
input              I_tx_gmii_data_en        , 

output             O_head_no_pload          ,
input              I_fifo_head__rd          ,
output      [ 8:0] O_fifo_head_txd          ,
input              I_fifo_pload_rd          ,
output      [ 8:0] O_fifo_pload_txd         ,

output      [ 7:0] O_pload_txd              , 
output             O_pload_txen               
);

endmodule