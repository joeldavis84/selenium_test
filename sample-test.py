#!/usr/bin/python

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from os import system

driver = webdriver.Firefox()
driver.get("http://172.17.0.1:30")
elem = driver.find_element_by_name("query")
elem.clear()
elem.send_keys("Joel Was Here")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()

system("killall -9 geckodriver firefox 2>/dev/null")
