debImport "-f" \
          "/media/cqiu/e/work/prj/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/flist.f"
debLoadSimResult \
           /media/cqiu/e/work/prj/AIPrj/sim/sim_fxx/runsim/run_qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/tb_dut_top.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 \
           "/media/cqiu/e/work/prj/AIPrj/sim/sim_fxx/tb/btc/qst_vrd_nuvm_vvd1602_nhls_tc1_lzw/rc/cm.rc" \
           -overWriteAutoAlias on
srcHBSelect "tb_lzw_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_lzw_top" -delim "."
debExit
