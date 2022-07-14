require "selenium-webdriver"

class Components
  include Capybara::DSL

  def url
    visit "https://pagamentos2.dev.grafeno.be"
  end
end
