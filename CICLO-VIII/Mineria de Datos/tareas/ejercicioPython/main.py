from time import sleep
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as Ec
from selenium import webdriver


BUSCAR = 'MINERIA DE DATOS'
LINK = 'https://www.redalyc.org/'
xpath = '/html/body/main/div[3]/div[3]/div[2]/input[1]'

data = ""

driver = webdriver.Firefox()
# Obtiene link
driver.get(LINK)

lblBusqueda = driver.find_element(
    By.XPATH, xpath)

lblBusqueda.clear()
lblBusqueda.send_keys(BUSCAR)
lblBusqueda.send_keys(Keys.ENTER)

# driver time(s) frecuency ignore
WebDriverWait(driver, 30).until(
    Ec.visibility_of_element_located((By.CLASS_NAME, 'wrapper')))

sleep(2)




i = 1
while i < 11:
    data += "\n"+driver.find_element(By.XPATH,
                                     f'/html/body/div[1]/main/div/div[2]/div[4]/div/article[{i}]/div/span/a[1]').get_attribute('href')

    data += "\n"+driver.find_element(By.XPATH,
                                     f'/html/body/div[1]/main/div/div[2]/div[4]/div/article[{i}]/div/span/a[1]/span').text

    data += "\n"
    i += 1

with open("articulos.txt", "w") as f:
    f.write(data)

driver.close()
