#!/bin/bash

cleanup()
# example cleanup function 
{
   (echo -n "off " | sudo tee /proc/acpi/ibm/light) >/dev/null;
}
 
control_c()
# run if user hits control-c
{
  echo -en "\nThinkLight turned off\n"
  cleanup
  exit $?
}


# trap keyboard interrupt (control-c)
trap control_c SIGINT

echo -n "Enter the blink time interval: " ;
read "time"
while(true);
   do (echo -n "on " | sudo tee /proc/acpi/ibm/light) > /dev/null;
   sleep $time;
   (echo -n "off " | sudo tee /proc/acpi/ibm/light) >/dev/null;
   sleep $time;
done
(echo -n "off " | sudo tee /proc/acpi/ibm/light) >/dev/null;


# Alternate commands which have permission issues
#  do echo on > /proc/acpi/ibm/light;
#  do echo on > /proc/acpi/ibm/light;

