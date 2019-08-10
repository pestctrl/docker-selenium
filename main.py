from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException

def main():
    driver = webdriver.Firefox()
    driver.get("https://ismyinternetworking.com/")

    try:
        elem = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.ID, 'yeslink')))
        print(elem.get_attribute("innerHTML"))
    except TimeoutException:
        print("Loading took too much time!")

    driver.quit()


if __name__ == "__main__":
    main()
