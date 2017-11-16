Feature: cms
Scenario: User Open cms nikola
 Given User Open cms nikola
 Then User Goto beasiswa
 Then User Goto negara
 Then User Goto dokumen
 Then User Goto syarat

Scenario: User add new beasiswa
Then User Goto beasiswa
Then User click add data beasiswa button
Then User type nama beasiswa
Then User type deadline beasiswa
Then User type biaya beasiswa

Scenario: User cancel to add negara
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
