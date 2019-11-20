# Shadow Drop
Shadow Drop Automated Network Penetration Test Script

Incomplete
	-main.bash
	-exploit.bash
Completed
	-recon.bash
	-vuln.bash
	-report.bash

To Do
	-Clean up end of exploit.bash (proper file cleanup using function)
	-Why no shell on first run?
	-Auto multi-target run via hosts.txt/main.bash
USAGE:
	The script is composed of five modules: Recon, Vuln, Exploit, and Report. Main.bash runs them all 
together but they can be used individually if desired. 

-Recon finds live hosts off the network

-Vuln uses nmap NSE's to create XML (for exploit module) and HTML (for human review) reports
 
-Exploit uses XML report and service info to find and run exploits

-Report formats the files created by the previous modules and places copies of them in the "Final_Report" directory
