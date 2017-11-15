Feature: cms
Scenario: User Open cms nikola
 Given User Open index
 Then User Goto beasiswa
 Then User Goto negara
 Then User Goto dokumen
 Then User Goto syarat

Scenario: User add new beasiswa
Then User Goto beasiswa
Then User click checkbox
Then User add beasiswa
