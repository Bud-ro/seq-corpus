<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
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
		<Item Name="Common" Type="Folder">
			<Item Name="Typedefs" Type="Folder">
				<Item Name="Execution Options - Measure.ctl" Type="VI" URL="../Common/Typedefs/Execution Options - Measure.ctl"/>
			</Item>
			<Item Name="Calculate Acquisition Time.vi" Type="VI" URL="../Common/Calculate Acquisition Time.vi"/>
			<Item Name="Import Hardware Config.vi" Type="VI" URL="../Common/Import Hardware Config.vi"/>
			<Item Name="Verify if the Global Ch Exist.vi" Type="VI" URL="../Common/Verify if the Global Ch Exist.vi"/>
			<Item Name="Error Builder.vi" Type="VI" URL="../Common/Error Builder.vi"/>
		</Item>
		<Item Name="Power Supply Source and Measure" Type="Folder">
			<Item Name="DAQ_Power Supply Source and Measure.lvlib" Type="Library" URL="../Power Supply Source and Measure/DAQ_Power Supply Source and Measure.lvlib"/>
		</Item>
		<Item Name="DC Voltage Generation" Type="Folder">
			<Item Name="DAQ_DC Voltage Generation.lvlib" Type="Library" URL="../DC Voltage Generation/DAQ_DC Voltage Generation.lvlib"/>
		</Item>
		<Item Name="DC-RMS Voltage Measurement" Type="Folder">
			<Item Name="DAQ_DC-RMS Voltage Measurement.lvlib" Type="Library" URL="../DC-RMS Voltage Measurement/DAQ_DC-RMS Voltage Measurement.lvlib"/>
			<Item Name="DMM_DC-RMS Voltage Measurement.lvlib" Type="Library" URL="../DMM_DC-RMS Voltage Measurement/DMM_DC-RMS Voltage Measurement.lvlib"/>
		</Item>
		<Item Name="DC-RMS Current Measurement" Type="Folder">
			<Item Name="DAQ_DC-RMS Current Measurement.lvlib" Type="Library" URL="../DC-RMS Current Measurement/DAQ_DC-RMS Current Measurement.lvlib"/>
			<Item Name="DMM_DC-RMS Current Measurement.lvlib" Type="Library" URL="../DMM_DC-RMS Current Measurement/DMM_DC-RMS Current Measurement.lvlib"/>
		</Item>
		<Item Name="Signal Voltage Generation" Type="Folder">
			<Item Name="DAQ_Signal Voltage Generation.lvlib" Type="Library" URL="../Signal Voltage Generation/DAQ_Signal Voltage Generation.lvlib"/>
		</Item>
		<Item Name="Time Domain Measurement" Type="Folder">
			<Item Name="DAQ_Time Domain Measurement.lvlib" Type="Library" URL="../Time Domain Measurement/DAQ_Time Domain Measurement.lvlib"/>
		</Item>
		<Item Name="Frequency Domain Measurement" Type="Folder">
			<Item Name="DAQ_Frequency Domain Measurement.lvlib" Type="Library" URL="../Frequency Domain Measurement/DAQ_Frequency Domain Measurement.lvlib"/>
			<Item Name="DMM_Frequency Domain Measurement.lvlib" Type="Library" URL="../DMM_Frequency Domain Measurement/DMM_Frequency Domain Measurement.lvlib"/>
		</Item>
		<Item Name="Static Digital State Generation" Type="Folder">
			<Item Name="DAQ_Static Digital State Generation.lvlib" Type="Library" URL="../Static Digital State Generation/DAQ_Static Digital State Generation.lvlib"/>
		</Item>
		<Item Name="Static Digital State Measurement" Type="Folder">
			<Item Name="DAQ_Static Digital State Measurement.lvlib" Type="Library" URL="../Static Digital State Measurement/DAQ_Static Digital State Measurement.lvlib"/>
		</Item>
		<Item Name="Static Digital Path Generation" Type="Folder">
			<Item Name="Switch_Static Digital Path Generation.lvlib" Type="Library" URL="../Static Digital Path Generation/Switch_Static Digital Path Generation.lvlib"/>
		</Item>
		<Item Name="Dynamic Digital Pattern Generation" Type="Folder">
			<Item Name="DAQ_Dynamic Digital Pattern Generation.lvlib" Type="Library" URL="../Dynamic Digital Pattern Generation/DAQ_Dynamic Digital Pattern Generation.lvlib"/>
		</Item>
		<Item Name="Dynamic Digital Pattern Measurement" Type="Folder">
			<Item Name="DAQ_Dynamic Digital Pattern Measurement.lvlib" Type="Library" URL="../Dynamic Digital Pattern Measurement/DAQ_Dynamic Digital Pattern Measurement.lvlib"/>
		</Item>
		<Item Name="Digital Clock Generation" Type="Folder">
			<Item Name="DAQ_Digital Clock Generation.lvlib" Type="Library" URL="../Digital Clock Generation/DAQ_Digital Clock Generation.lvlib"/>
		</Item>
		<Item Name="Digital Pulse Generation" Type="Folder">
			<Item Name="DAQ_Digital Pulse Generation.lvlib" Type="Library" URL="../Digital Pulse Generation/DAQ_Digital Pulse Generation.lvlib"/>
		</Item>
		<Item Name="Digital Frequency Measurement" Type="Folder">
			<Item Name="DAQ_Digital Frequency Measurement.lvlib" Type="Library" URL="../Digital Frequency Measurement/DAQ_Digital Frequency Measurement.lvlib"/>
		</Item>
		<Item Name="Digital PWM Measurement" Type="Folder">
			<Item Name="DAQ_Digital PWM Measurement.lvlib" Type="Library" URL="../Digital PWM Measurement/DAQ_Digital PWM Measurement.lvlib"/>
		</Item>
		<Item Name="Digital Edge Count Measurement" Type="Folder">
			<Item Name="DAQ_Digital Edge Count Measurement.lvlib" Type="Library" URL="../Digital Edge Count Measurement/DAQ_Digital Edge Count Measurement.lvlib"/>
		</Item>
		<Item Name="Communication" Type="Folder">
			<Item Name="Communication.lvlib" Type="Library" URL="../Communication/Communication.lvlib"/>
		</Item>
		<Item Name="Synchronization" Type="Folder">
			<Item Name="DAQ_Synchronization.lvlib" Type="Library" URL="../Synchronization/DAQ_Synchronization.lvlib"/>
		</Item>
		<Item Name="Resistance Measurement" Type="Folder">
			<Item Name="DMM_Resistance Measurement.lvlib" Type="Library" URL="../DMM_Resistance Measurement/DMM_Resistance Measurement.lvlib"/>
		</Item>
		<Item Name="Temperature Thermistor Measurement" Type="Folder">
			<Item Name="DAQ_Temperature Thermistor Measurement.lvlib" Type="Library" URL="../Temperature Thermistor Measurement/DAQ_Temperature Thermistor Measurement.lvlib"/>
		</Item>
		<Item Name="Temperature RTD Measurement" Type="Folder">
			<Item Name="DAQ_Temperature RTD Measurement.lvlib" Type="Library" URL="../Temperature RTD Measurement/DAQ_Temperature RTD Measurement.lvlib"/>
		</Item>
		<Item Name="Temperature Thermocouple Measurement" Type="Folder">
			<Item Name="DAQ_Temperature Thermocouple Measurement.lvlib" Type="Library" URL="../Temperature Thermocouple Measurement/DAQ_Temperature Thermocouple Measurement.lvlib"/>
		</Item>
		<Item Name="DMM SCAN" Type="Folder">
			<Item Name="DMM_Scan PXI Mux PXI Shunt 16V-15C.lvlib" Type="Library" URL="../DMM SCAN PMPS 16V-15C/DMM_Scan PXI Mux PXI Shunt 16V-15C.lvlib"/>
			<Item Name="DMM_Scan PXI RLY Driver 32V-16C.lvlib" Type="Library" URL="../DMM SCAN PRD 32V-16C/DMM_Scan PXI RLY Driver 32V-16C.lvlib"/>
			<Item Name="DMM_Scan DAQ Ext RLY.lvlib" Type="Library" URL="../DMM SCAN DER/DMM_Scan DAQ Ext RLY.lvlib"/>
			<Item Name="DMM_Mixed Measurement.lvlib" Type="Library" URL="../DMM Mixed Measurements/DMM_Mixed Measurement.lvlib"/>
		</Item>
		<Item Name="PC Based Examples" Type="Folder">
			<Item Name="PC_AO to DCCM no trigger_Current.vi" Type="VI" URL="../PC Based Examples/PC_AO to DCCM no trigger_Current.vi"/>
			<Item Name="PC_AO_Thermistor Temperature.vi" Type="VI" URL="../PC Based Examples/PC_AO_Thermistor Temperature.vi"/>
			<Item Name="PC_DCG to DECM HW timed DAQ1 to DAQ2.vi" Type="VI" URL="../PC Based Examples/PC_DCG to DECM HW timed DAQ1 to DAQ2.vi"/>
			<Item Name="PC_DCG to DECM HW timed.vi" Type="VI" URL="../PC Based Examples/PC_DCG to DECM HW timed.vi"/>
			<Item Name="PC_DCG to DFM.vi" Type="VI" URL="../PC Based Examples/PC_DCG to DFM.vi"/>
			<Item Name="PC_DCG to DPWMM DAQ1 to DAQ2.vi" Type="VI" URL="../PC Based Examples/PC_DCG to DPWMM DAQ1 to DAQ2.vi"/>
			<Item Name="PC_DCG to DPWMM.vi" Type="VI" URL="../PC Based Examples/PC_DCG to DPWMM.vi"/>
			<Item Name="PC_DCG_Single.vi" Type="VI" URL="../PC Based Examples/PC_DCG_Single.vi"/>
			<Item Name="PC_DDPG to DDPM DAQ1 to DAQ2.vi" Type="VI" URL="../PC Based Examples/PC_DDPG to DDPM DAQ1 to DAQ2.vi"/>
			<Item Name="PC_DDPG to DDPM two lines or ports same DAQ.vi" Type="VI" URL="../PC Based Examples/PC_DDPG to DDPM two lines or ports same DAQ.vi"/>
			<Item Name="PC_DFM_Single.vi" Type="VI" URL="../PC Based Examples/PC_DFM_Single.vi"/>
			<Item Name="PC_DPG to DECM.vi" Type="VI" URL="../PC Based Examples/PC_DPG to DECM.vi"/>
			<Item Name="PC_DPG to DPWMM.vi" Type="VI" URL="../PC Based Examples/PC_DPG to DPWMM.vi"/>
			<Item Name="PC_DRVG to DRVM multiple channels no trigger.vi" Type="VI" URL="../PC Based Examples/PC_DRVG to DRVM multiple channels no trigger.vi"/>
			<Item Name="PC_SDSG to SDSM.vi" Type="VI" URL="../PC Based Examples/PC_SDSG to SDSM.vi"/>
			<Item Name="PC_SVG DAQ1 to TDVM DAQ2 RSS.vi" Type="VI" URL="../PC Based Examples/PC_SVG DAQ1 to TDVM DAQ2 RSS.vi"/>
			<Item Name="PC_SVG to DC-RMSM no trigger.vi" Type="VI" URL="../PC Based Examples/PC_SVG to DC-RMSM no trigger.vi"/>
			<Item Name="PC_SVG to FDVM with trigger.vi" Type="VI" URL="../PC Based Examples/PC_SVG to FDVM with trigger.vi"/>
			<Item Name="PC_SVG to TDVM with trigger.vi" Type="VI" URL="../PC Based Examples/PC_SVG to TDVM with trigger.vi"/>
			<Item Name="PC_SVG_Single.vi" Type="VI" URL="../PC Based Examples/PC_SVG_Single.vi"/>
			<Item Name="PC_TDVM_Single.vi" Type="VI" URL="../PC Based Examples/PC_TDVM_Single.vi"/>
		</Item>
		<Item Name="DMM Examples" Type="Folder">
			<Item Name="Channel Topology Mapping Tester Tool.vi" Type="VI" URL="../DMM Examples/Channel Topology Mapping Tester Tool.vi"/>
			<Item Name="DMM DCCM Configure and Measure Only in a Loop.vi" Type="VI" URL="../DMM Examples/DMM DCCM Configure and Measure Only in a Loop.vi"/>
			<Item Name="DMM DCVM Configure and Measure Only in a Loop.vi" Type="VI" URL="../DMM Examples/DMM DCVM Configure and Measure Only in a Loop.vi"/>
			<Item Name="DMM DCVM Immediate Trigger Delay.vi" Type="VI" URL="../DMM Examples/DMM DCVM Immediate Trigger Delay.vi"/>
			<Item Name="DMM DCVM TTL0 PXI HW Trigger Delay.vi" Type="VI" URL="../DMM Examples/DMM DCVM TTL0 PXI HW Trigger Delay.vi"/>
			<Item Name="DMM FDVM Frequency_Period Individual.vi" Type="VI" URL="../DMM Examples/DMM FDVM Frequency_Period Individual.vi"/>
			<Item Name="DMM RM Resistance 2W_4W Individual.vi" Type="VI" URL="../DMM Examples/DMM RM Resistance 2W_4W Individual.vi"/>
			<Item Name="DMM Simple Mixed Measurement.vi" Type="VI" URL="../DMM Examples/DMM Simple Mixed Measurement.vi"/>
			<Item Name="Full DMM Scan DER - 2 SCANs.vi" Type="VI" URL="../DMM Examples/Full DMM Scan DER - 2 SCANs.vi"/>
			<Item Name="Full DMM SCAN PMPS 16V-15C - 2 SCANs.vi" Type="VI" URL="../DMM Examples/Full DMM SCAN PMPS 16V-15C - 2 SCANs.vi"/>
			<Item Name="Full DMM Scan PRD 32 - 2 SCANs.vi" Type="VI" URL="../DMM Examples/Full DMM Scan PRD 32 - 2 SCANs.vi"/>
			<Item Name="Simple DMM SCAN DER - Loop.vi" Type="VI" URL="../DMM Examples/Simple DMM SCAN DER - Loop.vi"/>
			<Item Name="Simple DMM SCAN PMPS 16V-15C - Loop.vi" Type="VI" URL="../DMM Examples/Simple DMM SCAN PMPS 16V-15C - Loop.vi"/>
			<Item Name="Simple DMM Scan PRD 32 - Loop.vi" Type="VI" URL="../DMM Examples/Simple DMM Scan PRD 32 - Loop.vi"/>
			<Item Name="SWITCH Digital Path Generation Cases Individual.vi" Type="VI" URL="../DMM Examples/SWITCH Digital Path Generation Cases Individual.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (Power).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (Power).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Start Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Trigger.vi"/>
				<Item Name="DAQmx Unflatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Unflatten Channel String.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Waveform Scale and Offset.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Scale and Offset.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Append Digital Signals.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Append Digital Signals.vi"/>
				<Item Name="DWDT Append Digital Signals.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Append Digital Signals.vi"/>
				<Item Name="DWDT Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Error Code.vi"/>
				<Item Name="DTbl Append Digital Signals.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Append Digital Signals.vi"/>
				<Item Name="Append Compressed Data.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/Append Compressed Data.vi"/>
				<Item Name="Adjust Data.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/Adjust Data.vi"/>
				<Item Name="Create Index.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/Create Index.vi"/>
				<Item Name="Append UnCompressed Data.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/Append UnCompressed Data.vi"/>
				<Item Name="Append Waveform Attributes.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/Append Waveform Attributes.vi"/>
				<Item Name="ni845xControl.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xControl.ctl"/>
				<Item Name="NI-845x I2C Create Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Create Configuration Reference.vi"/>
				<Item Name="NI-845x I2C Write Read.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Write Read.vi"/>
				<Item Name="NI-845x Close Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x Close Reference.vi"/>
				<Item Name="NI-845x SPI Close Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x SPI Close Configuration Reference.vi"/>
				<Item Name="NI-845x I2C Close Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Close Configuration Reference.vi"/>
				<Item Name="NI-845x I2C Write.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Write.vi"/>
				<Item Name="NI-845x SPI Create Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x SPI Create Configuration Reference.vi"/>
				<Item Name="NI-845x SPI Write Read.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x SPI Write Read.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="DAQmx Control Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Control Task.vi"/>
				<Item Name="ni845xI2cConfiguration.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xI2cConfiguration.ctl"/>
				<Item Name="NI-845x Fill in Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x Fill in Error Info.vi"/>
				<Item Name="NI-845x Close Device Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x Close Device Reference.vi"/>
				<Item Name="ni845xSpiConfiguration.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xSpiConfiguration.ctl"/>
				<Item Name="NI-845x SPI Close Script Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x SPI Close Script Reference.vi"/>
				<Item Name="ni845xSpiScriptControl.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xSpiScriptControl.ctl"/>
				<Item Name="NI-845x I2C Close Script Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Close Script Reference.vi"/>
				<Item Name="ni845xI2cScriptControl.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xI2cScriptControl.ctl"/>
				<Item Name="NI-845x SPI Stream Close Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x SPI Stream Close Configuration Reference.vi"/>
				<Item Name="ni845xSpiStreamConfiguration.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xSpiStreamConfiguration.ctl"/>
				<Item Name="NI-845x I2C Slave Close Configuration Reference.vi" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/NI-845x I2C Slave Close Configuration Reference.vi"/>
				<Item Name="ni845xI2cSlaveConfiguration.ctl" Type="VI" URL="/&lt;vilib&gt;/ni845x/ni845x.llb/ni845xI2cSlaveConfiguration.ctl"/>
				<Item Name="DAQmx Wait Until Done.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Wait Until Done.vi"/>
				<Item Name="DAQmx Export Signal.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/events/hardwareSignals.llb/DAQmx Export Signal.vi"/>
				<Item Name="DAQmx Export Signal (Most Signals).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/events/hardwareSignals.llb/DAQmx Export Signal (Most Signals).vi"/>
				<Item Name="Digital to Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Digital to Boolean Array.vi"/>
				<Item Name="DWDT Digital to Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital to Boolean Array.vi"/>
				<Item Name="DTbl Digital to Boolean Array.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital to Boolean Array.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Charge).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Power 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Power 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Power Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Power Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Start Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (None).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Advance Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (None).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Advance Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (None).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Start Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Start Trigger (Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Time).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Multi Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Multi Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Multi Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Multi Edge).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
			</Item>
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niDMM Trigger.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Trigger.ctl"/>
				<Item Name="niDMM Slope.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Slope.ctl"/>
				<Item Name="niDMM Resolution in Digits.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Resolution in Digits.ctl"/>
				<Item Name="niDMM Function.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Function.ctl"/>
				<Item Name="niDMM Powerline Frequency.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Powerline Frequency.ctl"/>
				<Item Name="niDMM Configure Powerline Frequency.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Powerline Frequency.vi"/>
				<Item Name="niDMM Powerline Frequency To IVI Constant.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Powerline Frequency To IVI Constant.vi"/>
				<Item Name="niDMM IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM IVI Error Converter.vi"/>
				<Item Name="niDMM Configure AC Bandwidth.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure AC Bandwidth.vi"/>
				<Item Name="niDMM Configure Frequency Voltage Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Frequency Voltage Range.vi"/>
				<Item Name="niDMM Configure Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Trigger.vi"/>
				<Item Name="niDMM Trigger Source To IVI Constant.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Trigger Source To IVI Constant.vi"/>
				<Item Name="niDMM Configure Trigger Slope.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Trigger Slope.vi"/>
				<Item Name="niDMM Slope To IVI Constant.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Slope To IVI Constant.vi"/>
				<Item Name="niDMM Read.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Read.vi"/>
				<Item Name="niDMM Is Over Range.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Is Over Range.vi"/>
				<Item Name="niDMM Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Close.vi"/>
				<Item Name="niDMM Function To IVI Constant.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Function To IVI Constant.vi"/>
				<Item Name="niDMM Configure Measurement Absolute.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Measurement Absolute.vi"/>
				<Item Name="niDMM Configure Measurement Digits.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Configure Measurement Digits.vi"/>
				<Item Name="niDMM Config Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Config Measurement.vi"/>
				<Item Name="niDMM Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Initialize.vi"/>
				<Item Name="niSwitch Topologies.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Topologies.ctl"/>
				<Item Name="niSwitch Initialize With Topology.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Initialize With Topology.vi"/>
				<Item Name="niSwitch Disconnect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect Channels.vi"/>
				<Item Name="niSwitch Disconnect Channels (Single).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect Channels (Single).vi"/>
				<Item Name="niSwitch IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch IVI Error Converter.vi"/>
				<Item Name="niSwitch Disconnect Channels (Multiple).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect Channels (Multiple).vi"/>
				<Item Name="niSwitch Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels.vi"/>
				<Item Name="niSwitch Connect Channels (Single).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Single).vi"/>
				<Item Name="niSwitch Connect Channels (Multiple).vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Connect Channels (Multiple).vi"/>
				<Item Name="niSwitch Wait For Debounce.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Wait For Debounce.vi"/>
				<Item Name="niSwitch Disconnect All Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Disconnect All Channels.vi"/>
				<Item Name="niSwitch Close.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Close.vi"/>
				<Item Name="niSwitch Can Connect Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Can Connect Channels.vi"/>
				<Item Name="niSwitch Path Capability.ctl" Type="VI" URL="/&lt;instrlib&gt;/niSwitch/niSwitch.llb/niSwitch Path Capability.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="ni845x.dll" Type="Document" URL="ni845x.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nidmm_32.dll" Type="Document" URL="nidmm_32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niswitch_32.dll" Type="Document" URL="niswitch_32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
