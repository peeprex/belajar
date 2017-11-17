require "selenium-webdriver"
require "rubygems"
require 'rspec/expectations'
driver = Selenium::WebDriver.for :firefox



Given (/^User Open cms nikola$/) do

  driver.navigate.to 'file:///home/fandisetiawan/nikola/dashboard/index.html'
end

Then (/^User check all menu fitur$/) do
  driver.find_element(:xpath,'/html/body/div/div[2]/nav/div/div[2]/form/div/input').send_keys 'kamu dapat mecari beasiswa disini'
  sleep 0.2
  driver.find_element(:xpath,'/html/body/div/div[2]/nav/div/div[2]/ul/li[1]/a/i').click
  sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[1]/h4/a/i').click
  sleep 0.1
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[2]/div[1]/h4/a/i').click
  sleep 0.1
end
Then (/^User Goto home$/) do
  driver.find_element(:xpath,'/html/body/div/div[1]/div[2]/ul/li[1]/a/p').click
end


#beasiswaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p')
#homeBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[1]/a/p')
#penggunaBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[3]/a/p')
#negaraBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[4]/a/p')
#dokumenBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[5]/a/p')
#syaratBtn = driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[6]/a/p')

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
  driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[6]/a/p').click
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

Then(/^User click add data beasiswa button$/) do
  addbeasiswa = driver.find_element(:xpath,'/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/a/span')
expect(addbeasiswa.text).to include('ADD DATA BEASISWA')
addbeasiswa.click
end

Then(/^User type nama beasiswa$/) do
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[1]/div/input').send_keys 'nama beasiswa'
end

  Then(/^User type deadline beasiswa$/) do
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[2]/div/input').send_keys'deadline'
end

Then(/^User type biaya beasiswa$/) do
  driver.find_element(:xpath,'/html/body/div/div[2]/div/div/div[1]/div[3]/div/input').send_keys'biaya'
end

Then(/^User click simpan$/) do
  driver.find_element(:xpath, '/html/body/div/div[1]/div[2]/ul/li[2]/a/p').click
end

Then(/^User click tambah negara$/) do
  driver.find_element(:xpath,'/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/a/span').click
end
Then(/^User type nama negara$/) do
  driver.find_element(:xpath,'//*[@id="tambahNegara"]/div/div/form/div[2]/div[1]/input').send_keys 'iki jeneng negoro'
end
And(/^User type region$/) do
  driver.find_element(:xpath,'//*[@id="tambahNegara"]/div/div/form/div[2]/div[2]/input').send_keys 'sing iki region'
end
Then(/^User click add negara$/) do
  driver.find_element(:xpath,'//*[@id="tambahNegara"]/div/div/form/div[3]/input[2]').click
end
#And(/^User type detail beasiswa$/) do
#  driver.find_element(:xpath,'').send_keys 'beasiswa detail'
#end
#And(/^User type timeline$/) do
#  driver.find_element(:xpath,'//*[@id="Detail"]').send_keys 'beasiswa detail'
#end
#And(/^User type dokumen$/) do
#  driver.find_element(:xpath,'//*[@id="Detail"]').send_keys 'beasiswa detail'
#end
#And(/^User type jenjang$/) do
#  driver.find_element(:xpath,//*[@id="Detail"]).send_keys 'beasiswa detail'
#end
#And(/^User type syarat$/) do
#  driver.find_element(:xpath,//*[@id="Detail"]).send_keys 'beasiswa detail'
#end
