require "selenium-webdriver"

class Dashboard < SitePrism::Page
  include Capybara::DSL

  set_url "/index.html"
  element :salutation, "p[class='lead']"
end