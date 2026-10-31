<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Measurement" Type="Folder" URL="../FPT_Compression/Measurement">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="FPT_Compression UI.lvlib" Type="Library" URL="../FPT_Compression UI/FPT_Compression UI.lvlib"/>
		<Item Name="FPT_Compression.lvclass" Type="LVClass" URL="../FPT_Compression/FPT_Compression.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niDCPower Abort With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Abort With Channels.vi"/>
				<Item Name="niDCPower Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Close.vi"/>
				<Item Name="niDCPower Commit With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Commit With Channels.vi"/>
				<Item Name="niDCPower Configure Current Limit Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit Range.vi"/>
				<Item Name="niDCPower Configure Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit.vi"/>
				<Item Name="niDCPower Configure Digital Edge Measure Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Measure Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Digital Edge Pulse Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Pulse Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Digital Edge Sequence Advance Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Sequence Advance Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Digital Edge Shutdown Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Shutdown Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Digital Edge Source Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Source Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Digital Edge Start Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Digital Edge Start Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Enabled.vi"/>
				<Item Name="niDCPower Configure Output Function.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Function.vi"/>
				<Item Name="niDCPower Configure Pulse Bias Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Bias Current Limit.vi"/>
				<Item Name="niDCPower Configure Pulse Bias Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Bias Voltage Level.vi"/>
				<Item Name="niDCPower Configure Pulse Current Limit Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Current Limit Range.vi"/>
				<Item Name="niDCPower Configure Pulse Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Current Limit.vi"/>
				<Item Name="niDCPower Configure Pulse Voltage Level Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Voltage Level Range.vi"/>
				<Item Name="niDCPower Configure Pulse Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Pulse Voltage Level.vi"/>
				<Item Name="niDCPower Configure Software Edge Measure Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Measure Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Software Edge Pulse Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Pulse Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Software Edge Sequence Advance Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Sequence Advance Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Software Edge Shutdown Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Shutdown Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Software Edge Source Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Source Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Software Edge Start Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Software Edge Start Trigger With Channels.vi"/>
				<Item Name="niDCPower Configure Source Mode With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Source Mode With Channels.vi"/>
				<Item Name="niDCPower Configure Trigger With Channels (Poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Trigger With Channels (Poly).vi"/>
				<Item Name="niDCPower Configure Voltage Level Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level Range.vi"/>
				<Item Name="niDCPower Configure Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level.vi"/>
				<Item Name="niDCPower Current Limit Behavior.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Current Limit Behavior.ctl"/>
				<Item Name="niDCPower Digital Edge - Edge.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Digital Edge - Edge.ctl"/>
				<Item Name="niDCPower Disable Pulse Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Disable Pulse Trigger With Channels.vi"/>
				<Item Name="niDCPower Disable Sequence Advance Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Disable Sequence Advance Trigger With Channels.vi"/>
				<Item Name="niDCPower Disable Shutdown Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Disable Shutdown Trigger With Channels.vi"/>
				<Item Name="niDCPower Disable Source Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Disable Source Trigger With Channels.vi"/>
				<Item Name="niDCPower Disable Start Trigger With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Disable Start Trigger With Channels.vi"/>
				<Item Name="niDCPower Export Signal - Signal.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Export Signal - Signal.ctl"/>
				<Item Name="niDCPower Export Signal With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Export Signal With Channels.vi"/>
				<Item Name="niDCPower Fetch Multiple.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Fetch Multiple.vi"/>
				<Item Name="niDCPower Initiate With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initiate With Channels.vi"/>
				<Item Name="niDCPower IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower IVI Error Converter.vi"/>
				<Item Name="niDCPower Measure Multiple.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Measure Multiple.vi"/>
				<Item Name="niDCPower Output Function.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Output Function.ctl"/>
				<Item Name="niDCPower Reset With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Reset With Channels.vi"/>
				<Item Name="niDCPower Set Sequence.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Set Sequence.vi"/>
				<Item Name="niDCPower Source Mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Source Mode.ctl"/>
				<Item Name="niDCPower Wait For Event - Event.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Wait For Event - Event.ctl"/>
				<Item Name="niDCPower Wait For Event With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Wait For Event With Channels.vi"/>
				<Item Name="niRFSG Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Abort.vi"/>
				<Item Name="niRFSG Clear All Arb Waveforms.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Clear All Arb Waveforms.vi"/>
				<Item Name="niRFSG Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Close.vi"/>
				<Item Name="niRFSG Commit.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Commit.vi"/>
				<Item Name="niRFSG Configure Configuration List Step Trigger Digital Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Configuration List Step Trigger Digital Edge.vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Linear).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Linear).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Nearest).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Nearest).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Spline).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Spline).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation.vi"/>
				<Item Name="niRFSG Configure Generation Mode.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Generation Mode.vi"/>
				<Item Name="niRFSG Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Output Enabled.vi"/>
				<Item Name="niRFSG Configure Ref Clock.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Ref Clock.vi"/>
				<Item Name="niRFSG Configure RF.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure RF.vi"/>
				<Item Name="niRFSG Configure Script Trigger Digital Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Script Trigger Digital Edge.vi"/>
				<Item Name="niRFSG Configure Script Trigger Digital Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Script Trigger Digital Level.vi"/>
				<Item Name="niRFSG Configure Script Trigger Software.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Script Trigger Software.vi"/>
				<Item Name="niRFSG Configure Start Trigger Digital Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Start Trigger Digital Edge.vi"/>
				<Item Name="niRFSG Configure Start Trigger P2P Endpoint Fullness.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Start Trigger P2P Endpoint Fullness.vi"/>
				<Item Name="niRFSG Configure Start Trigger Software.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Start Trigger Software.vi"/>
				<Item Name="niRFSG Configure Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Trigger.vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table (array).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table (array).vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table (S2P file).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table (S2P file).vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table.vi"/>
				<Item Name="niRFSG Delete De-embedding Table.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Delete De-embedding Table.vi"/>
				<Item Name="niRFSG Disable Configuration List Step Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Disable Configuration List Step Trigger.vi"/>
				<Item Name="niRFSG Disable Script Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Disable Script Trigger.vi"/>
				<Item Name="niRFSG Disable Start Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Disable Start Trigger.vi"/>
				<Item Name="niRFSG Error Message.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Error Message.vi"/>
				<Item Name="niRFSG Export Signal.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Export Signal.vi"/>
				<Item Name="niRFSG Exported Signal Destinations.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Exported Signal Destinations.ctl"/>
				<Item Name="niRFSG Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Get Session Reference.vi"/>
				<Item Name="niRFSG Get Terminal Name.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Get Terminal Name.vi"/>
				<Item Name="niRFSG Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Initialize.vi"/>
				<Item Name="niRFSG Initiate.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Initiate.vi"/>
				<Item Name="niRFSG IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG IVI Error Converter.vi"/>
				<Item Name="niRFSG Ref Clock Sources.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Ref Clock Sources.ctl"/>
				<Item Name="niRFSG Script Trigger IDs.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Script Trigger IDs.ctl"/>
				<Item Name="niRFSG Signal Identifiers.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Signal Identifiers.ctl"/>
				<Item Name="niRFSG Signal Names.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Signal Names.ctl"/>
				<Item Name="niRFSG Trigger Terminals.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Trigger Terminals.ctl"/>
				<Item Name="niRFSG Wait Until Settled.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Wait Until Settled.vi"/>
				<Item Name="niRFSG Write Arb Waveform (Complex DBL).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (Complex DBL).vi"/>
				<Item Name="niRFSG Write Arb Waveform (Complex Input SGL).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (Complex Input SGL).vi"/>
				<Item Name="niRFSG Write Arb Waveform (Complex Input).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (Complex Input).vi"/>
				<Item Name="niRFSG Write Arb Waveform (Complex SGL).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (Complex SGL).vi"/>
				<Item Name="niRFSG Write Arb Waveform (CWDT SGL).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (CWDT SGL).vi"/>
				<Item Name="niRFSG Write Arb Waveform (CWDT).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (CWDT).vi"/>
				<Item Name="niRFSG Write Arb Waveform (Direct DMA).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (Direct DMA).vi"/>
				<Item Name="niRFSG Write Arb Waveform (I-Q SGL).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (I-Q SGL).vi"/>
				<Item Name="niRFSG Write Arb Waveform (I-Q).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (I-Q).vi"/>
				<Item Name="niRFSG Write Arb Waveform (I16).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform (I16).vi"/>
				<Item Name="niRFSG Write Arb Waveform.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Arb Waveform.vi"/>
				<Item Name="niRFSG Write Script.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Write Script.vi"/>
				<Item Name="rfsg_Validate I-Q Arrays.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/rfsg_Validate I-Q Arrays.vi"/>
				<Item Name="rfsg_Validate I16 Array.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/rfsg_Validate I16 Array.vi"/>
				<Item Name="niSwitch Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Close.vi"/>
				<Item Name="niSwitch IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch IVI Error Converter.vi"/>
				<Item Name="niSwitch Disconnect All Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect All Channels.vi"/>
				<Item Name="niSwitch Connect Channels (Single).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Single).vi"/>
				<Item Name="niSwitch Connect Channels (Multiple).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Multiple).vi"/>
				<Item Name="niSwitch Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels.vi"/>
				<Item Name="niSwitch Path Capability.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Path Capability.ctl"/>
				<Item Name="niSwitch Can Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Can Connect Channels.vi"/>
				<Item Name="niSwitch Topologies.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Topologies.ctl"/>
				<Item Name="niSwitch Initialize With Topology.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Initialize With Topology.vi"/>
				<Item Name="niDCPower gRPC Device Server.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower gRPC Device Server.ctl"/>
				<Item Name="niDCPower Initialize With Independent Channels for gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initialize With Independent Channels for gRPC session.vi"/>
				<Item Name="niDCPower Detach gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Detach gRPC session.vi"/>
				<Item Name="niDCPower Attach gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Attach gRPC session.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create NI GUID.vi" Type="VI" URL="/&lt;vilib&gt;/string/Create NI GUID.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Equal Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Comparable/Equal Comparable.lvclass"/>
				<Item Name="Equal Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Functor/Equal Functor.lvclass"/>
				<Item Name="Equals.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Equals.vim"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Error Strings Global Internal.vi" Type="VI" URL="/&lt;vilib&gt;/Plug-In SDKs/Measurements/Helpers/Error Strings Global Internal.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="ESFsc.lvlib" Type="Library" URL="/&lt;vilib&gt;/ESFsc/ESFsc/ESFsc.lvlib"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="grpc-lvsupport-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Library/grpc-lvsupport-release.lvlib"/>
				<Item Name="gRPC-servicer-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Servicer/gRPC-servicer-release.lvlib"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="NI Discovery V1 Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Clients/Discovery V1/NI Discovery V1 Client.lvlib"/>
				<Item Name="NI Measurement Plug-In SDK.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Measurements/NI Measurement Plug-In SDK.lvlib"/>
				<Item Name="NI Session Management Instrument.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Sessions/Instrument/NI Session Management Instrument.lvlib"/>
				<Item Name="NI Session Management V1 Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Clients/Session Management V1/NI Session Management V1 Client.lvlib"/>
				<Item Name="ni.measurementlink.discovery.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/discovery/v1/ni.measurementlink.discovery.v1.api.lvlib"/>
				<Item Name="ni.measurementlink.measurement.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/measurement/v1/ni.measurementlink.measurement.v1.api.lvlib"/>
				<Item Name="ni.measurementlink.measurement.v2.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/measurement/v2/ni.measurementlink.measurement.v2.api.lvlib"/>
				<Item Name="ni.measurementlink.sessionmanagement.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/sessionmanagement/v1/ni.measurementlink.sessionmanagement.v1.api.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="niRFmx Instrument Handle.ctl" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/niRFmx Instrument Handle.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="PAE Measurement.lvlib" Type="Library" URL="/&lt;vilib&gt;/niPAEML/PAE Measurement.lvlib"/>
				<Item Name="PAE Shared.lvlib" Type="Library" URL="/&lt;vilib&gt;/niPAEML/Utilities/Shared/PAE Shared.lvlib"/>
				<Item Name="PAE-Pathloss XML Reader.lvlib" Type="Library" URL="/&lt;vilib&gt;/niPAEML/Utilities/RF System Calibration Reader/_Dependencies/Pathloss XML Reader/PAE-Pathloss XML Reader.lvlib"/>
				<Item Name="PAE-SysCalReader.lvlib" Type="Library" URL="/&lt;vilib&gt;/niPAEML/Utilities/RF System Calibration Reader/PAE-SysCalReader.lvlib"/>
				<Item Name="PAEML.lvlib" Type="Library" URL="/&lt;vilib&gt;/niPAEML/PAE/PAEML.lvlib"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Remove Duplicates From 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Remove Duplicates From 1D Array.vim"/>
				<Item Name="RFmxInstr Build Port String.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Build Port String.vi"/>
				<Item Name="RFmxInstr Close.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Close.vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Linear).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Linear).vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Nearest).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Nearest).vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Spline).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Spline).vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation.vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Table.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Table.vi"/>
				<Item Name="RFmxInstr Delete External Attenuation Table.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Delete External Attenuation Table.vi"/>
				<Item Name="RFmxInstr Enable Calibration Plane.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Enable Calibration Plane.vi"/>
				<Item Name="RFmxInstr Error Converter.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Error Converter.vi"/>
				<Item Name="RFmxInstr Export Signal.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Export Signal.vi"/>
				<Item Name="RFmxInstr Get Selector String Size.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Get Selector String Size.vi"/>
				<Item Name="RFmxInstr Initialize NIRFSA.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize NIRFSA.vi"/>
				<Item Name="RFmxInstr Initialize.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize.vi"/>
				<Item Name="RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi"/>
				<Item Name="RFmxInstr Split Strings.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Split Strings.vi"/>
				<Item Name="RFmxPulse Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure External Attenuation.vi"/>
				<Item Name="RFmxSpecAn Commit.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Commit.vi"/>
				<Item Name="RFmxSpecAn Configure Digital Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure Digital Edge Trigger.vi"/>
				<Item Name="RFmxSpecAn Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure External Attenuation.vi"/>
				<Item Name="RFmxSpecAn Configure IQ Power Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure IQ Power Edge Trigger.vi"/>
				<Item Name="RFmxSpecAn Configure RF.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure RF.vi"/>
				<Item Name="RFmxSpecAn Configure Software Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure Software Edge Trigger.vi"/>
				<Item Name="RFmxSpecAn Configure Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure Trigger.vi"/>
				<Item Name="RFmxSpecAn Disable Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Disable Trigger.vi"/>
				<Item Name="RFmxSpecAn Initiate.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Initiate.vi"/>
				<Item Name="RFmxSpecAn Select Measurement (Multiple).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement (Multiple).vi"/>
				<Item Name="RFmxSpecAn Select Measurement (Single).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement (Single).vi"/>
				<Item Name="RFmxSpecAn Select Measurement.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement.vi"/>
				<Item Name="RFmxSpecAn TXP Configure Averaging.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Configure Averaging.vi"/>
				<Item Name="RFmxSpecAn TXP Configure Measurement Interval.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Configure Measurement Interval.vi"/>
				<Item Name="RFmxSpecAn TXP Configure RBW Filter.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Configure RBW Filter.vi"/>
				<Item Name="RFmxSpecAn TXP Fetch Measurement.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Fetch Measurement.vi"/>
				<Item Name="RFmxSpecAn TXP Fetch Power Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Fetch Power Trace.vi"/>
				<Item Name="RFmxSpecAn TXP Fetch.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn TXP Fetch.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Search Unsorted 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Search Unsorted 1D Array Core.vim"/>
				<Item Name="Search Unsorted 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Search Unsorted 1D Array.vim"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Difference.vim" Type="VI" URL="/&lt;vilib&gt;/set operations/Set Difference.vim"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/usereventprio.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="RFmxInstr Get NIRFSA Session.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Get NIRFSA Session.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
			</Item>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="DC Ins Initialize.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Ins Initialize.ctl"/>
			<Item Name="DC Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Settings.ctl"/>
			<Item Name="Deembedding RFmx.vi" Type="VI" URL="../../FPT Shared VIs/De-embedding/Deembedding RFmx.vi"/>
			<Item Name="Deembedding RFSG.vi" Type="VI" URL="../../FPT Shared VIs/De-embedding/Deembedding RFSG.vi"/>
			<Item Name="Event Messenger-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Event Messenger-bool.lvlib"/>
			<Item Name="Get Power Sequence.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Power Sequence.vi"/>
			<Item Name="Get Specific Channel Resources.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Specific Channel Resources.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nidcpower_64.dll" Type="Document" URL="nidcpower_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxAttribEng.dll" Type="Document" URL="niRFmxAttribEng.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxInstr.dll" Type="Document" URL="niRFmxInstr.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxSpecAn.dll" Type="Document" URL="niRFmxSpecAn.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFSG_64.dll" Type="Document" URL="niRFSG_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Power Off Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Off Dut.vi"/>
			<Item Name="Power On Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power On Dut.vi"/>
			<Item Name="ProbeFormatting.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/ProbeFormatting.vi"/>
			<Item Name="RFmx Config.ctl" Type="VI" URL="../../FPT Shared VIs/De-embedding/RFmx Config.ctl"/>
			<Item Name="RFsg Config.ctl" Type="VI" URL="../../FPT Shared VIs/De-embedding/RFsg Config.ctl"/>
			<Item Name="Update Probe Details String.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/Update Probe Details String.vi"/>
			<Item Name="CSV Configuration Reader.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/CSV Configuration Reader.vi"/>
			<Item Name="Switch Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Switch Settings.ctl"/>
			<Item Name="Set Switching.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Set Switching.vi"/>
			<Item Name="niswitch_64.dll" Type="Document" URL="niswitch_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Disconnect All Switches.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Disconnect All Switches.vi"/>
			<Item Name="Measurement Plugin Error Handler.vi" Type="VI" URL="../../FPT Shared VIs/Measurement Plugin Error Handler.vi"/>
			<Item Name="NI gRPC Device Server.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server.vi"/>
			<Item Name="NI gRPC Device Server - Action.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server - Action.ctl"/>
			<Item Name="Measurement Termination In Progress.vi" Type="VI" URL="../../FPT Shared VIs/Early Stop/Measurement Termination In Progress.vi"/>
			<Item Name="Power Sequence CSV Validity Check.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Sequence CSV Validity Check.vi"/>
			<Item Name="Find Connected NI Devices.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Find Connected NI Devices.vi"/>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FPT_Compression" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CB32F6F9-3185-47A5-823F-34A7657E7682}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D85B4801-19D3-4A55-9686-56A39851B7EA}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NI.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AE998D56-C818-4EC8-AA92-59860D3773B3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT_Compression</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/FPT_Compression</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/FPT_Compression.lvclass/Framework Defined/Build Assets/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{5F2924AE-C75F-4E6C-9EF7-A3917E58EE7E}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPT_Compression.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT_Compression/FPT_Compression.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT_Compression/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{79FBB11D-9F36-4EAC-AB06-A7D2A51234A1}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT_Compression.lvclass/Run Service.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Window run-time position</Property>
				<Property Name="Source[1].properties[0].value" Type="Str">Minimized</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fastFileFormat" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT_Compression</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT_Compression</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT_Compression</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{1A536556-1E62-4F8D-9F9F-747F3E47E43B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPT_Compression.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="FPT_Compression UI" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C4F85D20-ECF8-4DBC-ACF5-30C61525ACE5}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT_Compression UI</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../NI_AB_PROJECTNAME/BuiltUI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{EFE073F8-6353-4034-8DD1-EDFD72F16739}</Property>
				<Property Name="Bld_version.build" Type="Int">108</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPT_Compression UI.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/BuiltUI/FPT_Compression UI.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/BuiltUI</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{0A608E31-AEF3-4B47-8C1A-ACD8E3B3FC7D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT_Compression UI.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT_Compression UI</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT_Compression UI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT_Compression UI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{089EEFEE-0215-463A-9C80-896E254DC684}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPT_Compression UI.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
