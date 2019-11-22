# Shadow Drop
Shadow Drop Automated Network Penetration Test Script

###Status of Modules###
Incomplete
	-main.bash
Completed
	-recon.bash
	-vuln.bash
	-report.bash
	-exploit.bash

###To Do###
	-Auto multi-target run via hosts.txt/main.bash



###USAGE###
	The script is composed of five modules: Recon, Vuln, Exploit, and Report. Main.bash runs them all 
together against each host on the network but they can also be used individually. 

-Recon finds live hosts off the network

-Vuln uses nmap NSE's to create XML (for exploit module) and HTML (for human review) reports
 
-Exploit uses XML reports and service info to find and run exploits. It also attempts a password guessing attack via the Nmap "Brute" NSE

-Report formats the files created by the previous modules and places copies of them in the "Final_Report" directory




###NOTES###
	-The setup script is optional. It updates the system and installs OpenVAS. If the Nmap NSE's encounter errors, you may need to use it.
	-If you want to be more thorough, run the script and then follow up with OpenVAS and Armitage
