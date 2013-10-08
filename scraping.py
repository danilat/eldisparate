# -*- coding: utf-8 -*-
from selenium import webdriver
from selenium.webdriver.support import ui
from selenium.common.exceptions import NoSuchElementException, TimeoutException
import requests
import os
 
def create_browser():
    profile = webdriver.FirefoxProfile()
    profile.set_preference('permissions.default.image', 2)
    profile.update_preferences()
    return webdriver.Firefox(profile)

def download_table(url, driver):
	driver.get(url)
	try:
		wait.until(lambda driver: 'realizadas por' in driver.find_element_by_tag_name('body').text and driver.find_element_by_link_text('DESCARGAR TABLA'))
		driver.find_element_by_link_text('DESCARGAR TABLA').click()
		wait.until(lambda driver: driver.find_element_by_link_text('Pulse aquí para obtener su fichero de datos'))
		href = driver.find_element_by_link_text('Pulse aquí para obtener su fichero de datos').get_attribute('href')
		return requests.get(href).text
	except TimeoutException:
		return None

def directory(year, autonomy):
	return "web-app/data/" + year + "/" +autonomiesNames[int(autonomy)] + "/"

def save_to_file(content, year, autonomy, type):
	directory = directory(year, autonomy)
	if not os.path.exists(directory):
		os.makedirs(directory)
	path = directory + type
	data = open(path, 'w')
	data.write(content)
	data.close()
	print path

def check_scraping_detected(driver):
	detected = 'disculpe las molestias' in driver.find_element_by_tag_name('body').text
	if detected:
		print "A cascarla..."
	return detected


autonomiesNames =['sin_determinar','andalucia','aragon','asturias','baleares','canarias','cantabria','castilla_la_mancha','castilla_leon','catalunya','ciudad_autonoma_de_ceuta','ciudad_autonoma_de_melilla','comunidad_valenciana','extremadura','galicia','la_rioja','madrid','murcia','navarra','pais_vasco']
autonomies = ["00","01", "02","03","04","05","06","07","08","09","10","11","12","13","14","15"]
years = ["13", "12", "11", "10", "09", "08", "07"]
category = "93"
types = ["E", "I"]

driver = create_browser()
wait = ui.WebDriverWait(driver, 5)
driver.get("http://aduanas.camaras.org/")

for year in years:
	for autonomy in autonomies:
		for type in types:
			if not os.path.exists(directory(year,autonomy)+type):
				url = "http://aduanas.camaras.org/htdocs/ieespannola.php?impexp=" + type + "&anno=" + year + "&codprod=" + category + "&producto=TA&areanacional=AU&codareanac="+ autonomy +"&areainternac=PS&tipo=ORGDES&result=PS"
				content = download_table(url, driver)
				if content:
					save_to_file(content, year, autonomy, type)
			if check_scraping_detected(driver):
				break
		if check_scraping_detected(driver):
			break
	if check_scraping_detected(driver):
			break
driver.quit()