require "selenium-webdriver"
require "rubygems"
require 'rspec/expectations'
driver = Selenium::WebDriver.for :firefox



Given (/^User Open index$/) do


  driver.navigate.to 'file:///home/fandisetiawan/nikola/dashboard/index.html'
  driver.find_element(:xpath,'/html/body/div/div[2]/nav/div/div[2]/form/div/input').send_keys 'kamu dapat mecari beasiswa disini'
sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/nav/div/div[2]/ul/li[1]/a/i').click
sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[1]/h4/a/i').click
sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[2]/div[1]/h4/a/i').click
sleep 0.1
#beasiswaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p')
#homeBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[1]/a/p')
#penggunaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[3]/a/p')
#negaraBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[4]/a/p')
#dokumenBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[5]/a/p')
#syaratBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[6]/a/p')
end

#beasiswaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p')
Then (/^User Goto beasiswa$/) do
#  beasiswaBtn.click
  beasiswaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p')
  beasiswaBtn.click
end

Then(/^User Goto negara$/) do
  driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[4]/a/p').click
end

Then(/^User Goto dokumen$/) do
  driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[5]/a/p').click
end

Then(/^User Goto syarat$/) do
  HAKSJDdriver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[6]/a/p').click
end

Then (/^User click checkbox$/) do
    driver.find_element(:xpath, '//*[@id="checkbox1"]').click
  sleep 0.1
  driver.find_element(:xpath,'//*[@id="checkbox2"]').click
  sleep 0.1
  driver.find_element(:xpath,'//*[@id="checkbox3"]').click
  sleep 0.1
  driver.find_element(:xpath,'//*[@id="checkbox4"]').click
  sleep 0.1
  driver.find_element(:xpath,'//*[@id="checkbox5"]').click
  sleep 0.1
end

Then(/^User add beasiswa$/) do
  addbeasiswa = driver.find_element(:xpath,'/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/a/span')
expect(addbeasiswa.text).to include('ADD DATA  BEASISWA')
addbeasiswa.click
  sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[1]/div/input').send_keys 'nama beasiswa'
  sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[2]/div/input').send_keys'deadline'
  sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[3]/div/input').send_keys'biaya'
  sleep 0.1
  driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p').click
end
