<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
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
		<Item Name="RTT Automation" Type="Folder">
			<Item Name="SeqBuilder" Type="Folder">
				<Item Name="Ctls" Type="Folder">
					<Item Name="dotNetAssemblyInfo.ctl" Type="VI" URL="../SeqBuilder/Ctls/dotNetAssemblyInfo.ctl"/>
					<Item Name="SeqStepTypeDef.ctl" Type="VI" URL="../SeqBuilder/Ctls/SeqStepTypeDef.ctl"/>
					<Item Name="TestSeqTypeDef.ctl" Type="VI" URL="../SeqBuilder/Ctls/TestSeqTypeDef.ctl"/>
					<Item Name="VSModulesTokens.ctl" Type="VI" URL="../SeqBuilder/Ctls/VSModulesTokens.ctl"/>
					<Item Name="VSModuleTokens.ctl" Type="VI" URL="../SeqBuilder/Ctls/VSModuleTokens.ctl"/>
				</Item>
				<Item Name="SubVIs" Type="Folder">
					<Item Name="closeDotNetStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/closeDotNetStep.vi"/>
					<Item Name="closeTestStandEngine.vi" Type="VI" URL="../SeqBuilder/SubVIs/closeTestStandEngine.vi"/>
					<Item Name="closeTestStandStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/closeTestStandStep.vi"/>
					<Item Name="configDotNetMember(arrayParam).vi" Type="VI" URL="../SeqBuilder/SubVIs/configDotNetMember(arrayParam).vi"/>
					<Item Name="configDotNetMember.vi" Type="VI" URL="../SeqBuilder/SubVIs/configDotNetMember.vi"/>
					<Item Name="configLVModule.vi" Type="VI" URL="../SeqBuilder/SubVIs/configLVModule.vi"/>
					<Item Name="configureTSstepProperties.vi" Type="VI" URL="../SeqBuilder/SubVIs/configureTSstepProperties.vi"/>
					<Item Name="DD_CloseRef_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/DD_CloseRef_TS_Step.vi"/>
					<Item Name="DD_ExportChann_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/DD_ExportChann_TS_Step.vi"/>
					<Item Name="DD_ImportChann_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/DD_ImportChann_TS_Step.vi"/>
					<Item Name="DD_OpenRef_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/DD_OpenRef_TS_Step.vi"/>
					<Item Name="DD_RunScript_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/DD_RunScript_TS_Step.vi"/>
					<Item Name="insertTestStandStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/insertTestStandStep.vi"/>
					<Item Name="loadDotNetMember.vi" Type="VI" URL="../SeqBuilder/SubVIs/loadDotNetMember.vi"/>
					<Item Name="loadLVModule.vi" Type="VI" URL="../SeqBuilder/SubVIs/loadLVModule.vi"/>
					<Item Name="LV_GetVSLogs_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/LV_GetVSLogs_TS_Step.vi"/>
					<Item Name="newDDreference.vi" Type="VI" URL="../SeqBuilder/SubVIs/newDDreference.vi"/>
					<Item Name="newDotNetStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/newDotNetStep.vi"/>
					<Item Name="newLVstep.vi" Type="VI" URL="../SeqBuilder/SubVIs/newLVstep.vi"/>
					<Item Name="newTestStandCustomType.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandCustomType.vi"/>
					<Item Name="newTestStandGlobalVariable.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandGlobalVariable.vi"/>
					<Item Name="newTestStandLimitStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandLimitStep.vi"/>
					<Item Name="newTestStandNumVariable.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandNumVariable.vi"/>
					<Item Name="newTestStandObjRef.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandObjRef.vi"/>
					<Item Name="newTestStandPassFailStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandPassFailStep.vi"/>
					<Item Name="newTestStandSeq.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandSeq.vi"/>
					<Item Name="newTestStandStep.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandStep.vi"/>
					<Item Name="newTestStandStringVariable.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandStringVariable.vi"/>
					<Item Name="newTestStandVariable.vi" Type="VI" URL="../SeqBuilder/SubVIs/newTestStandVariable.vi"/>
					<Item Name="saveTestSTandSeq.vi" Type="VI" URL="../SeqBuilder/SubVIs/saveTestSTandSeq.vi"/>
					<Item Name="StimProfilePathBuilder.vi" Type="VI" URL="../SeqBuilder/SubVIs/StimProfilePathBuilder.vi"/>
					<Item Name="VS_GetStimProfileState_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/VS_GetStimProfileState_TS_Step.vi"/>
					<Item Name="VS_SetSingleChannel_TS_Step.vi" Type="VI" URL="../SeqBuilder/SubVIs/VS_SetSingleChannel_TS_Step.vi"/>
					<Item Name="writeTSVariable(string).vi" Type="VI" URL="../SeqBuilder/SubVIs/writeTSVariable(string).vi"/>
				</Item>
				<Item Name="LV_stepTemplate.vit" Type="VI" URL="../SeqBuilder/LV_stepTemplate.vit"/>
				<Item Name="TS_CallExecutable.vi" Type="VI" URL="../SeqBuilder/TS_CallExecutable.vi"/>
				<Item Name="TS_DoWhile.vi" Type="VI" URL="../SeqBuilder/TS_DoWhile.vi"/>
				<Item Name="TS_End.vi" Type="VI" URL="../SeqBuilder/TS_End.vi"/>
				<Item Name="TS_Label.vi" Type="VI" URL="../SeqBuilder/TS_Label.vi"/>
				<Item Name="TS_stepTemplate.vit" Type="VI" URL="../SeqBuilder/TS_stepTemplate.vit"/>
				<Item Name="TS_Wait.vi" Type="VI" URL="../SeqBuilder/TS_Wait.vi"/>
				<Item Name="VS_CheckStimState.vi" Type="VI" URL="../SeqBuilder/VS_CheckStimState.vi"/>
				<Item Name="VS_CloseProject.vi" Type="VI" URL="../SeqBuilder/VS_CloseProject.vi"/>
				<Item Name="VS_DeployAndConnect.vi" Type="VI" URL="../SeqBuilder/VS_DeployAndConnect.vi"/>
				<Item Name="VS_OpenInterface.vi" Type="VI" URL="../SeqBuilder/VS_OpenInterface.vi"/>
				<Item Name="VS_OpenModelMngRef.vi" Type="VI" URL="../SeqBuilder/VS_OpenModelMngRef.vi"/>
				<Item Name="VS_OpenProjectRef.vi" Type="VI" URL="../SeqBuilder/VS_OpenProjectRef.vi"/>
				<Item Name="VS_OpenStimProfileMngRef.vi" Type="VI" URL="../SeqBuilder/VS_OpenStimProfileMngRef.vi"/>
				<Item Name="VS_OpenWorkspace.vi" Type="VI" URL="../SeqBuilder/VS_OpenWorkspace.vi"/>
				<Item Name="VS_OpenWorkspaceMngrRef.vi" Type="VI" URL="../SeqBuilder/VS_OpenWorkspaceMngrRef.vi"/>
				<Item Name="VS_Quit.vi" Type="VI" URL="../SeqBuilder/VS_Quit.vi"/>
				<Item Name="VS_RunStimulusProfile.vi" Type="VI" URL="../SeqBuilder/VS_RunStimulusProfile.vi"/>
				<Item Name="VS_SetMultipleParameters.vi" Type="VI" URL="../SeqBuilder/VS_SetMultipleParameters.vi"/>
				<Item Name="VS_stepTemplate.vit" Type="VI" URL="../SeqBuilder/VS_stepTemplate.vit"/>
				<Item Name="VS_UndeployProject.vi" Type="VI" URL="../SeqBuilder/VS_UndeployProject.vi"/>
				<Item Name="VS_UpdateParamFromFile.vi" Type="VI" URL="../SeqBuilder/VS_UpdateParamFromFile.vi"/>
			</Item>
			<Item Name="SubVIs" Type="Folder">
				<Item Name="addTagToTree.vi" Type="VI" URL="../SubVIs/addTagToTree.vi"/>
				<Item Name="addTestProc.vi" Type="VI" URL="../SubVIs/addTestProc.vi"/>
				<Item Name="CheckIfDirty.vi" Type="VI" URL="../SubVIs/CheckIfDirty.vi"/>
				<Item Name="checkIfFilesExist.vi" Type="VI" URL="../SubVIs/checkIfFilesExist.vi"/>
				<Item Name="Config cluster.ctl" Type="VI" URL="../SubVIs/Config cluster.ctl"/>
				<Item Name="deleteTagfromTree.vi" Type="VI" URL="../SubVIs/deleteTagfromTree.vi"/>
				<Item Name="DialogPrompt.vi" Type="VI" URL="../SubVIs/DialogPrompt.vi"/>
				<Item Name="DisplayExecutionCallback.vi" Type="VI" URL="../SubVIs/DisplayExecutionCallback.vi"/>
				<Item Name="DisplaySequenceCallback.vi" Type="VI" URL="../SubVIs/DisplaySequenceCallback.vi"/>
				<Item Name="editTreeElement(Proj).vi" Type="VI" URL="../SubVIs/editTreeElement(Proj).vi"/>
				<Item Name="editTreeElement(Req).vi" Type="VI" URL="../SubVIs/editTreeElement(Req).vi"/>
				<Item Name="FilePaths.ctl" Type="VI" URL="../SubVIs/FilePaths.ctl"/>
				<Item Name="getRequirements.vi" Type="VI" URL="../SubVIs/getRequirements.vi"/>
				<Item Name="getRequirementsDoc.vi" Type="VI" URL="../SubVIs/getRequirementsDoc.vi"/>
				<Item Name="GetStepNamesFromPath.vi" Type="VI" URL="../SubVIs/GetStepNamesFromPath.vi"/>
				<Item Name="Page_AddAnalysis.vi" Type="VI" URL="../SubVIs/Page_AddAnalysis.vi"/>
				<Item Name="Page_AddCalSet.vi" Type="VI" URL="../SubVIs/Page_AddCalSet.vi"/>
				<Item Name="Page_AddProject.vi" Type="VI" URL="../SubVIs/Page_AddProject.vi"/>
				<Item Name="Page_AddRequirements.vi" Type="VI" URL="../SubVIs/Page_AddRequirements.vi"/>
				<Item Name="Page_AddStim.vi" Type="VI" URL="../SubVIs/Page_AddStim.vi"/>
				<Item Name="Page_MissingFiles.vi" Type="VI" URL="../SubVIs/Page_MissingFiles.vi"/>
				<Item Name="Page_ReplaceProject.vi" Type="VI" URL="../SubVIs/Page_ReplaceProject.vi"/>
				<Item Name="ParamParser.vi" Type="VI" URL="../SubVIs/ParamParser.vi"/>
				<Item Name="ParseScriptArray2Steps.vi" Type="VI" URL="../SubVIs/ParseScriptArray2Steps.vi"/>
				<Item Name="ParseScriptForFile.vi" Type="VI" URL="../SubVIs/ParseScriptForFile.vi"/>
				<Item Name="Procedure_cluster.ctl" Type="VI" URL="../SubVIs/Procedure_cluster.ctl"/>
				<Item Name="Progress Bar.vi" Type="VI" URL="../SubVIs/Progress Bar.vi"/>
				<Item Name="Progress.vi" Type="VI" URL="../SubVIs/Progress.vi"/>
				<Item Name="PromptToSave.vi" Type="VI" URL="../SubVIs/PromptToSave.vi"/>
				<Item Name="recreateTree.vi" Type="VI" URL="../SubVIs/recreateTree.vi"/>
				<Item Name="Script_New.vi" Type="VI" URL="../SubVIs/Script_New.vi"/>
				<Item Name="Script_Open.vi" Type="VI" URL="../SubVIs/Script_Open.vi"/>
				<Item Name="Script_Save.vi" Type="VI" URL="../SubVIs/Script_Save.vi"/>
				<Item Name="ScriptStepTypeDef.ctl" Type="VI" URL="../SubVIs/ScriptStepTypeDef.ctl"/>
				<Item Name="SeqBuilder.vi" Type="VI" URL="../SubVIs/SeqBuilder.vi"/>
				<Item Name="SetMonitor.vi" Type="VI" URL="../SubVIs/SetMonitor.vi"/>
				<Item Name="setRightClickMenu.vi" Type="VI" URL="../SubVIs/setRightClickMenu.vi"/>
				<Item Name="StartExecutionCallback.vi" Type="VI" URL="../SubVIs/StartExecutionCallback.vi"/>
				<Item Name="StartExecutionCallback1.vi" Type="VI" URL="../SubVIs/StartExecutionCallback1.vi"/>
				<Item Name="TestComponents.ctl" Type="VI" URL="../SubVIs/TestComponents.ctl"/>
				<Item Name="treeInit.vi" Type="VI" URL="../SubVIs/treeInit.vi"/>
				<Item Name="TreeParser.vi" Type="VI" URL="../SubVIs/TreeParser.vi"/>
				<Item Name="TS_CloseReferences.vi" Type="VI" URL="../SubVIs/TS_CloseReferences.vi"/>
				<Item Name="TS_controls.ctl" Type="VI" URL="../SubVIs/TS_controls.ctl"/>
				<Item Name="TS_CustomUI_Init.vi" Type="VI" URL="../SubVIs/TS_CustomUI_Init.vi"/>
				<Item Name="TS_SeqBuilder.vi" Type="VI" URL="../SubVIs/TS_SeqBuilder.vi"/>
				<Item Name="TstBldr_AnalysisScripts.vi" Type="VI" URL="../SubVIs/TstBldr_AnalysisScripts.vi"/>
				<Item Name="TstBldr_Calibration.vi" Type="VI" URL="../SubVIs/TstBldr_Calibration.vi"/>
				<Item Name="TstBldr_CloseProject.vi" Type="VI" URL="../SubVIs/TstBldr_CloseProject.vi"/>
				<Item Name="TstBldr_InitVS_Sequence.vi" Type="VI" URL="../SubVIs/TstBldr_InitVS_Sequence.vi"/>
				<Item Name="TstBldr_Project.vi" Type="VI" URL="../SubVIs/TstBldr_Project.vi"/>
				<Item Name="TstBldr_StimulusProfile.vi" Type="VI" URL="../SubVIs/TstBldr_StimulusProfile.vi"/>
				<Item Name="UI_Pages.ctl" Type="VI" URL="../SubVIs/UI_Pages.ctl"/>
				<Item Name="VS_Function_versionX.vi" Type="VI" URL="../SubVIs/VS_Function_versionX.vi"/>
				<Item Name="VS_InitSteps.ctl" Type="VI" URL="../SubVIs/VS_InitSteps.ctl"/>
				<Item Name="vs_RunStimProfSteps.ctl" Type="VI" URL="../SubVIs/vs_RunStimProfSteps.ctl"/>
				<Item Name="vs_RunWorkspaceSteps.ctl" Type="VI" URL="../SubVIs/vs_RunWorkspaceSteps.ctl"/>
				<Item Name="vs_SetParamSteps.ctl" Type="VI" URL="../SubVIs/vs_SetParamSteps.ctl"/>
				<Item Name="vs_StopProjectSteps.ctl" Type="VI" URL="../SubVIs/vs_StopProjectSteps.ctl"/>
			</Item>
			<Item Name="Support Files" Type="Folder">
				<Item Name="Analysis.png" Type="Document" URL="../Support Files/Analysis.png"/>
				<Item Name="Calibration.png" Type="Document" URL="../Support Files/Calibration.png"/>
				<Item Name="condition.png" Type="Document" URL="../Support Files/condition.png"/>
				<Item Name="Configure.png" Type="Document" URL="../Support Files/Configure.png"/>
				<Item Name="Folder.png" Type="Document" URL="../Support Files/Folder.png"/>
				<Item Name="If_Stimulus.png" Type="Document" URL="../Support Files/If_Stimulus.png"/>
				<Item Name="Model.png" Type="Document" URL="../Support Files/Model.png"/>
				<Item Name="nonSilent.png" Type="Document" URL="../Support Files/nonSilent.png"/>
				<Item Name="Period.png" Type="Document" URL="../Support Files/Period.png"/>
				<Item Name="Procedure.png" Type="Document" URL="../Support Files/Procedure.png"/>
				<Item Name="Script.png" Type="Document" URL="../Support Files/Script.png"/>
				<Item Name="silent_Analysis.png" Type="Document" URL="../Support Files/silent_Analysis.png"/>
				<Item Name="silent_Analysis2.png" Type="Document" URL="../Support Files/silent_Analysis2.png"/>
				<Item Name="silent_Model.png" Type="Document" URL="../Support Files/silent_Model.png"/>
				<Item Name="Stimulus.png" Type="Document" URL="../Support Files/Stimulus.png"/>
				<Item Name="TestStand Library.lvlibp" Type="LVLibp" URL="../Support Files/TestStand Library.lvlibp">
					<Item Name="LastTDMSfile.vi" Type="VI" URL="../Support Files/TestStand Library.lvlibp/LastTDMSfile.vi"/>
					<Item Name="List Directory and LLBs.vi" Type="VI" URL="../Support Files/TestStand Library.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/List Directory and LLBs.vi"/>
					<Item Name="Recursive File List.vi" Type="VI" URL="../Support Files/TestStand Library.lvlibp/1abvi3w/vi.lib/Utility/libraryn.llb/Recursive File List.vi"/>
				</Item>
			</Item>
			<Item Name="RTT.ico" Type="Document" URL="../RTT.ico"/>
		</Item>
		<Item Name="RTTAutomation.vi" Type="VI" URL="../RTTAutomation.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="LVMinMaxIncTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMinMaxIncTypeDef.ctl"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="TestStand - Set TestStand Application Window.vi" Type="VI" URL="/&lt;vilib&gt;/addons/TestStand/_TSUISupport.llb/TestStand - Set TestStand Application Window.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="RTT Automation" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{619CBB9F-BE88-4FC4-99D9-F7EB5C706AF3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C52F9B24-3562-4B6B-A924-97BA466A88F2}</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{D85C071D-F940-4C48-A3AD-391A5D61BD3B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">RTT Automation</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Builds</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4818F293-0716-4261-8926-939F46EAA9A3}</Property>
				<Property Name="Destination[0].destName" Type="Str">RTT Automation.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Builds/RTT Automation.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Builds/Support Files</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/RTT Automation/RTT.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{3DBC96DD-2BA0-4145-BAD0-87721164B27A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/RTTAutomation.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">1</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/RTT Automation/Support Files</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">RTT Automation Demo.  
This application demonstrates the integration of different software platforms to create a tool that provides test continuity through the embedded development design process.</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">2</Property>
				<Property Name="TgtF_fileVersion.minor" Type="Int">1</Property>
				<Property Name="TgtF_internalName" Type="Str">RTT Automation Demo</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2010 NI</Property>
				<Property Name="TgtF_productName" Type="Str">RTT Automation</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{53F5F793-8574-4A9A-A763-3BE344CCDFC3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">RTT Automation.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
