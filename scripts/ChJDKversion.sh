#!/bin/sh

chosen=$1
case $chosen in
	"-h")
	  echo "11 java-11-openjdk"
	  echo "14 java-14-openjdk"
	  echo "8 java-8-openjdk/jre"
	  ;;
	"11")
	#	echo 11
	sudo	archlinux-java set java-11-openjdk
	archlinux-java	status
		;;
	"14")
	#	echo 14
	sudo	archlinux-java set java-14-openjdk
	archlinux-java	status
		;;
	"8")
#		echo 8
	sudo	archlinux-java set java-8-openjdk/jre
	archlinux-java	status
		;;
esac

