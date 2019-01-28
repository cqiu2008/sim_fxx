debImport "-f" \
          "/home/cqiu/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/flist.f"
debLoadSimResult \
           /media/cqiu/文档/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/tb_dut_top.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 \
           "/home/cqiu/AIPrj/sim/sim_fxx/tb/btc/qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/rc/cm.rc" \
           -overWriteAutoAlias on
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
verdiWindowResize -win Verdi_1 "223" -4 "1301" "744"
wvZoom -win $_nWave2 1826701.538462 3261967.032967
wvSetCursor -win $_nWave2 2100085.442176 -snap {("G1" 4)}
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3134407.337808 4064104.429530
debExit
