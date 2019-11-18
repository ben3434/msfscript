#!/bin/bash
if [[ $target == "" ]]
then
        echo -n "Enter a target: "
        read target
else
        :
fi

###  CHECK FOR / CREATE TARGET INTEL FILES  ###

#Run nmap vuln scan if no file exists/user chooses to
clear
if [[ ! -f nmap-vuln-$target.xml ]]
then
echo "No existing nmap vulnerability scan file present"
echo "initiating scan..."
load
nmap $target -T5 -A -sV -oX nmap-vuln-$target.xml --script=vuln
else
        echo "Existing nmap vulnerability xml scan report found, would you like to continue or rescan?"
        echo -n "[C]ontinue or [R]escan: "
        read choice
        case $choice in
                [Cc] )
                        echo
                        echo "Continuing with existing scan file"
                        load
			;;
                [Rr] )
                        rm nmap-vuln-$target.xml
                        nmap $target -T5 -A -sV -oX nmap-vuln-$target.xml --script=vuln
			;;
esac
fi
xsltproc nmap-vuln-$target.xml -o nmap-vuln.html

#Run nmap malware scan if no file exists/user chooses to
clear
if [[ ! -f nmap-mal-$target.xml ]]
then
echo "No existing nmap malware scan file present"
echo "initiating scan..."
load
nmap $target -T5 -A -sV -oX nmap-mal-$target.xml --script=malware
else
        echo "Existing nmap malware xml scan report found, would you like to continue or rescan?"
        echo -n "[C]ontinue or [R]escan: "
        read choice
        case $choice in
                [Cc] )
                        echo
                        echo "Continuing with existing scan file"
                        load
                        ;;
                [Rr] )
                        rm nmap-mal-$target.xml
                        nmap $target -T5 -A -sV -oX nmap-mal-$target.xml --script=malware
                        ;;
esac
fi
xsltproc nmap-mal-$target.xml -o nmap-malware.html
