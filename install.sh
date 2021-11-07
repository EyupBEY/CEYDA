#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y


grep -q "deb http://ports.ubuntu.com/ubuntu-ports bionic-updates main" "/etc/apt/sources.list" && echo "It Already Satisfied" || echo "deb http://ports.ubuntu.com/ubuntu-ports bionic-updates main" >> /etc/apt/sources.list


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

echo "Package: *
Pin: release a=bionic-updates
Pin-Priority: 1" > /etc/apt/preferences.d/99bionic-updates

sudo apt update -y

sudo apt install firefox -y

sudo pip3 install selenium

sudo apt-get install firefox-geckodriver -y

sudo apt-get install chromium -y
sudo apt-get install chromium-chromedriver -y

echo "from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
driver = webdriver.Firefox()
driver.get('https://www.google.com')" > index.py

sudo python3 index.py
