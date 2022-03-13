#!/bin/bash -xve
touch /dev/rt{buzzer,motor,motoren,motor_raw_{l,r}}0
chmod 666 /dev/rt{buzzer,motor,motoren,motor_raw_{l,r}}0
echo "0 0 0 0" | tee /dev/rtlightsensor0
chmod 666 /dev/rtlightsensor0
echo "0" | tee /dev/rtswitch{0,1,2}
chmod 666 /dev/rtswitch{0,1,2}
