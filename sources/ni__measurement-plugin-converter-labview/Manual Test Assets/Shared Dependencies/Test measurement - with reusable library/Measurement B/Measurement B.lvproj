<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
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
		<Item Name="controls" Type="Folder">
			<Item Name="Measurement Inputs.ctl" Type="VI" URL="../controls/Measurement Inputs.ctl"/>
			<Item Name="Offset value.ctl" Type="VI" URL="../controls/Offset value.ctl"/>
		</Item>
		<Item Name="Reusables" Type="Folder">
			<Item Name="Reusables.lvlib" Type="Library" URL="../../Reusables/Reusables.lvlib"/>
		</Item>
		<Item Name="subVIs" Type="Folder">
			<Item Name="Computation.vi" Type="VI" URL="../subVIs/Computation.vi"/>
		</Item>
		<Item Name="Measurement B.vi" Type="VI" URL="../Measurement B.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
