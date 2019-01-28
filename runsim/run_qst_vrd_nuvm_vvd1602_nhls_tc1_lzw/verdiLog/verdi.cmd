debImport "-f" \
          "/media/cqiu/Document/work/prj/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/flist.f"
debLoadSimResult \
           /media/cqiu/Document/work/prj/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/tb_dut_top.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 \
           "/media/cqiu/Document/work/prj/AIPrj/sim/sim_fxx/tb/btc/qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/rc/cm.rc" \
           -overWriteAutoAlias on
srcHBSelect "tb_lzw_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lzw_top" -delim "."
srcHBSelect "tb_lzw_top.lzw_forward_compress_inst" -win $_nTrace1
srcHBSelect "tb_lzw_top.lzw_forward_compress_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lzw_top.lzw_forward_compress_inst" -delim "."
verdiWindowResize -win Verdi_1 "500" "180" "904" "700"
verdiWindowResize -win Verdi_1 "500" "180" "1015" "700"
verdiWindowResize -win Verdi_1 "500" "180" "1248" "700"
verdiWindowResize -win Verdi_1 "500" "180" "1320" "700"
verdiWindowResize -win Verdi_1 "500" "180" "1407" "700"
verdiWindowResize -win Verdi_1 "499" "180" "1408" "700"
verdiWindowResize -win Verdi_1 "492" "180" "1415" "700"
verdiWindowResize -win Verdi_1 "442" "180" "1465" "700"
verdiWindowResize -win Verdi_1 "355" "180" "1552" "700"
verdiWindowResize -win Verdi_1 "343" "180" "1575" "700"
verdiWindowResize -win Verdi_1 "283" "180" "1624" "700"
verdiWindowResize -win Verdi_1 "261" "180" "1646" "700"
verdiWindowResize -win Verdi_1 "248" "180" "1659" "700"
verdiWindowResize -win Verdi_1 "241" "180" "1666" "700"
verdiWindowResize -win Verdi_1 "228" "180" "1679" "700"
verdiWindowResize -win Verdi_1 "227" "180" "1680" "700"
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_sys_clk" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_sys_rst" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_tx_data_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_tx_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_dictionary_lock" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "I_state_clr" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "tb_lzw_top.lzw_backward_decompress_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lzw_top.lzw_backward_decompress_inst" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "O_payload_data_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "O_payload_data" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 358447.094340 1837041.358491
srcHBSelect "tb_lzw_top.lzw_forward_compress_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lzw_top.lzw_forward_compress_inst" -delim "."
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
debExit
