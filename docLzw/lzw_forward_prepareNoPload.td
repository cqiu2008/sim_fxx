Header (
	company("Forte Design Systems") 
	product("TimingDesigner-Professional") 
	rev("6.002") 
	file("e:\\aiprj\\sim\\sim_fxx\\doclzw\\lzw_forward_preparenopload.td") 
	date("01/29/2019") time(" 5:31") 
	format("5.0") 
	baseScale(1000.000000) 
	zoomFactor("0.001") 
	grayHidden 
	simHDL(Verilog) 
	simDelayMechanism(Transport) 
	nextID(26) 
	TimingAnalysisMethod(51) 
	user(date,"") user(description,"") user(designer,"") user(revision,"1.0") 
	generalPrintParams( "printer,,,portrait,clipboard,letter,default,6,5,in,color,scaleable,mifframe,preview,")
	diagramPrintParams( "0,2147483647,0,-1,true,true,1,1,true,true,true,true,all,diagramEnd")
	spreadsheetPrintParams( "0,2147483647,true,false,1,true,all")
	)
HDLHeader( 
	hdlFile("") 
	checkConstraints(true) 
	checkTimeout(never) 
	
	command( name("") cmdType(null) ))
DefaultLabel(
	delay(showNameString,"") 
	constraint(showNameString,"") 
	guarantee(showNameString,"") 
	measure(showMeasure,"") 
	store(showNameString,"") 
	wait(showNameString,"") 
	end(showNameString,"") 
	boundary(showIncrement,"") 
	loop(showNameString,"") 
	waveform(showSkip,"","") 
	specifiedclock(showSkip,"","") 
	derivedclock(showSkip,"","") 
	simwaveform(showSkip,"","") 
	)
DiagramStyle (
	waveformFont(winFont("Arial",90) ) 
	rulerFont(winFont("Arial",90) ) 
	relationshipFont(winFont("Arial",90) ) 
	labelFont(winFont("Arial",90) ) 
	annotationFont(winFont("Arial",80) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.96261") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(3) 
	outputPenColor(3) 
	internalPenColor(3) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	showUncertainties 
	)
Clock ( objectID(2) name("I_sys_clk") periodScale(1000.000) period(10.000000) dutyCycle(50.000000) removeCommonUncertaintyLike edges(
	(28,label(showBlank,"","") ))
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(3) name("I_gmii_txen") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,41000.000,41000.000), 
	(low,149000.000,149000.000), 
	(high,310000.000,310000.000), 
	(blank,312117.000,312117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(4) name("I_gmii_txd[7:0]") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(valid,40000.000,40000.000,label(showText,"","") ), 
	(valid,79000.000,79000.000,label(showText,"sfd","") ), 
	(valid,90000.000,90000.000,label(showText,"head","") ), 
	(valid,128000.000,128000.000,label(showDefault,"crc32","") ), 
	(invalid,149000.000,149000.000,label(showDefault,"xx","") ), 
	(valid,301000.000,301000.000), 
	(blank,303117.000,303117.000)) 
	hdl( direction(internal) ) label(showText,"","") )
Waveform ( objectID(12) name("S_fifo_head_wr") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,101000.000,101000.000), 
	(low,140000.000,140000.000), 
	(high,297000.000,297000.000), 
	(blank,299117.000,299117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(22) name("S_fifo_head_wr_1d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,110000.000,110000.000), 
	(low,149000.000,149000.000), 
	(high,301000.000,301000.000), 
	(blank,303117.000,303117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(18) name("S_fifo_head_wr_2d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,121000.000,121000.000), 
	(low,160000.000,160000.000), 
	(high,301000.000,301000.000), 
	(blank,303117.000,303117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(13) name("S_fifo_head_wdata[8:0]") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(z,5000.000,5000.000), 
	(valid,100000.000,100000.000,label(showText,"VData","") ), 
	(valid,140000.000,140000.000,label(showText,"0ff","") ), 
	(invalid,161000.000,161000.000), 
	(blank,266117.000,266117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(25) name("head_no_pload") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,161000.000,161000.000), 
	(low,180000.000,180000.000), 
	(high,285000.000,285000.000), 
	(blank,287116.962,287116.962)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(14) name("O_pload_txen") minheight("0") edges(
	(low,0.000,0.000,L), 
	(valid,298000.000,298000.000), 
	(blank,300117.000,300117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(15) name("O_pload_txd[7:0]") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(z,4000.000,4000.000), 
	(valid,299000.000,299000.000), 
	(blank,301117.000,301117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(19) name("S_fifo_pload_wr") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,297000.000,297000.000), 
	(blank,299117.000,299117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(20) name("S_fifo_pload_wr_1d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,301000.000,301000.000), 
	(blank,303117.000,303117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(23) name("S_fifo_pload_wr_2d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,301000.000,301000.000), 
	(blank,303117.000,303117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(21) name("S_fifo_pload_wdata[8:0]") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(z,5000.000,5000.000), 
	(blank,201117.000,201117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(16) name("O_fifo_pload_req") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,303000.000,303000.000), 
	(blank,305117.000,305117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Waveform ( objectID(17) name("I_fifo_pload_ack") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,302000.000,302000.000), 
	(blank,304117.000,304117.000)) 
	hdl( direction(internal) ) label(showDefault,"","") )
Grid ( "I_sys_clk" topWave("I_sys_clk") 
	 color(6) 1stWidth(0) 2ndWidth(0) 1stStyle(0) 2ndStyle(0) 
  show1st )
Annotation( value("premble") winFont("Arial",80) Edge("I_gmii_txd[7:0]",1) origin(9219.370,0.000) stateCentered )
EndCycleEvent ( objectID(1) name("end") time(316.207992) showVert hideOnPrinter label(showDefault,"") fromLatestEnd toEarliestBegin  )
Constraint ( name("<=72Bytes") value("[,]") 
	instance(objectID(24) source("I_sys_clk",18) target("I_sys_clk",26) MarginValue("[,]") label(showDefault,"") fromLatestEnd toEarliestBegin bottom  ))
