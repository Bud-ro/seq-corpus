<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Measurement" Type="Folder" URL="../FPT Pulse Measurement/Measurement">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="FPT Pulse Measurement UI.lvlib" Type="Library" URL="../FPT Pulse Measurement UI/FPT Pulse Measurement UI.lvlib"/>
		<Item Name="FPT Pulse Measurement.lvclass" Type="LVClass" URL="../FPT Pulse Measurement/FPT Pulse Measurement.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niDCPower Abort With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Abort With Channels.vi"/>
				<Item Name="niDCPower Attach gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Attach gRPC session.vi"/>
				<Item Name="niDCPower Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Close.vi"/>
				<Item Name="niDCPower Configure Current Limit Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit Range.vi"/>
				<Item Name="niDCPower Configure Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit.vi"/>
				<Item Name="niDCPower Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Enabled.vi"/>
				<Item Name="niDCPower Configure Output Function.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Function.vi"/>
				<Item Name="niDCPower Configure Source Mode With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Source Mode With Channels.vi"/>
				<Item Name="niDCPower Configure Voltage Level Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level Range.vi"/>
				<Item Name="niDCPower Configure Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level.vi"/>
				<Item Name="niDCPower Current Limit Behavior.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Current Limit Behavior.ctl"/>
				<Item Name="niDCPower Detach gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Detach gRPC session.vi"/>
				<Item Name="niDCPower gRPC Device Server.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower gRPC Device Server.ctl"/>
				<Item Name="niDCPower Initialize With Independent Channels for gRPC session.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initialize With Independent Channels for gRPC session.vi"/>
				<Item Name="niDCPower Initiate With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initiate With Channels.vi"/>
				<Item Name="niDCPower IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower IVI Error Converter.vi"/>
				<Item Name="niDCPower Output Function.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Output Function.ctl"/>
				<Item Name="niDCPower Reset With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Reset With Channels.vi"/>
				<Item Name="niDCPower Source Mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Source Mode.ctl"/>
				<Item Name="niRFSG Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Abort.vi"/>
				<Item Name="niRFSG Check Generation Status.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Check Generation Status.vi"/>
				<Item Name="niRFSG Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Close.vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Linear).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Linear).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Nearest).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Nearest).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation (Spline).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation (Spline).vi"/>
				<Item Name="niRFSG Configure De-embedding Table Interpolation.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure De-embedding Table Interpolation.vi"/>
				<Item Name="niRFSG Configure Generation Mode.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Generation Mode.vi"/>
				<Item Name="niRFSG Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Output Enabled.vi"/>
				<Item Name="niRFSG Configure Power Level Type.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Power Level Type.vi"/>
				<Item Name="niRFSG Configure RF.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure RF.vi"/>
				<Item Name="niRFSG Configure Signal Bandwidth.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Configure Signal Bandwidth.vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table (array).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table (array).vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table (S2P file).vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table (S2P file).vi"/>
				<Item Name="niRFSG Create De-embedding S-parameter Table.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Create De-embedding S-parameter Table.vi"/>
				<Item Name="niRFSG Error Message.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Error Message.vi"/>
				<Item Name="niRFSG Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Get Session Reference.vi"/>
				<Item Name="niRFSG Get Terminal Name.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Get Terminal Name.vi"/>
				<Item Name="niRFSG Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Initialize.vi"/>
				<Item Name="niRFSG Initiate.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Initiate.vi"/>
				<Item Name="niRFSG IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG IVI Error Converter.vi"/>
				<Item Name="niRFSG Signal Identifiers.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Signal Identifiers.ctl"/>
				<Item Name="niRFSG Signal Names.ctl" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/niRFSG Signal Names.ctl"/>
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
				<Item Name="niSwitch Can Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Can Connect Channels.vi"/>
				<Item Name="niSwitch Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Close.vi"/>
				<Item Name="niSwitch Connect Channels (Multiple).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Multiple).vi"/>
				<Item Name="niSwitch Connect Channels (Single).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Single).vi"/>
				<Item Name="niSwitch Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels.vi"/>
				<Item Name="niSwitch Disconnect All Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect All Channels.vi"/>
				<Item Name="niSwitch Initialize With Topology.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Initialize With Topology.vi"/>
				<Item Name="niSwitch IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch IVI Error Converter.vi"/>
				<Item Name="niSwitch Path Capability.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Path Capability.ctl"/>
				<Item Name="niSwitch Topologies.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Topologies.ctl"/>
				<Item Name="rfsg_Coerce to Quantum.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSGExamplesSupport.llb/rfsg_Coerce to Quantum.vi"/>
				<Item Name="rfsg_Validate I-Q Arrays.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/rfsg_Validate I-Q Arrays.vi"/>
				<Item Name="rfsg_Validate I16 Array.vi" Type="VI" URL="/&lt;instrlib&gt;/niRFSG/niRFSG.llb/rfsg_Validate I16 Array.vi"/>
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
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
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
				<Item Name="RFmxInstr Configure Frequency Reference.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure Frequency Reference.vi"/>
				<Item Name="RFmxInstr Delete External Attenuation Table.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Delete External Attenuation Table.vi"/>
				<Item Name="RFmxInstr Enable Calibration Plane.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Enable Calibration Plane.vi"/>
				<Item Name="RFmxInstr Error Converter.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Error Converter.vi"/>
				<Item Name="RFmxInstr Get Selector String Size.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Get Selector String Size.vi"/>
				<Item Name="RFmxInstr Initialize NIRFSA.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize NIRFSA.vi"/>
				<Item Name="RFmxInstr Initialize.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize.vi"/>
				<Item Name="RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi"/>
				<Item Name="RFmxInstr Split Strings.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Split Strings.vi"/>
				<Item Name="RFmxPulse Configure Digital Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure Digital Edge Trigger.vi"/>
				<Item Name="RFmxPulse Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure External Attenuation.vi"/>
				<Item Name="RFmxPulse Configure IQ Power Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure IQ Power Edge Trigger.vi"/>
				<Item Name="RFmxPulse Configure Software Edge Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure Software Edge Trigger.vi"/>
				<Item Name="RFmxPulse Configure Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure Trigger.vi"/>
				<Item Name="RFmxPulse Disable Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Disable Trigger.vi"/>
				<Item Name="RFmxPulse Fetch Acquired Amplitude Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Acquired Amplitude Trace.vi"/>
				<Item Name="RFmxPulse Fetch Amplitude Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Amplitude Trace.vi"/>
				<Item Name="RFmxPulse Fetch Burst Intrapulse Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Burst Intrapulse Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch Burst Selected Position Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Burst Selected Position Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch Frequency Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Frequency Trace.vi"/>
				<Item Name="RFmxPulse Fetch Intrapulse Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Intrapulse Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch IQ Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch IQ Trace.vi"/>
				<Item Name="RFmxPulse Fetch Multiple Measurement Points Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Multiple Measurement Points Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch Phase (Wrapped) Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Phase (Wrapped) Trace.vi"/>
				<Item Name="RFmxPulse Fetch Pulse To Pulse Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Pulse To Pulse Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch Stability Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Stability Trace.vi"/>
				<Item Name="RFmxPulse Fetch Time Sidelobe Trace.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch Time Sidelobe Trace.vi"/>
				<Item Name="RFmxPulse Fetch.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Fetch.vi"/>
				<Item Name="RFmxPulse Initiate.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Initiate.vi"/>
				<Item Name="RFmxPulse Select Measurement (Multiple).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Select Measurement (Multiple).vi"/>
				<Item Name="RFmxPulse Select Measurement (Single).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Select Measurement (Single).vi"/>
				<Item Name="RFmxPulse Select Measurement.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Select Measurement.vi"/>
				<Item Name="RFmxPulse Wait for Measurement Complete.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Wait for Measurement Complete.vi"/>
				<Item Name="RFmxSpecAn Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure External Attenuation.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Search Unsorted 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Search Unsorted 1D Array Core.vim"/>
				<Item Name="Search Unsorted 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Search Unsorted 1D Array.vim"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Difference.vim" Type="VI" URL="/&lt;vilib&gt;/set operations/Set Difference.vim"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="usereventprio.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/usereventprio.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="CSV Configuration Reader.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/CSV Configuration Reader.vi"/>
			<Item Name="DC Ins Initialize.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Ins Initialize.ctl"/>
			<Item Name="DC Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Settings.ctl"/>
			<Item Name="Deembedding RFmx.vi" Type="VI" URL="../../FPT Shared VIs/De-embedding/Deembedding RFmx.vi"/>
			<Item Name="Deembedding RFSG.vi" Type="VI" URL="../../FPT Shared VIs/De-embedding/Deembedding RFSG.vi"/>
			<Item Name="Disconnect All Switches.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Disconnect All Switches.vi"/>
			<Item Name="Event Messenger-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Event Messenger-bool.lvlib"/>
			<Item Name="Find Connected NI Devices.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Find Connected NI Devices.vi"/>
			<Item Name="Get Power Sequence.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Power Sequence.vi"/>
			<Item Name="Get Specific Channel Resources.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Specific Channel Resources.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Measurement Plugin Error Handler.vi" Type="VI" URL="../../FPT Shared VIs/Measurement Plugin Error Handler.vi"/>
			<Item Name="Measurement Termination In Progress.vi" Type="VI" URL="../../FPT Shared VIs/Early Stop/Measurement Termination In Progress.vi"/>
			<Item Name="NI gRPC Device Server - Action.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server - Action.ctl"/>
			<Item Name="NI gRPC Device Server.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server.vi"/>
			<Item Name="nidcpower_64.dll" Type="Document" URL="nidcpower_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxAttribEng.dll" Type="Document" URL="niRFmxAttribEng.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxInstr.dll" Type="Document" URL="niRFmxInstr.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFmxPulse.dll" Type="Document" URL="niRFmxPulse.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niRFSG_64.dll" Type="Document" URL="niRFSG_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niswitch_64.dll" Type="Document" URL="niswitch_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Power Off Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Off Dut.vi"/>
			<Item Name="Power On Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power On Dut.vi"/>
			<Item Name="Power Sequence CSV Validity Check.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Sequence CSV Validity Check.vi"/>
			<Item Name="ProbeFormatting.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/ProbeFormatting.vi"/>
			<Item Name="RFmx Config.ctl" Type="VI" URL="../../FPT Shared VIs/De-embedding/RFmx Config.ctl"/>
			<Item Name="RFsg Config.ctl" Type="VI" URL="../../FPT Shared VIs/De-embedding/RFsg Config.ctl"/>
			<Item Name="Set Switching.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Set Switching.vi"/>
			<Item Name="Switch Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Switch Settings.ctl"/>
			<Item Name="Update Probe Details String.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/Update Probe Details String.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FPT Pulse Measurement" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{31B827A8-856F-4F03-95E6-4BBAD9BA704C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F30AEC4E-66D9-4E06-ABF8-7CDD474D3145}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NI.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2E596E33-E7B8-4F13-ADC2-FBE0FC265230}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT Pulse Measurement</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/FPT Pulse Measurement</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/FPT Pulse Measurement.lvclass/Framework Defined/Build Assets/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C377AAC1-6292-414C-B2E4-A45D364458F2}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPTPulseMeasurement.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT Pulse Measurement/FPTPulseMeasurement.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT Pulse Measurement/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{01F42F4C-81C8-4EC7-BD3E-A626A9E36116}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT Pulse Measurement.lvclass/Run Service.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Window run-time position</Property>
				<Property Name="Source[1].properties[0].value" Type="Str">Minimized</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fastFileFormat" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT Pulse Measurement</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT Pulse Measurement</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT Pulse Measurement</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{82259A7B-F7EE-4768-8B4B-387B1F8B7EC0}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPTPulseMeasurement.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="FPT Pulse Measurement UI" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{4292F60D-A6BB-42ED-B1A9-74FC4BDAEFE5}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT Pulse Measurement UI</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../FPT Pulse Measurement/BuiltUI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{12A3355A-85B9-438C-A7DE-FFF2CC37BD85}</Property>
				<Property Name="Bld_version.build" Type="Int">35</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPT Pulse Measurement UI.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../FPT Pulse Measurement/BuiltUI/FPT Pulse Measurement UI.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../FPT Pulse Measurement/BuiltUI</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{01F42F4C-81C8-4EC7-BD3E-A626A9E36116}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT Pulse Measurement UI.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT Pulse Measurement UI</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT Pulse Measurement UI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT Pulse Measurement UI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3FF0AAA5-6FBE-4C86-8453-54E7594A274D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPT Pulse Measurement UI.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
