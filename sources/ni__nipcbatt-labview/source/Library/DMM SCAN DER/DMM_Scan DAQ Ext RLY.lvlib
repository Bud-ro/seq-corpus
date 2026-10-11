<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="21008000">
	<Property Name="NI.Lib.Description" Type="Str">&lt;B&gt;DMM_Scan DAQ Ext RLY&lt;/B&gt; library VIs can be used to initialize, configure, scan and measure a list of channels from multiple DMM functions, and close the scan on a NI-DMM and NI-DAQmx digital outputs used to control individual external relays to perform both MUX and SWITCH Shunt Relay functions.

This library can follow your custom mapping and topology configuration. Any DAQ device and port structure can be used including cDAQ relay driver modules and DIO TTL devices (with external amplification). Our model used a DAQ X series device (ex. PXIe-6363 for 48 channels) by default for a mix of Voltage Type and Current Type scan in 2-wire (Differential) configuration. Dual Pole external relays (DPST) are needed for differential measurements attached to each DO channel. The declaration of the hardware mapping is fixed, starting by voltage type channels list, current and shunts channel positions.

Recommended configuration:

- PXI DAQ X Series (ex. PXIe-6363) divided in a mapping Topology for a custom number of voltage based measurements 2-wire first, connected to the DMM HI/LO and a custom number of 2-wire  current based measurements connected to the same DMM to CURRENT/LO.


- Current Shunt channels are created by declaring the mapping positions of the channels shifted from the first current channel. The shunt channel will be linked to the Current measurements (2-wire) and connected in parallel to maintain continuity of the power to the DUT during all measurements. 

An output indicator panel with the global custom pin mapping is provided in the initialization function to simplify connections and maintenance.

All Shunts will be closed at the initialization step but can be disabled using the "Close All Shunt" control.

- To measure voltages and currents, you must declare individually and in any order your Channels, Functions/Ranges and Digits in the scan list.

- For timing optimization, the software checks if the next channel's configuration in the scan list is exactly the same and if so will remove the configuration phase between multiplexer scan.

- To measure only a list of resistances, you can disable the option "Close all shunts" input in the Initialization, the DUT won't be powered since all shunt relays will be open.</Property>
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"=&gt;MQ%!8143;(8.6"2CVM#WJ",7Q,SN&amp;(N&lt;!NK!7VM#WI"&lt;8A0$%94UZ2$P%E"Y.?G@I%A7=11U&gt;M\7P%FXB^VL\`NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAG_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y!#/7SO!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">553680896</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.SortType" Type="Int">3</Property>
	<Item Name="SubVIs" Type="Folder">
		<Item Name="Voltage Channels Array.vi" Type="VI" URL="../SubVIs/Voltage Channels Array.vi"/>
		<Item Name="Current Channels Array.vi" Type="VI" URL="../SubVIs/Current Channels Array.vi"/>
		<Item Name="Wait For Debounce External Relays.vi" Type="VI" URL="../SubVIs/Wait For Debounce External Relays.vi"/>
	</Item>
	<Item Name="Typedefs" Type="Folder">
		<Item Name="Scan Resource Names.ctl" Type="VI" URL="../Typedefs/Scan Resource Names.ctl"/>
		<Item Name="Scan Resource Handles In.ctl" Type="VI" URL="../Typedefs/Scan Resource Handles In.ctl"/>
		<Item Name="Scan Resource Handles Out.ctl" Type="VI" URL="../Typedefs/Scan Resource Handles Out.ctl"/>
		<Item Name="Formatted measurement.ctl" Type="VI" URL="../Typedefs/Formatted measurement.ctl"/>
		<Item Name="Measurement values.ctl" Type="VI" URL="../Typedefs/Measurement values.ctl"/>
		<Item Name="Scan configuration.ctl" Type="VI" URL="../Typedefs/Scan configuration.ctl"/>
	</Item>
	<Item Name="DMM_Scan DER Initialize.vi" Type="VI" URL="../DMM_Scan DER Initialize.vi"/>
	<Item Name="DMM_Scan DER Configure and Measure.vi" Type="VI" URL="../DMM_Scan DER Configure and Measure.vi"/>
	<Item Name="DMM_Scan DER Close.vi" Type="VI" URL="../DMM_Scan DER Close.vi"/>
</Library>
