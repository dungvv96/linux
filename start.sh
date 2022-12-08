#!/bin/bash
if [[ $1 == "all" ]]
then
	nmcli con up id icheck_profile
	gnome-terminal --window -- sh -c "postman"
	gnome-terminal --window -- sh -c "firefox"
	gnome-terminal --window -- sh -c "dbeaver"
	gnome-terminal --window -- bash -c "eclipse"
	exit 0
fi
printf "Start all program for code(vpn,postman,dbaver,eclipse)?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	nmcli con up id icheck_profile
	gnome-terminal --window -- sh -c "postman"
	gnome-terminal --window -- sh -c "firefox"
	gnome-terminal --window -- sh -c "dbeaver"
	gnome-terminal --window -- bash -c "eclipse"
	exit 0
fi
printf "Start VPN?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	nmcli con up id icheck_profile
fi
printf "Start Postman?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	gnome-terminal --window -- sh -c "postman"
fi
printf "Start Firefox?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	gnome-terminal --window -- sh -c "firefox"
fi
printf "Start Dbeaver?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	gnome-terminal --window -- sh -c "dbeaver"
fi
printf "Start Eclipse?(y/n):"
read flag
if [[ "$flag" == "Y" || "$flag" == "y" ]]
then
	gnome-terminal --window -- bash -c "eclipse"
fi
