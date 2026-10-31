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
		<Item Name="Bode Plot - PXI.lvlib" Type="Library" URL="../Logic/Bode Plot - PXI.lvlib"/>
		<Item Name="LabVIEW Bodeplot Summit.lvlib" Type="Library" URL="../LabVIEW Bodeplot Summit.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niFgen Abort Generation.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Abort Generation.vi"/>
				<Item Name="niFgen Attach gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Attach gRPC Session.vi"/>
				<Item Name="niFgen Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Close.vi"/>
				<Item Name="niFgen Configure Output Impedance.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Configure Output Impedance.vi"/>
				<Item Name="niFgen Configure Output Mode.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Configure Output Mode.vi"/>
				<Item Name="niFgen Configure Standard Waveform.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Configure Standard Waveform.vi"/>
				<Item Name="niFgen Detach gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Detach gRPC Session.vi"/>
				<Item Name="niFgen Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Get Session Reference.vi"/>
				<Item Name="niFgen gRPC Device Server.ctl" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen gRPC Device Server.ctl"/>
				<Item Name="niFgen Initialize With Channels for gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Initialize With Channels for gRPC Session.vi"/>
				<Item Name="niFgen Initiate Generation.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Initiate Generation.vi"/>
				<Item Name="niFgen IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen IVI Error Converter.vi"/>
				<Item Name="niFgen Output Enable.vi" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Output Enable.vi"/>
				<Item Name="niFgen Output Impedance.ctl" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Output Impedance.ctl"/>
				<Item Name="niFgen Output Mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Output Mode.ctl"/>
				<Item Name="niFgen Waveform Type.ctl" Type="VI" URL="/&lt;instrlib&gt;/niFgen/niFgen.llb/niFgen Waveform Type.ctl"/>
				<Item Name="niScope Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/Fetch/niScope Abort.vi"/>
				<Item Name="niScope Actual Meas Wfm Size.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Actual Meas Wfm Size.vi"/>
				<Item Name="niScope Actual Num Wfms.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Actual Num Wfms.vi"/>
				<Item Name="niScope Actual Record Length.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Horizontal/niScope Actual Record Length.vi"/>
				<Item Name="niScope Add Waveform Processing.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Add Waveform Processing.vi"/>
				<Item Name="niScope array measurement.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope array measurement.ctl"/>
				<Item Name="niScope Attach gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Attach gRPC Session.vi"/>
				<Item Name="niScope Clear Waveform Measurement Stats.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Clear Waveform Measurement Stats.vi"/>
				<Item Name="niScope Clear Waveform Processing.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Clear Waveform Processing.vi"/>
				<Item Name="niScope clearable measurement.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope clearable measurement.ctl"/>
				<Item Name="niScope Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Close.vi"/>
				<Item Name="niScope Commit.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Commit.vi"/>
				<Item Name="niScope Configure Chan Characteristics.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Vertical/niScope Configure Chan Characteristics.vi"/>
				<Item Name="niScope Configure Horizontal Timing.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Horizontal/niScope Configure Horizontal Timing.vi"/>
				<Item Name="niScope Configure Trigger (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger (poly).vi"/>
				<Item Name="niScope Configure Trigger Digital.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Digital.vi"/>
				<Item Name="niScope Configure Trigger Edge.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Edge.vi"/>
				<Item Name="niScope Configure Trigger Glitch.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Glitch.vi"/>
				<Item Name="niScope Configure Trigger Hysteresis.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Hysteresis.vi"/>
				<Item Name="niScope Configure Trigger Immediate.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Immediate.vi"/>
				<Item Name="niScope Configure Trigger Runt.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Runt.vi"/>
				<Item Name="niScope Configure Trigger Software.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Software.vi"/>
				<Item Name="niScope Configure Trigger Width.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Width.vi"/>
				<Item Name="niScope Configure Trigger Window.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Trigger Window.vi"/>
				<Item Name="niScope Configure Vertical.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Vertical/niScope Configure Vertical.vi"/>
				<Item Name="niScope Configure Video Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Configure/Trigger/niScope Configure Video Trigger.vi"/>
				<Item Name="niScope Detach gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Detach gRPC Session.vi"/>
				<Item Name="niScope Fetch Array Measurement Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Fetch Array Measurement Cluster.vi"/>
				<Item Name="niScope Fetch Array Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Fetch Array Measurement.vi"/>
				<Item Name="niScope Fetch Measurement (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Fetch Measurement (poly).vi"/>
				<Item Name="niScope Fetch Measurement Stats.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Fetch Measurement Stats.vi"/>
				<Item Name="niScope Fetch Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Fetch Measurement.vi"/>
				<Item Name="niScope Get Session Reference.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope Get Session Reference.vi"/>
				<Item Name="niScope glitch condition.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope glitch condition.ctl"/>
				<Item Name="niScope gRPC Device Server.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope gRPC Device Server.ctl"/>
				<Item Name="niScope Initialize for gRPC Session.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/niScope Initialize for gRPC Session.vi"/>
				<Item Name="niScope LabVIEW Error.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Utility/niScope LabVIEW Error.vi"/>
				<Item Name="niScope Multi Fetch Array Measurement Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Multi Fetch Array Measurement Cluster.vi"/>
				<Item Name="niScope Multi Fetch Array Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Multi Fetch Array Measurement.vi"/>
				<Item Name="niScope Multi Fetch Measurement Stats.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Multi Fetch Measurement Stats.vi"/>
				<Item Name="niScope Multi Fetch Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Measurements/niScope Multi Fetch Measurement.vi"/>
				<Item Name="niScope Multi Read Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/niScope Multi Read Cluster.vi"/>
				<Item Name="niScope Multi Read WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/niScope Multi Read WDT.vi"/>
				<Item Name="niScope polarity.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope polarity.ctl"/>
				<Item Name="niScope Read (poly).vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/niScope Read (poly).vi"/>
				<Item Name="niScope Read Cluster.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/niScope Read Cluster.vi"/>
				<Item Name="niScope Read WDT.vi" Type="VI" URL="/&lt;instrlib&gt;/niScope/Acquire/niScope Read WDT.vi"/>
				<Item Name="niScope scalar measurement.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope scalar measurement.ctl"/>
				<Item Name="niScope signal format.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope signal format.ctl"/>
				<Item Name="niScope timestamp type.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope timestamp type.ctl"/>
				<Item Name="niScope trigger coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger coupling.ctl"/>
				<Item Name="niScope trigger polarity.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger polarity.ctl"/>
				<Item Name="niScope trigger slope.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger slope.ctl"/>
				<Item Name="niScope trigger source digital.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source digital.ctl"/>
				<Item Name="niScope trigger source.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger source.ctl"/>
				<Item Name="niScope trigger window mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope trigger window mode.ctl"/>
				<Item Name="niScope tv event.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope tv event.ctl"/>
				<Item Name="niScope vertical coupling.ctl" Type="VI" URL="/&lt;instrlib&gt;/niScope/Controls/niScope vertical coupling.ctl"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
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
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="MeasurementLink Discovery Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/MeasurementLink/MeasurementLink Discovery Client/MeasurementLink Discovery Client.lvlib"/>
				<Item Name="MeasurementLink Measurement Server Internal.lvlib" Type="Library" URL="/&lt;vilib&gt;/MeasurementLink/MeasurementLink Measurement Server Internal/MeasurementLink Measurement Server Internal.lvlib"/>
				<Item Name="MeasurementLink Measurement Server.lvlib" Type="Library" URL="/&lt;vilib&gt;/MeasurementLink/MeasurementLink Measurement Server/MeasurementLink Measurement Server.lvlib"/>
				<Item Name="MeasurementLink Measurement Service Base V2.lvlib" Type="Library" URL="/&lt;vilib&gt;/MeasurementLink/MeasurementLink Measurement Service Base V2/MeasurementLink Measurement Service Base V2.lvlib"/>
				<Item Name="MeasurementLink Session Management Client.lvlib" Type="Library" URL="/&lt;vilib&gt;/MeasurementLink/MeasurementLink Session Management Client/MeasurementLink Session Management Client.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="niFgen_64.dll" Type="Document" URL="niFgen_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niScope_64.dll" Type="Document" URL="niScope_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="LabVIEW Bodeplot Summit" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{D5176578-357F-46FB-A169-7B0E5E7D4A50}</Property>
				<Property Name="App_INI_GUID" Type="Str">{87309111-CAAF-43C7-B398-AB0AF453E5C9}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{735F37C3-0BBD-4905-BA92-294A0B0D8820}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LabVIEW Bodeplot Summit</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/LabVIEW Bodeplot Summit</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Advanced/Build Assets/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2ED84B51-5CFF-4745-B6FE-948DDEAD3383}</Property>
				<Property Name="Bld_version.build" Type="Int">4</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">LabVIEWBodeplotSummit.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/LabVIEW Bodeplot Summit/LabVIEWBodeplotSummit.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/LabVIEW Bodeplot Summit/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{EB625614-2FB1-4ED0-A243-F9B296E3340D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Get Measurement Details.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Get Type Specializations.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Get UI Details.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Measurement Configuration.ctl</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Measurement Logic.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Measurement Results.ctl</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Measurement UI.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/LabVIEW Bodeplot Summit.lvlib/Run Service.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref"></Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">10</Property>
				<Property Name="TgtF_companyName" Type="Str">FH JOANNEUM</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LabVIEW Bodeplot Summit</Property>
				<Property Name="TgtF_internalName" Type="Str">LabVIEW Bodeplot Summit</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2023 FH JOANNEUM</Property>
				<Property Name="TgtF_productName" Type="Str">LabVIEW Bodeplot Summit</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7851922C-B20F-4342-B6EC-7DFAAD624B47}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LabVIEWBodeplotSummit.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="Pkg" Type="{E661DAE2-7517-431F-AC41-30807A3BDA38}">
				<Property Name="NIPKG_addToFeed" Type="Bool">false</Property>
				<Property Name="NIPKG_allDependenciesToFeed" Type="Bool">false</Property>
				<Property Name="NIPKG_allDependenciesToSystemLink" Type="Bool">false</Property>
				<Property Name="NIPKG_certificates" Type="Bool">true</Property>
				<Property Name="NIPKG_createInstaller" Type="Bool">false</Property>
				<Property Name="NIPKG_feedLocation" Type="Path">../builds/NI_AB_PROJECTNAME/Pkg/Feed</Property>
				<Property Name="NIPKG_feedLocation.Type" Type="Str">relativeToCommon</Property>
				<Property Name="NIPKG_installerArtifacts" Type="Str"></Property>
				<Property Name="NIPKG_installerBuiltBefore" Type="Bool">false</Property>
				<Property Name="NIPKG_installerDestination" Type="Path">../builds/NI_AB_PROJECTNAME/Pkg/Package Installer</Property>
				<Property Name="NIPKG_installerDestination.Type" Type="Str">relativeToCommon</Property>
				<Property Name="NIPKG_lastBuiltPackage" Type="Str"></Property>
				<Property Name="NIPKG_license" Type="Ref"></Property>
				<Property Name="NIPKG_packageVersion" Type="Bool">false</Property>
				<Property Name="NIPKG_releaseNotes" Type="Str"></Property>
				<Property Name="NIPKG_storeProduct" Type="Bool">false</Property>
				<Property Name="NIPKG_VisibleForRuntimeDeployment" Type="Bool">false</Property>
				<Property Name="PKG_actions.Count" Type="Int">0</Property>
				<Property Name="PKG_autoIncrementBuild" Type="Bool">true</Property>
				<Property Name="PKG_autoSelectDeps" Type="Bool">true</Property>
				<Property Name="PKG_buildNumber" Type="Int">0</Property>
				<Property Name="PKG_buildSpecName" Type="Str">Pkg</Property>
				<Property Name="PKG_dependencies.Count" Type="Int">0</Property>
				<Property Name="PKG_description" Type="Str"></Property>
				<Property Name="PKG_destinations.Count" Type="Int">5</Property>
				<Property Name="PKG_destinations[0].ID" Type="Str">{20C7EE0C-558C-4C4D-80E8-006FC5726754}</Property>
				<Property Name="PKG_destinations[0].Subdir.Directory" Type="Str">Services</Property>
				<Property Name="PKG_destinations[0].Subdir.Parent" Type="Str">{719B1BAC-9DF9-487C-83D5-7BAED43F5DA3}</Property>
				<Property Name="PKG_destinations[0].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[1].ID" Type="Str">{719B1BAC-9DF9-487C-83D5-7BAED43F5DA3}</Property>
				<Property Name="PKG_destinations[1].Subdir.Directory" Type="Str">MeasurementLink</Property>
				<Property Name="PKG_destinations[1].Subdir.Parent" Type="Str">{975C529A-32B0-4599-9EE3-46067C0EB503}</Property>
				<Property Name="PKG_destinations[1].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[2].ID" Type="Str">{975C529A-32B0-4599-9EE3-46067C0EB503}</Property>
				<Property Name="PKG_destinations[2].Subdir.Directory" Type="Str">National Instruments</Property>
				<Property Name="PKG_destinations[2].Subdir.Parent" Type="Str">root_4</Property>
				<Property Name="PKG_destinations[2].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[3].ID" Type="Str">{A3B31573-CD0B-4CA3-854B-ABBD87806710}</Property>
				<Property Name="PKG_destinations[3].Subdir.Directory" Type="Str">Summit PXI Bodeplot</Property>
				<Property Name="PKG_destinations[3].Subdir.Parent" Type="Str">root_5</Property>
				<Property Name="PKG_destinations[3].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[4].ID" Type="Str">{D090872F-212C-4193-8981-C3F75588B46E}</Property>
				<Property Name="PKG_destinations[4].Subdir.Directory" Type="Str">LabVIEW Bodeplot</Property>
				<Property Name="PKG_destinations[4].Subdir.Parent" Type="Str">{20C7EE0C-558C-4C4D-80E8-006FC5726754}</Property>
				<Property Name="PKG_destinations[4].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_displayName" Type="Str">My Package</Property>
				<Property Name="PKG_displayVersion" Type="Str"></Property>
				<Property Name="PKG_feedDescription" Type="Str"></Property>
				<Property Name="PKG_feedName" Type="Str"></Property>
				<Property Name="PKG_homepage" Type="Str"></Property>
				<Property Name="PKG_hostname" Type="Str"></Property>
				<Property Name="PKG_maintainer" Type="Str">Kreiseder IT Services e.U. &lt;&gt;</Property>
				<Property Name="PKG_output" Type="Path">../builds/NI_AB_PROJECTNAME/Pkg/Package</Property>
				<Property Name="PKG_output.Type" Type="Str">relativeToCommon</Property>
				<Property Name="PKG_packageName" Type="Str">summit-pxi-bodeplot</Property>
				<Property Name="PKG_publishToSystemLink" Type="Bool">false</Property>
				<Property Name="PKG_section" Type="Str">Application Software</Property>
				<Property Name="PKG_shortcuts.Count" Type="Int">1</Property>
				<Property Name="PKG_shortcuts[0].Destination" Type="Str">root_8</Property>
				<Property Name="PKG_shortcuts[0].Name" Type="Str">LabVIEWBodeplotSummit</Property>
				<Property Name="PKG_shortcuts[0].Path" Type="Path">Summit PXI Bodeplot</Property>
				<Property Name="PKG_shortcuts[0].Target.Child" Type="Str">{7851922C-B20F-4342-B6EC-7DFAAD624B47}</Property>
				<Property Name="PKG_shortcuts[0].Target.Destination" Type="Str">{D090872F-212C-4193-8981-C3F75588B46E}</Property>
				<Property Name="PKG_shortcuts[0].Target.Source" Type="Ref">/My Computer/Build Specifications/LabVIEW Bodeplot Summit</Property>
				<Property Name="PKG_shortcuts[0].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_sources.Count" Type="Int">1</Property>
				<Property Name="PKG_sources[0].Destination" Type="Str">{D090872F-212C-4193-8981-C3F75588B46E}</Property>
				<Property Name="PKG_sources[0].ID" Type="Ref">/My Computer/Build Specifications/LabVIEW Bodeplot Summit</Property>
				<Property Name="PKG_sources[0].Type" Type="Str">EXE Build</Property>
				<Property Name="PKG_synopsis" Type="Str">Summit PXI Bodeplot</Property>
				<Property Name="PKG_version" Type="Str">1.0.0</Property>
			</Item>
		</Item>
	</Item>
</Project>
