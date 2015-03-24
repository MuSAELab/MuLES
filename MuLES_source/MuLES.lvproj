<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
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
		<Item Name="source_vi" Type="Folder" URL="../source_vi">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="languages" Type="Folder" URL="../languages">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="images" Type="Folder" URL="../images">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="eeg_files" Type="Folder" URL="../eeg_files">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="client_examples" Type="Folder" URL="../client_examples">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="config.ini" Type="Document" URL="../config.ini"/>
		<Item Name="REQUIREMENTS.txt" Type="Document" URL="../REQUIREMENTS.txt"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Property Name="NI.SortType" Type="Int">2</Property>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="__closeStorageFromObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__closeStorageFromObject.vi"/>
				<Item Name="__convertUtcTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__convertUtcTime.vi"/>
				<Item Name="__createXmlString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__createXmlString.vi"/>
				<Item Name="__getPropertyTypeObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/__getPropertyTypeObject.vi"/>
				<Item Name="__getPropertyTypeStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/__getPropertyTypeStorage.vi"/>
				<Item Name="__linkRefnumDefinitionObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__linkRefnumDefinitionObject.vi"/>
				<Item Name="__linkRefnumDefinitionStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__linkRefnumDefinitionStorage.vi"/>
				<Item Name="__loadFloat64Channel.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadFloat64Channel.vi"/>
				<Item Name="__loadInt32Channel.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadInt32Channel.vi"/>
				<Item Name="__loadPropEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropEnum.vi"/>
				<Item Name="__loadPropErrFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropErrFilter.vi"/>
				<Item Name="__loadPropFloat32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropFloat32.vi"/>
				<Item Name="__loadPropFloat64.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropFloat64.vi"/>
				<Item Name="__loadPropInt16.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropInt16.vi"/>
				<Item Name="__loadPropInt32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropInt32.vi"/>
				<Item Name="__loadPropRef.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropRef.vi"/>
				<Item Name="__loadPropRefList.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropRefList.vi"/>
				<Item Name="__loadPropString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropString.vi"/>
				<Item Name="__loadPropTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropTime.vi"/>
				<Item Name="__loadPropUInt8.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__loadPropUInt8.vi"/>
				<Item Name="__queryObjects.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__queryObjects.vi"/>
				<Item Name="__savePropEnum.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropEnum.vi"/>
				<Item Name="__savePropErrFilter.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropErrFilter.vi"/>
				<Item Name="__savePropFloat32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropFloat32.vi"/>
				<Item Name="__savePropFloat64.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropFloat64.vi"/>
				<Item Name="__savePropInt16.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropInt16.vi"/>
				<Item Name="__savePropInt32.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropInt32.vi"/>
				<Item Name="__savePropRef.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropRef.vi"/>
				<Item Name="__savePropRefList.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropRefList.vi"/>
				<Item Name="__savePropString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropString.vi"/>
				<Item Name="__savePropTime.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropTime.vi"/>
				<Item Name="__savePropUInt8.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__savePropUInt8.vi"/>
				<Item Name="__setErrSource.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/__setErrSource.vi"/>
				<Item Name="_closeDataStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_closeDataStorage.vi"/>
				<Item Name="_commitObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitObject.vi"/>
				<Item Name="_commitStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitStorage.vi"/>
				<Item Name="_commitTransaction.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_commitTransaction.vi"/>
				<Item Name="_createObject.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_createObject.vi"/>
				<Item Name="_findOpenStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_findOpenStorage.vi"/>
				<Item Name="_getChannelLength.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_getChannelLength.vi"/>
				<Item Name="_getObjDefByName.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getObjDefByName.vi"/>
				<Item Name="_getPluginListFromUsi.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_getPluginListFromUsi.vi"/>
				<Item Name="_getPropDefByName.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getPropDefByName.vi"/>
				<Item Name="_getPropertyType.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_getPropertyType.vi"/>
				<Item Name="_isTdmDataStructure.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_isTdmDataStructure.vi"/>
				<Item Name="_L_localizedStrings.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_L_localizedStrings.vi"/>
				<Item Name="_L_NodeNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_L_NodeNames.vi"/>
				<Item Name="_L_stringTable.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_L_stringTable.vi"/>
				<Item Name="_loadObjectDefinitions.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadObjectDefinitions.vi"/>
				<Item Name="_loadProperty.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadProperty.vi"/>
				<Item Name="_loadPropertyDefinitions.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_loadPropertyDefinitions.vi"/>
				<Item Name="_mapPropertyNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapPropertyNames.vi"/>
				<Item Name="_mapTdmObjectTypes.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapTdmObjectTypes.vi"/>
				<Item Name="_mapTdmPropertyNames.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_mapTdmPropertyNames.vi"/>
				<Item Name="_openDataStorage.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_openDataStorage.vi"/>
				<Item Name="_openFunction.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_openFunction.ctl"/>
				<Item Name="_openStorageWithRootNoPluginCheck.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_openStorageWithRootNoPluginCheck.vi"/>
				<Item Name="_openWithRoot.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_openWithRoot.vi"/>
				<Item Name="_saveProperty.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_saveProperty.vi"/>
				<Item Name="_sortStorageFormat.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/utility/_sortStorageFormat.vi"/>
				<Item Name="_stringsToBeTranslated.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/_stringsToBeTranslated.ctl"/>
				<Item Name="_TDM_DATA_MODEL.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/_TDM_DATA_MODEL.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Bluetooth Generate Error Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/Bluetooth.llb/Bluetooth Generate Error Cluster.vi"/>
				<Item Name="Bluetooth RFCOMM Service Discovery.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/Bluetooth.llb/Bluetooth RFCOMM Service Discovery.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="channel_count.ctl" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/Control Def/channel_count.ctl"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="dataModel.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/dataModel.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Emotiv Task.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Emotiv Toolkit/Emotiv Task.lvclass"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="gain_ADS1299.ctl" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/Control Def/gain_ADS1299.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get Object Info.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Object Info.vi"/>
				<Item Name="Get Property (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (DBL).vi"/>
				<Item Name="Get Property (Enum).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Enum).vi"/>
				<Item Name="Get Property (I16).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (I16).vi"/>
				<Item Name="Get Property (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (I32).vi"/>
				<Item Name="Get Property (SGL).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (SGL).vi"/>
				<Item Name="Get Property (Storage Refnum).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Storage Refnum).vi"/>
				<Item Name="Get Property (Storage Refnums).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Storage Refnums).vi"/>
				<Item Name="Get Property (String).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (String).vi"/>
				<Item Name="Get Property (Time Stamp).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (Time Stamp).vi"/>
				<Item Name="Get Property (U8).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property (U8).vi"/>
				<Item Name="Get Property Type.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/Get Property Type.vi"/>
				<Item Name="Get Property.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/Get Property.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Internecine Avoider.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/Internecine Avoider.vi"/>
				<Item Name="List DataPlugins.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/utility/List DataPlugins.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="NeuroSky Driver.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/LabVIEW - NeuroSky Driver/NeuroSky Driver.lvlib"/>
				<Item Name="NI_BMTK_common.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Biomedical/NI_BMTK_common.lvlib"/>
				<Item Name="NI_BMTK_FileIO.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Biomedical/NI_BMTK_FileIO.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_OSC.lvlib" Type="Library" URL="/&lt;vilib&gt;/NIOSC/NI_OSC.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="openbci_channel_count.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_channel_count.vi"/>
				<Item Name="openbci_close_cnx.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_close_cnx.vi"/>
				<Item Name="openbci_device.ctl" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/Control Def/openbci_device.ctl"/>
				<Item Name="openbci_eeg_order_8ch_16ch.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Support/openbci_eeg_order_8ch_16ch.vi"/>
				<Item Name="openbci_new_cnx.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_new_cnx.vi"/>
				<Item Name="openbci_parse_acc_data.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Support/openbci_parse_acc_data.vi"/>
				<Item Name="openbci_parse_eeg_data.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Support/openbci_parse_eeg_data.vi"/>
				<Item Name="openbci_read.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_read.vi"/>
				<Item Name="openbci_read_channel_settings.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_read_channel_settings.vi"/>
				<Item Name="openbci_read_registers.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_read_registers.vi"/>
				<Item Name="openbci_read_until_eot.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Support/openbci_read_until_eot.vi"/>
				<Item Name="openbci_reset_hw_32bit.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_reset_hw_32bit.vi"/>
				<Item Name="openbci_reset_register.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_reset_register.vi"/>
				<Item Name="openbci_start.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_start.vi"/>
				<Item Name="openbci_startup.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_startup.vi"/>
				<Item Name="openbci_stop.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/openbci_stop.vi"/>
				<Item Name="openbci_wait_w_error.vi" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Support/openbci_wait_w_error.vi"/>
				<Item Name="package_parts.ctl" Type="VI" URL="/&lt;vilib&gt;/OpenBCI/Comm Protocol/Control Def/package_parts.ctl"/>
				<Item Name="ParseXMLParams.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/lvStorage.llb/ParseXMLParams.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="specialProperties.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/specialProperties.ctl"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Task Type.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/Emotiv Toolkit/Utilities/Task Type.ctl"/>
				<Item Name="TCP Listen Internal List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen Internal List.vi"/>
				<Item Name="TCP Listen List Operations.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen List Operations.ctl"/>
				<Item Name="TCP Listen.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tcp.llb/TCP Listen.vi"/>
				<Item Name="thinkgear.dll" Type="Document" URL="/&lt;vilib&gt;/NI/_LabVIEW - NeuroSky Driver_internal_deps/thinkgear.dll"/>
				<Item Name="thinkgear.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/LabVIEW - NeuroSky Driver/thinkgear.lvlib"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="usiDataType.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_EditUserDefinedProperties/usiDataType.ctl"/>
				<Item Name="usiPluginInformation.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/utility/usiPluginInformation.ctl"/>
				<Item Name="usiPropDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/usiPropDef.ctl"/>
				<Item Name="usiTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/storage/Storage.llb/usiTypeDef.ctl"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="ascii_textfilter.vi" Type="VI" URL="../../../../../inrs/code/labview/test/edf_files_exe/EDF_for_Labview/EDF_for_Labview/EDFrecorder Labview 2011/ascii_textfilter.vi"/>
			<Item Name="lvStorage.dll" Type="Document" URL="lvStorage.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="MuLES_portable" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{AA23FAA7-FFA5-40D8-A957-47AC765A3DE3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{96619C8A-9921-4385-AB90-84B47CAC4986}</Property>
				<Property Name="App_INI_itemID" Type="Ref">/My Computer/source_vi/gui/various/mules.ini</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{01CE06F4-9E9B-4D6F-B545-4EC2E604789E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">MuLES_portable</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{58060354-9400-4D2A-9761-AA539898DD57}</Property>
				<Property Name="Bld_version.build" Type="Int">30</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Bld_version.minor" Type="Int">3</Property>
				<Property Name="Destination[0].destName" Type="Str">mules.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/mules.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/data</Property>
				<Property Name="Destination[2].destName" Type="Str">MuLES folder</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES</Property>
				<Property Name="Destination[3].destName" Type="Str">images</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/images</Property>
				<Property Name="Destination[4].destName" Type="Str">languages</Property>
				<Property Name="Destination[4].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/languages</Property>
				<Property Name="Destination[5].destName" Type="Str">eeg_files</Property>
				<Property Name="Destination[5].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/eeg_files</Property>
				<Property Name="Destination[6].destName" Type="Str">client_examples</Property>
				<Property Name="Destination[6].path" Type="Path">../builds/NI_AB_PROJECTNAME/MuLES/client_examples</Property>
				<Property Name="Destination[6].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">7</Property>
				<Property Name="Exe_cmdLineArgs" Type="Bool">true</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/source_vi/gui/various/MuLES_icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{96FC6FBF-7926-4979-B9F8-70E64C10D14C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/config.ini</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/images</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/languages</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="Source[5].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[5].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">5</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/eeg_files</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[6].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">6</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/client_examples</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">7</Property>
				<Property Name="TgtF_companyName" Type="Str">MuSAE Lab</Property>
				<Property Name="TgtF_fileDescription" Type="Str">MuSAE Lab EEG Server. Provides and interface between different EEG devices and applications</Property>
				<Property Name="TgtF_internalName" Type="Str">MuLES</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © Raymundo Cassani and Hubert Banville</Property>
				<Property Name="TgtF_productName" Type="Str">MuLES</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{56287559-D975-45BF-853A-304CF4A6B0CD}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">mules.exe</Property>
			</Item>
			<Item Name="MuLES_installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">MuSAE_Lab</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{B02012E6-1D99-4D5A-97ED-8F32279BCAE2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[0].unlock" Type="Bool">true</Property>
				<Property Name="Destination[1].name" Type="Str">MuLES</Property>
				<Property Name="Destination[1].parent" Type="Str">{B02012E6-1D99-4D5A-97ED-8F32279BCAE2}</Property>
				<Property Name="Destination[1].tag" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].unlock" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{FE82D7AF-0A22-40E8-B7A5-9D7615296BA6}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI USI 2.0.1</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{D1EDC484-7B17-11D7-83CE-00C0F03EBEBE}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{C0446EC0-D69F-44C3-B3AD-E04EA7FAE72B}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI LabVIEW Run-Time Engine 2013</Property>
				<Property Name="DistPart[1].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[0].productName" Type="Str">NI LabVIEW 2013 Run-Time Engine Non-English Support.</Property>
				<Property Name="DistPart[1].SoftDep[0].upgradeCode" Type="Str">{DDE96050-C9ED-4EAC-B310-5EA217776FEA}</Property>
				<Property Name="DistPart[1].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[1].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[1].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[1].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[2].productName" Type="Str">NI System Web Server 13.0</Property>
				<Property Name="DistPart[1].SoftDep[2].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[1].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[3].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[1].SoftDep[3].upgradeCode" Type="Str">{EA05DCF9-F239-4387-8904-04D678031F6B}</Property>
				<Property Name="DistPart[1].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[4].productName" Type="Str">NI Logos 5.5</Property>
				<Property Name="DistPart[1].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[1].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[5].productName" Type="Str">NI TDM Streaming 2.4</Property>
				<Property Name="DistPart[1].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[1].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[6].productName" Type="Str">NI LabVIEW 2013 Web Server</Property>
				<Property Name="DistPart[1].SoftDep[6].upgradeCode" Type="Str">{A66A5CC8-EEB5-4982-8B92-F591AF36060E}</Property>
				<Property Name="DistPart[1].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[7].productName" Type="Str">NI LabVIEW 2013 Real-Time NBFifo</Property>
				<Property Name="DistPart[1].SoftDep[7].upgradeCode" Type="Str">{76E4763E-0DC4-4195-BC50-084193FFA84B}</Property>
				<Property Name="DistPart[1].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[1].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[1].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[1].SoftDep[9].productName" Type="Str">NI Error Reporting 2013</Property>
				<Property Name="DistPart[1].SoftDep[9].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[1].SoftDepCount" Type="Int">10</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{A661D981-0A3B-4081-A5B5-1FAA03CFAF84}</Property>
				<Property Name="DistPartCount" Type="Int">2</Property>
				<Property Name="INST_author" Type="Str">Toshiba</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/MuLES/MuLES_installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">MuLES_installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="INST_productName" Type="Str">MuLES</Property>
				<Property Name="INST_productVersion" Type="Str">1.3.0</Property>
				<Property Name="INST_readmeID" Type="Ref">/My Computer/source_vi/gui/various/README.rtf</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">13008047</Property>
				<Property Name="MSI_arpCompany" Type="Str">MuSAE Lab</Property>
				<Property Name="MSI_arpURL" Type="Str">http://musaelab.ca/</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{BF5C95BB-5DE7-42D2-BE60-2D00405006A9}</Property>
				<Property Name="MSI_licenseID" Type="Ref">/My Computer/source_vi/gui/various/LICENSE.rtf</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{3AD414AA-3E54-4219-8BC8-8CC66ECF01B4}</Property>
				<Property Name="MSI_windowMessage" Type="Str">MuLES is a piece of software designed in LabVIEW, that aims at simplifying the use of common commercial electroencephalography (EEG) devices. It allows easy EEG data acquisition, recording and interfacing with other software (clients) programmed in any language that supports basic network socket programming.</Property>
				<Property Name="MSI_windowTitle" Type="Str">Welcome to MuSAE Lab EEG Server (MuLES) installer</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">mules.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">MuLES</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">MuLES</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{56287559-D975-45BF-853A-304CF4A6B0CD}</Property>
				<Property Name="Source[0].File[0].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[1].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[1].name" Type="Str">mules.aliases</Property>
				<Property Name="Source[0].File[1].tag" Type="Str">{AA23FAA7-FFA5-40D8-A957-47AC765A3DE3}</Property>
				<Property Name="Source[0].File[1].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[10].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[10].name" Type="Str">neurosky_mindset.jpg</Property>
				<Property Name="Source[0].File[10].tag" Type="Ref">/My Computer/images/neurosky_mindset.jpg</Property>
				<Property Name="Source[0].File[10].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[11].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[11].name" Type="Str">openbci_v3.jpg</Property>
				<Property Name="Source[0].File[11].tag" Type="Ref">/My Computer/images/openbci_v3.jpg</Property>
				<Property Name="Source[0].File[11].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[12].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[12].name" Type="Str">eng.txt</Property>
				<Property Name="Source[0].File[12].tag" Type="Ref">/My Computer/languages/eng.txt</Property>
				<Property Name="Source[0].File[12].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[13].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[13].name" Type="Str">fra.txt</Property>
				<Property Name="Source[0].File[13].tag" Type="Ref">/My Computer/languages/fra.txt</Property>
				<Property Name="Source[0].File[13].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[14].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[14].name" Type="Str">spa.txt</Property>
				<Property Name="Source[0].File[14].tag" Type="Ref">/My Computer/languages/spa.txt</Property>
				<Property Name="Source[0].File[14].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[2].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[2].name" Type="Str">mules.ini</Property>
				<Property Name="Source[0].File[2].tag" Type="Str">{96619C8A-9921-4385-AB90-84B47CAC4986}</Property>
				<Property Name="Source[0].File[2].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[3].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[3].name" Type="Str">config.ini</Property>
				<Property Name="Source[0].File[3].tag" Type="Ref">/My Computer/config.ini</Property>
				<Property Name="Source[0].File[3].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[4].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[4].name" Type="Str">log20141210_195303.csv</Property>
				<Property Name="Source[0].File[4].tag" Type="Ref">/My Computer/eeg_files/log20141210_195303.csv</Property>
				<Property Name="Source[0].File[4].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[5].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[5].name" Type="Str">log20141210_195303.edf</Property>
				<Property Name="Source[0].File[5].tag" Type="Ref">/My Computer/eeg_files/log20141210_195303.edf</Property>
				<Property Name="Source[0].File[5].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[6].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[6].name" Type="Str">emotiv_epoc.jpg</Property>
				<Property Name="Source[0].File[6].tag" Type="Ref">/My Computer/images/emotiv_epoc.jpg</Property>
				<Property Name="Source[0].File[6].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[7].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[7].name" Type="Str">file.jpg</Property>
				<Property Name="Source[0].File[7].tag" Type="Ref">/My Computer/images/file.jpg</Property>
				<Property Name="Source[0].File[7].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[8].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[8].name" Type="Str">interaxon_muse.jpg</Property>
				<Property Name="Source[0].File[8].tag" Type="Ref">/My Computer/images/interaxon_muse.jpg</Property>
				<Property Name="Source[0].File[8].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].File[9].dest" Type="Str">{1E42C379-2480-403F-95B0-89B3CCD541CA}</Property>
				<Property Name="Source[0].File[9].name" Type="Str">neuroelectrics_enobio.jpg</Property>
				<Property Name="Source[0].File[9].tag" Type="Ref">/My Computer/images/neuroelectrics_enobio.jpg</Property>
				<Property Name="Source[0].File[9].unlock" Type="Bool">true</Property>
				<Property Name="Source[0].FileCount" Type="Int">15</Property>
				<Property Name="Source[0].name" Type="Str">MuLES_portable</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/MuLES_portable</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
