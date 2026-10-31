This location is where we will put the framework for the FPT project. 
To reuse this framework
1. Copy the "FPT Shared VIs" to the folder that will be used to create measurement
2. Create a new LabVIEW project and convert to MeasurementPlugin project
3. Close the project and labVIEW
4. Copy the following items from "fpt\Framework\MeasurementPlugin Framework" and overwrite the newly created items in the new project folder
	- Measurement UI.vi
	- Measurement Logic.vi
	- Measurement Configuration.ctl
	- Measurement Results.ctl
5. Relink all the dependency (needed bcs it will link to a new class/pack library). Save all the impacted VI
	- Open the MeasurementPlugin LabVIEW project
	- browse the VIs and Ctls when it prompts
	- skip "FPT Framework.lvclass" and "FPT Framework UI.lvlib"
	- once the project opened successfully, 
		- open all the overwritten items above
		- it might ask to browse the lvclass and lvlib again, just skip or click "ignore"
		- click "Update" and save
6. Save the LabVIEW project and you can start the measurementplugin development now. 
	- Measurement logic.vi -> add in the measurement logic
	- Measurement Ui.vi -> add in the result to display on UI