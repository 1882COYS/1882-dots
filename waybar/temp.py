#!/usr/bin/env python
#
import os

with open('/sys/class/hwmon/hwmon4/temp1_input', "r") as file:
        temp1_input= file.read()
        temp = round(int(temp1_input) / 1000)

        if temp <= 40:
            temp = f' {temp}°C'
        elif temp <= 50:
            temp = f' {temp}°C'
        elif temp <= 70:
            temp = f' {temp}°C'
        elif temp <= 80:
            temp = f' {temp}°C'
        else:
            temp = f' {temp}°C'

print(str(temp))