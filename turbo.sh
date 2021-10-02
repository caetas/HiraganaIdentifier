#!/bin/sh
if [ $1 == "enable" ]   
then
	sudo wrmsr -p0 0x1a0 0x850089
	sudo wrmsr -p1 0x1a0 0x850089
	sudo wrmsr -p2 0x1a0 0x850089
	sudo wrmsr -p3 0x1a0 0x850089
	sudo wrmsr -p4 0x1a0 0x850089
	sudo wrmsr -p5 0x1a0 0x850089
	sudo wrmsr -p6 0x1a0 0x850089
	sudo wrmsr -p7 0x1a0 0x850089
	cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	echo Turbo enabled
else
	sudo wrmsr -p0 0x1a0 0x4000850089
	sudo wrmsr -p1 0x1a0 0x4000850089
	sudo wrmsr -p2 0x1a0 0x4000850089
	sudo wrmsr -p3 0x1a0 0x4000850089
	sudo wrmsr -p4 0x1a0 0x4000850089
	sudo wrmsr -p5 0x1a0 0x4000850089
	sudo wrmsr -p6 0x1a0 0x4000850089
	sudo wrmsr -p7 0x1a0 0x4000850089
	cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	echo Turbo disabled	
fi
