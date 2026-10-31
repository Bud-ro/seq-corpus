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
		<Item Name="Measurement" Type="Folder" URL="../FPT NoiseFigure/Measurement">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="FPT NoiseFigure UI.lvlib" Type="Library" URL="../FPT NoiseFigure UI/FPT NoiseFigure UI.lvlib"/>
		<Item Name="FPT NoiseFigure.lvclass" Type="LVClass" URL="../FPT NoiseFigure/FPT NoiseFigure.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niDCPower Abort With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Abort With Channels.vi"/>
				<Item Name="niDCPower Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Close.vi"/>
				<Item Name="niDCPower Configure Current Limit Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit Range.vi"/>
				<Item Name="niDCPower Configure Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit.vi"/>
				<Item Name="niDCPower Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Enabled.vi"/>
				<Item Name="niDCPower Configure Output Function.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Function.vi"/>
				<Item Name="niDCPower Configure Source Mode With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Source Mode With Channels.vi"/>
				<Item Name="niDCPower Configure Voltage Level Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level Range.vi"/>
				<Item Name="niDCPower Configure Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level.vi"/>
				<Item Name="niDCPower Current Limit Behavior.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Current Limit Behavior.ctl"/>
				<Item Name="niDCPower Initiate With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initiate With Channels.vi"/>
				<Item Name="niDCPower IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower IVI Error Converter.vi"/>
				<Item Name="niDCPower Output Function.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Output Function.ctl"/>
				<Item Name="niDCPower Reset With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Reset With Channels.vi"/>
				<Item Name="niDCPower Source Mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Source Mode.ctl"/>
				<Item Name="niSwitch Topologies.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Topologies.ctl"/>
				<Item Name="niSwitch Initialize With Topology.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Initialize With Topology.vi"/>
				<Item Name="niSwitch IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch IVI Error Converter.vi"/>
				<Item Name="niSwitch Wait For Debounce.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Wait For Debounce.vi"/>
				<Item Name="niSwitch Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Close.vi"/>
				<Item Name="niSwitch Disconnect All Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect All Channels.vi"/>
				<Item Name="niSwitch Connect Channels (Single).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Single).vi"/>
				<Item Name="niSwitch Connect Channels (Multiple).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Multiple).vi"/>
				<Item Name="niSwitch Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels.vi"/>
				<Item Name="niSwitch Can Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Can Connect Channels.vi"/>
				<Item Name="niSwitch Path Capability.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Path Capability.ctl"/>
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
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI Discovery V1 Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Clients/Discovery V1/NI Discovery V1 Client.lvlib"/>
				<Item Name="NI Measurement Plug-In SDK.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Measurements/NI Measurement Plug-In SDK.lvlib"/>
				<Item Name="NI Session Management Instrument.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Sessions/Instrument/NI Session Management Instrument.lvlib"/>
				<Item Name="NI Session Management V1 Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/Plug-In SDKs/Clients/Session Management V1/NI Session Management V1 Client.lvlib"/>
				<Item Name="ni.measurementlink.discovery.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/discovery/v1/ni.measurementlink.discovery.v1.api.lvlib"/>
				<Item Name="ni.measurementlink.measurement.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/measurement/v1/ni.measurementlink.measurement.v1.api.lvlib"/>
				<Item Name="ni.measurementlink.measurement.v2.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/measurement/v2/ni.measurementlink.measurement.v2.api.lvlib"/>
				<Item Name="ni.measurementlink.sessionmanagement.v1.api.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/Generated APIs/ni/measurementlink/sessionmanagement/v1/ni.measurementlink.sessionmanagement.v1.api.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
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
				<Item Name="RFmxInstr Delete External Attenuation Table.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Delete External Attenuation Table.vi"/>
				<Item Name="RFmxInstr Enable Calibration Plane.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Enable Calibration Plane.vi"/>
				<Item Name="RFmxInstr Error Converter.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Error Converter.vi"/>
				<Item Name="RFmxInstr Get Selector String Size.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Get Selector String Size.vi"/>
				<Item Name="RFmxInstr Initialize NIRFSA.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize NIRFSA.vi"/>
				<Item Name="RFmxInstr Initialize.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Initialize.vi"/>
				<Item Name="RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Load S-parameter External Attenuation Table from S2P File.vi"/>
				<Item Name="RFmxInstr Split Strings.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/Support/RFmxInstrSupport.llb/RFmxInstr Split Strings.vi"/>
				<Item Name="RFmxInstr Wait for Acquisition Complete.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Wait for Acquisition Complete.vi"/>
				<Item Name="RFmxPulse Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/Pulse/mx/RFmxPulse.llb/RFmxPulse Configure External Attenuation.vi"/>
				<Item Name="RFmxSpecAn Configure External Attenuation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure External Attenuation.vi"/>
				<Item Name="RFmxSpecAn Configure Reference Level.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Configure Reference Level.vi"/>
				<Item Name="RFmxSpecAn Initiate.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Initiate.vi"/>
				<Item Name="RFmxSpecAn NF Configure Averaging.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Averaging.vi"/>
				<Item Name="RFmxSpecAn NF Configure Frequency List (Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Frequency List (Frequency).vi"/>
				<Item Name="RFmxSpecAn NF Configure Measurement Bandwidth.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Measurement Bandwidth.vi"/>
				<Item Name="RFmxSpecAn NF Configure Measurement Interval.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Measurement Interval.vi"/>
				<Item Name="RFmxSpecAn NF Configure Measurement Method.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Measurement Method.vi"/>
				<Item Name="RFmxSpecAn NF Configure Y-Factor Mode.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Y-Factor Mode.vi"/>
				<Item Name="RFmxSpecAn NF Configure Y-Factor Noise Source ENR.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Y-Factor Noise Source ENR.vi"/>
				<Item Name="RFmxSpecAn NF Configure Y-Factor Noise Source Settling Time.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Configure Y-Factor Noise Source Settling Time.vi"/>
				<Item Name="RFmxSpecAn NF Fetch Analyzer Noise Figure.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch Analyzer Noise Figure.vi"/>
				<Item Name="RFmxSpecAn NF Fetch Cold Source Power.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch Cold Source Power.vi"/>
				<Item Name="RFmxSpecAn NF Fetch DUT Noise Figure and Gain.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch DUT Noise Figure and Gain.vi"/>
				<Item Name="RFmxSpecAn NF Fetch Y-Factor Powers.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch Y-Factor Powers.vi"/>
				<Item Name="RFmxSpecAn NF Fetch Y-Factors.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch Y-Factors.vi"/>
				<Item Name="RFmxSpecAn NF Fetch.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Fetch.vi"/>
				<Item Name="RFmxSpecAn NF Recommend Reference Level.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Recommend Reference Level.vi"/>
				<Item Name="RFmxSpecAn Select Measurement (Multiple).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement (Multiple).vi"/>
				<Item Name="RFmxSpecAn Select Measurement (Single).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement (Single).vi"/>
				<Item Name="RFmxSpecAn Select Measurement.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn Select Measurement.vi"/>
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
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation.vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Nearest).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Nearest).vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Linear).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Linear).vi"/>
				<Item Name="RFmxInstr Configure External Attenuation Interpolation (Spline).vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/RFInstr/mx/RFmxInstr.llb/RFmxInstr Configure External Attenuation Interpolation (Spline).vi"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="RFmxSpecAn NF Load Calibration Loss from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Load Calibration Loss from S2P File.vi"/>
				<Item Name="RFmxSpecAn NF Load DUT Input Loss from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Load DUT Input Loss from S2P File.vi"/>
				<Item Name="RFmxSpecAn NF Load DUT Output Loss from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Load DUT Output Loss from S2P File.vi"/>
				<Item Name="RFmxSpecAn NF Load Y Factor Noise Source Loss from S2P File.vi" Type="VI" URL="/&lt;vilib&gt;/RFmx/SpecAn/mx/RFmxSpecAn.llb/RFmxSpecAn NF Load Y Factor Noise Source Loss from S2P File.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
			</Item>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="DC Ins Initialize.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Ins Initialize.ctl"/>
			<Item Name="DC Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/DC Settings.ctl"/>
			<Item Name="Deembedding RFmx.vi" Type="VI" URL="../../FPT Shared VIs/De-embedding/Deembedding RFmx.vi"/>
			<Item Name="Event Messenger-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Event Messenger-bool.lvlib"/>
			<Item Name="Get Power Sequence.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Power Sequence.vi"/>
			<Item Name="Get Specific Channel Resources.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Get Specific Channel Resources.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
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
			<Item Name="Power Off Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Off Dut.vi"/>
			<Item Name="Power On Dut.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power On Dut.vi"/>
			<Item Name="ProbeFormatting.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/ProbeFormatting.vi"/>
			<Item Name="RFmx Config.ctl" Type="VI" URL="../../FPT Shared VIs/De-embedding/RFmx Config.ctl"/>
			<Item Name="Update Probe Details String.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ProbeSupport/Update Probe Details String.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="niswitch_64.dll" Type="Document" URL="niswitch_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="CSV Configuration Reader.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/CSV Configuration Reader.vi"/>
			<Item Name="Set Switching.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Set Switching.vi"/>
			<Item Name="Switch Settings.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Switch Settings.ctl"/>
			<Item Name="Disconnect All Switches.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Disconnect All Switches.vi"/>
			<Item Name="Measurement Plugin Error Handler.vi" Type="VI" URL="../../FPT Shared VIs/Measurement Plugin Error Handler.vi"/>
			<Item Name="Measurement Termination In Progress.vi" Type="VI" URL="../../FPT Shared VIs/Early Stop/Measurement Termination In Progress.vi"/>
			<Item Name="NI gRPC Device Server - Action.ctl" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server - Action.ctl"/>
			<Item Name="NI gRPC Device Server.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/NI gRPC Device Server.vi"/>
			<Item Name="Find Connected NI Devices.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Find Connected NI Devices.vi"/>
			<Item Name="Power Sequence CSV Validity Check.vi" Type="VI" URL="../../FPT Shared VIs/Power Sequencing/Power Sequence CSV Validity Check.vi"/>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FPT NoiseFigure" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{182D8010-480A-44BA-8015-CC7E3C083F0F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AFBB3585-FF7D-4671-B73E-4D8038FAC893}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.NI.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8271D423-17B5-421A-B975-DF57A01A253B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT NoiseFigure</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/FPT NoiseFigure</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/FPT NoiseFigure.lvclass/Framework Defined/Build Assets/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{CA60BCA6-9CE3-4EA1-AA0C-AD5567C0596F}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPTNoiseFigure.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT NoiseFigure/FPTNoiseFigure.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/FPT NoiseFigure/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D5301BE8-726D-48FD-9AC4-7B387DAD0ADC}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT NoiseFigure.lvclass/Run Service.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Window run-time position</Property>
				<Property Name="Source[1].properties[0].value" Type="Str">Minimized</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">1</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fastFileFormat" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT NoiseFigure</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT NoiseFigure</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT NoiseFigure</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{EBC86473-0459-484B-AADF-08D16C1DCC36}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPTNoiseFigure.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="FPT NoiseFigure UI" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{12613764-9021-424F-B394-968366C97685}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FPT NoiseFigure UI</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../FPT NoiseFigure/BuiltUI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2D30FC81-D53F-4B52-BB3B-8DBBC2848E0D}</Property>
				<Property Name="Bld_version.build" Type="Int">261</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">FPT NoiseFigure UI.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../FPT NoiseFigure/BuiltUI/FPT NoiseFigure UI.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../FPT NoiseFigure/BuiltUI</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{A3EE7A93-FF54-480A-9E3C-A24E72F36C48}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/FPT NoiseFigure UI.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/FPT NoiseFigure UI.lvlib/SharedVIs/Graph Cursor Update.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref"></Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FPT NoiseFigure UI</Property>
				<Property Name="TgtF_internalName" Type="Str">FPT NoiseFigure UI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2025 NI</Property>
				<Property Name="TgtF_productName" Type="Str">FPT NoiseFigure UI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{E9361B8F-FD33-4E8C-9903-9E7F24E82B86}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">FPT NoiseFigure UI.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
