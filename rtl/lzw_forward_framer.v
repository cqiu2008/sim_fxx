module lzw_forward_frame(

input              I_sys_clk                , ///system clock,250m clock                         ///
input              I_sys_rst                , ///system reset,sync with 250m                     ///

input       [ 7:0] I_tx_data                , ///payload data                                    ///
input              I_tx_data_en             , ///payload data enable                             ///

input      [13:0]  I_compress_data          , ///compressed dictionary code                      ///
input              I_compress_data_en       , ///compressed dictionary code en                   ///

output      [ 7:0 ] O_gmii_txd              ,
output              O_gmii_txen             , 
output              O_gmii_txerr            
);





endmodule