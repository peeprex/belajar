Feature: cms
Scenario: User check all menu in cms nikola
 Given User Open cms nikola
 Then User Goto home
 Then User Goto beasiswa
 Then User Goto negara
 Then User Goto dokumen
 Then User Goto syarat

Scenario: User add new beasiswa
Then User Goto beasiswa
Then User click add data beasiswa button
Then User type nama beasiswa
And User type deadline beasiswa
And User type biaya beasiswa

Scenario: User cancel add negara
Then User Goto negara
Then User click tambah negara
Then User type nama negara
And User type region
Then User click cancel negara

Scenario: User add negara
Then User Goto negara
Then User click tambah negara
Then User type nama negara
And User type region
Then User click add negara
