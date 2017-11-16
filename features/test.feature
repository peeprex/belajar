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
