from selenium import webdriver
from selenium.webdriver.common.by import By
import time


class qawingify:
    driver = webdriver.Firefox()
    url = "https://sakshingp.github.io/assignment/login.html"

    def open_webpage(self):
        """ This method is to open the webpage """
        self.driver.get(self.url)
        time.sleep(3)

        """ Assertion of the title using try method """
        try:
            title_check = self.driver.title
            assert "Demo App" in title_check
            print(" Assertion pass - Title matched ")
        except Exception as e:
            print("Assertion failed", format(e))

    def login_method(self):
        self.open_webpage()

        username = self.driver.find_element(by=By.ID, value="username")
        username.send_keys("Admin")
        time.sleep(3)

        password = self.driver.find_element(by=By.ID, value="password")
        password.send_keys("Admin")
        time.sleep(3)

        login_button = self.driver.find_element(by=By.ID, value="log-in")
        login_button.click()

    def home_page_amount(self):
        self.login_method()

        amount = self.driver.find_element(by=By.ID, value="amount")
        amount.click()
        amount.


var = qawingify()
var.home_page_amount()
