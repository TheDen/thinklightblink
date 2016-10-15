#!/bin/bash
set -o posix
cleanup() {
   (printf "off" | sudo tee /proc/acpi/ibm/light) > /dev/null;
}
 
control_c() {
  cleanup
  exit $?
}

# trap interrupt (control-c)
trap control_c SIGINT

printf "Enter the blink time interval (seconds): " ;
read "time"
while(true);
   do (printf "on" | sudo tee /proc/acpi/ibm/light) > /dev/null;
   sleep "$time";
   (printf "off" | sudo tee /proc/acpi/ibm/light) > /dev/null;
   sleep "$time";
done;

(printf: "off " | sudo tee /proc/acpi/ibm/light) > /dev/null;

