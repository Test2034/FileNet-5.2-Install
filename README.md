FileNet-5.2-Install
===================

This is my instruction &amp; contribution to ppl that have to install IBM's FileNet 5.2 P8 Solution as a Single Server. IBM charges to install this software so this should save you some $$$.

###Instructions##
1. Log into the suck ass IBM FileNet Site
2. Download the Required List of Files for FileNet. The IBM Download Site is a bit of a mess so you will have to to hunt down all the required install packages. Use the search feature to find all the packages.
3. Rename the downloaded required files to match the instructions in the CPIT\cpit.properties file for example
    *IBM Tivoli Directory Server 6.3 = tds.zip*
4. Extract DB2
5. Extract the License File
6. copy the DB2 License File  into the uncompressed DB2 License folder
    
    *License File =  ese_o\db2\license\db2ese_o.lic*

7. Run the DB installer & Select the defaults except for Default Install Path
***Note:  This next Steps is important. Install DB2 using this exact file path ***
    After DB2 install reboot the server
8. Download this install-scripts.zip file (I will host somewhere)
Extract install-scripts.zip
extract the CPIT_5.2_WINDOWS_2008_EN .zip file
Delete the install-scripts folder in the CPIT_5.2_WINDOWS_2008_EN directory
Paste the downloaded install-scripts folder into the CPIT_5.2_WINDOWS_2008_EN directory
Run the 5.2.0-CPIT-WIN.EXE installer and select the defaults
Note: The installer will ask you to type a password. Leave this Blank & Accept the Defaults
If Step 23 fails you must Stop the WebSphere Service and Raise the JVM HeapSize to 1024
Export the LTPA Keys to C:\ltpakeys.txt use these directions http://bit.ly/1og9ulx
Let the installer run and hopefully you will have a functioning FileNet Composite Server
