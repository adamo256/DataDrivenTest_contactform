*** Settings ***
Resource    Resource.txt
Test Teardown    Capture Screenshot And Close Browser
Test Setup    Open Browser and Maximaze        
Library    SeleniumLibrary        
*** Test Cases ***
All test cases
    [Template]    Insert Customer Service
    -- Choose --    a@aa.aa    asdf    message    Please select a subject from the list provided     # Test Case 1
    Customer service    aaa.aa    qwer    message    Invalid email address    # Test Case 2
    Webmaster    a@aa.aa    yxc    ${Empty}    The message cannot be blank.    # Test Case 3
    Webmaster    a@aa.aa    rfv    message    Your message has been successfully sent to our team    # Test Case 4

