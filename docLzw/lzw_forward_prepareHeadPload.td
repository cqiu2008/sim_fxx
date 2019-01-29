Header (
	company("EMA Design Automation") 
	product("TimingDesigner") 
	rev("9.2") 
	file("e:/work/prj/aiprj/sim/sim_fxx/doclzw/lzw_forward_prepareheadpload.td") 
	date("01/29/2019") time("14:45") 
	format("9.0") 
	baseScale(1000.000000) 
	zoomFactor("0.000793147") 
	zoomBegin(0) 
	zoomEnd(422046) 
	nameFrameWidth(206) 
	simHDL(Verilog) 
	simDelayMechanism(Transport) 
	nextID(38) 
	TimingAnalysisMethod(51) 
	SDCVersion(0) 
	
	generalPrintParams( "printer,,,portrait,clipboard,Letter,default,6,5,in,color,scaleable,mifframe,preview,")
	diagramPrintParams( "0,2147483647,0,-1,true,true,1,1,true,true,true,true,all,diagramEnd")
	spreadsheetPrintParams( "0,2147483647,true,false,1,true,all")
	)
tclPreferences (UseAboveSixtyFiveNm UseAlteraFastTimingModel 
	UseActelMaxTimingModel UseTimingPath UseArrivalTime )
HDLHeader( 
	hdlFile("") 
	checkConstraints(true) 
	comment("") 
	checkTimeout(never) 
	
	command( name("lzw_forward_prepareheadpload") cmdType(null) ))
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
	bus(showValue,"","H") 
	)
DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.96261") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(3) 
	outputPenColor(3) 
	inoutPenColor(3) 
	internalPenColor(3) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	)
Clock ( objectID(2) name("clk") minheight("0") periodScale(1000.000) period(10.000000) dutyCycle(50.000000) 
	hdl( direction(input) ) square label(showText,"","H") )
Waveform ( objectID(3) name("I_gmii_txen") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,40000.000,40000.000), 
	(low,239000.000,239000.000), 
	(high,340000.000,340000.000), 
	(blank,342142.000,342142.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(4) name("I_gmii_txd[7:0]") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(valid,40000.000,40000.000,label(showValue,"","preamble") ), 
	(valid,80000.000,80000.000,label(showDefault,"","sfd") ), 
	(valid,91000.000,91000.000,label(showDefault,"","head") ), 
	(valid,130000.000,130000.000,label(showDefault,"","pload") ), 
	(valid,200000.000,200000.000,label(showDefault,"","crc") ), 
	(valid,240000.000,240000.000), 
	(valid,339000.000,339000.000), 
	(blank,341142.000,341142.000)) 
	hdl( direction(input) ) label(showDefault,"","H") )
Waveform ( objectID(16) name("S_fifo_head_en") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,104000.000,104000.000), 
	(low,140000.000,140000.000), 
	(high,339000.000,339000.000), 
	(blank,341142.000,341142.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(17) name("S_fifo_head_en_1d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,111000.000,111000.000), 
	(low,150000.000,150000.000), 
	(high,339000.000,339000.000), 
	(blank,341142.000,341142.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(18) name("S_fifo_head_en_2d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,120000.000,120000.000), 
	(low,160000.000,160000.000), 
	(high,339000.000,339000.000), 
	(blank,341142.000,341142.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(19) name("S_fifo_head_wr") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,104000.000,104000.000), 
	(low,163000.000,163000.000), 
	(high,339000.000,339000.000), 
	(blank,341150.000,341150.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(13) name("S_fifo_head_wdata[8:0]") minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,102000.000,102000.000,label(showDefault,"","head") ), 
	(valid,141000.000,141000.000,label(showDefault,"","chk_id") ), 
	(invalid,161000.000,161000.000), 
	(invalid,334000.000,334000.000), 
	(blank,336660.630,336660.630)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(20) name("O_head_no_pload") minheight("0") edges(
	(low,0.000,0.000,L), 
	(low,340000.000,340000.000), 
	(blank,342150.000,342150.000)) 
	hdl( direction(output) ) label(showDefault,"","H") )
Waveform ( objectID(21) name("O_fifo_head_req") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,172000.000,172000.000), 
	(low,262000.000,262000.000), 
	(low,341000.000,341000.000), 
	(blank,343149.951,343149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(22) name("I_fifo_head_ack") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,249000.000,249000.000), 
	(low,260000.000,260000.000), 
	(high,346000.000,346000.000), 
	(blank,348149.951,348149.951)) 
	hdl( direction(input) ) label(showDefault,"","H") )
Waveform ( objectID(23) name("I_fifo_head_rd") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,251000.000,251000.000), 
	(low,310000.000,310000.000), 
	(high,350000.000,350000.000), 
	(blank,352149.951,352149.951)) 
	hdl( direction(input) ) label(showDefault,"","H") )
Bus ( objectID(24) name("O_fifo_head_rdata[8:0]") minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,262000.000,262000.000,label(showDefault,"","head") ), 
	(valid,300000.000,300000.000,label(showDefault,"","chkid") ), 
	(invalid,320000.000,320000.000), 
	(blank,351000.000,351000.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(29) name("S_fifo_pload_en") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,142000.000,142000.000), 
	(low,210000.000,210000.000), 
	(high,355269.543,355269.543), 
	(blank,357938.608,357938.608,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(30) name("S_fifo_pload_en_1d") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,151000.000,151000.000), 
	(low,220000.000,220000.000), 
	(high,354000.000,354000.000), 
	(blank,356149.951,356149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(31) name("S_fifo_pload_en_2d") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,162000.000,162000.000), 
	(low,232000.000,232000.000), 
	(high,358000.000,358000.000), 
	(blank,360149.951,360149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(32) name("S_fifo_pload_wr") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,141000.000,141000.000), 
	(low,232000.000,232000.000), 
	(high,357000.000,357000.000), 
	(blank,359149.951,359149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(33) name("S_fifo_pload_wdata[8:0]") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,141000.000,141000.000), 
	(invalid,233000.000,233000.000), 
	(z,352000.000,352000.000), 
	(blank,354149.951,354149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(34) name("O_fifo_pload_req") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,240000.000,240000.000), 
	(low,262000.000,262000.000), 
	(high,361000.000,361000.000), 
	(blank,363149.951,363149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(35) name("I_fifo_pload_ack") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,250000.000,250000.000), 
	(low,262000.000,262000.000), 
	(high,359000.000,359000.000), 
	(blank,361149.951,361149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(36) name("I_fifo_pload_rd") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,322000.000,322000.000), 
	(low,351000.000,351000.000), 
	(high,359000.000,359000.000), 
	(blank,361150.000,361150.000)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(37) name("O_fifo_pload_rdata[8:0]") DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.88073") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(10) 
	outputPenColor(10) 
	inoutPenColor(10) 
	internalPenColor(10) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	customWavePattern 
	)
minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,330000.000,330000.000), 
	(invalid,353000.000,353000.000), 
	(z,358000.000,358000.000), 
	(blank,360149.951,360149.951)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Grid ( "clk" topWave("clk") 
	 color(5) 1stWidth(0) 2ndWidth(0) 1stStyle(1) 2ndStyle(0) 
  show1st )
EndCycleEvent ( objectID(1) name("end") time(357.938608) showVert hideOnPrinter label(showDefault,"") fromLatestEnd toEarliestBegin  )
