# Managing Test Application Package Deployment with SystemLink


1. Open the Computer Dashboard Demonstration (LabVIEW) and run it (showing a test application)
2. Use either the TestStand Deployment Utility or NI Package Builder to create this program in an .nipkg file, defining the TestStand and LabVIEW runtimes as dependencies.
3. Build the package. A single .nipkg file should be created
4. On SystemLink, open Systems Managemente >> Package Repository.
5. Create a Feed for your test program
6. Upload the package.
7. Back on the Systems Page, select the systems you want to deploy your software to (it can be just one on this demo context)
8. Click on "Software" and Add the feed you created on step #5.
9. Now, Select "Available". You should see the Application Name there.
10. Click the "Install" button/dropdown to select the Install Action. Then click next and finish
11. SystemLink will report that the software were successfully installed.
12. Open the client machine and run the software.