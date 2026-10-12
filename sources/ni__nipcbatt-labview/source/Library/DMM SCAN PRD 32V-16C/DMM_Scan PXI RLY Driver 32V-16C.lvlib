<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="21008000">
	<Property Name="NI.Lib.Description" Type="Str">&lt;B&gt;DMM_Scan PXI RLY Driver 32V-16C&lt;/B&gt; library VIs can be used to initialize, configure, scan and measure a list of channels from multiple DMM functions, and close the scan on an NI-DMM combined with a single SWITCH individual relay driver used to execute both MUX and SWITCH Shunt Relay functions.

This library is dedicated to a specific scan configuration of a random order mix of maximum 32 Voltage Type and 16 Current Type measurements in 2-wire (Differential) configuration. External Dual Pole relays (DPST) are needed for differential measurements.

Recommended configuration:

- PXI Individual Relay Driver (ex. NI 2567) divided in a mapping topology for 32 2-wire (ch0 to ch31) voltage based measurements connected to the DMM HI/LO and 16 2-wire (ch32 to ch47) current based measurements connected to the same DMM to CURRENT/LO.

- Current Shunt channels will be created by the second half of the remaining channels of the Switch Relay Driver (ex. NI 2567). The mapped channel is (current channel number ) +16. Each channel is dedicated to be linked to the 16 2-wire (ch48 to ch63) current measurements in parallel with the same current channels +16  to simplify connections and keep continuity of the power of the DUT during all measurements. 

All shunts will be closed during the initialization step but can be disabled using "Close All Shunt" control.

- To measure voltages and currents, you must declare individually and in any order your Channels, Functions/Ranges and Digits in the scan list.

- For timing optimization, the software checks if the next channels configuration in the scan list is exactly the same in order to remove the configuration phase between multiplexer scans.

- To measure only a list of resistances, you can disable the "Close all shunts" input option during initialization. As a result, the DUT will not receive power as all shunt relays will be open.</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"=&gt;MQ%!8143;(8.6"2CVM#WJ",7Q,SN&amp;(N&lt;!NK!7VM#WI"&lt;8A0$%94UZ2$P%E"Y.?G@I%A7=11U&gt;M\7P%FXB^VL\`NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAG_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y!#/7SO!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">553680896</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="SubVIs" Type="Folder">
		<Item Name="Current Channels Array.vi" Type="VI" URL="../SubVIs/Current Channels Array.vi"/>
		<Item Name="Close All Current Shunts.vi" Type="VI" URL="../SubVIs/Close All Current Shunts.vi"/>
		<Item Name="Wait For Debounce External Relays.vi" Type="VI" URL="../SubVIs/Wait For Debounce External Relays.vi"/>
	</Item>
	<Item Name="Typedefs" Type="Folder">
		<Item Name="Scan Resource Names.ctl" Type="VI" URL="../Typedefs/Scan Resource Names.ctl"/>
		<Item Name="Scan Resource Handles In.ctl" Type="VI" URL="../Typedefs/Scan Resource Handles In.ctl"/>
		<Item Name="Scan Resource Handles Out.ctl" Type="VI" URL="../Typedefs/Scan Resource Handles Out.ctl"/>
		<Item Name="Formatted measurement.ctl" Type="VI" URL="../Typedefs/Formatted measurement.ctl"/>
		<Item Name="Measurement values.ctl" Type="VI" URL="../Typedefs/Measurement values.ctl"/>
		<Item Name="Switches Characteristics.ctl" Type="VI" URL="../Typedefs/Switches Characteristics.ctl"/>
		<Item Name="Topology.ctl" Type="VI" URL="../Typedefs/Topology.ctl"/>
		<Item Name="Scan configuration.ctl" Type="VI" URL="../Typedefs/Scan configuration.ctl"/>
	</Item>
	<Item Name="DMM_Scan PRD 32V-16C Initialize.vi" Type="VI" URL="../DMM_Scan PRD 32V-16C Initialize.vi"/>
	<Item Name="DMM_Scan PRD 32V-16C Configure and Measure.vi" Type="VI" URL="../DMM_Scan PRD 32V-16C Configure and Measure.vi"/>
	<Item Name="DMM_Scan PRD 32V-16C Close.vi" Type="VI" URL="../DMM_Scan PRD 32V-16C Close.vi"/>
</Library>
