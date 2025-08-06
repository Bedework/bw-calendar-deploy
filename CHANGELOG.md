# Release Notes

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased (5.1.0-SNAPSHOT)

## [5.0.0] - 2025-08-04
* Add asciidocs 
* Renamed modules 
* Add docs directory 
* Update parent to latest release for calendar client. Add eventreg values to globals and remove from form. Add event reg admin url to system properties. 
* Fix struts for noAccess 
* Add some results 
* Add another valid package name for struts 
* Update web.xml for jakarta 
* Add url for eventreg ws to jsp. 
* Move most images into bedework-content in images directory. 
* Temporarily disable new struts2 security features until we are fully migrated. 
* Disable requirement for annotations for the moment. 
* Update for struts v7 - enforces package and namespace 
* Further changes to get calendar common and engine building 

## [4.1.3] - 2025-02-06
* Upgrade to struts 6.7.0 in advance of move to jakarta 
* Preparing for jakarta. 
* If we have an event in the inbox it was overriding the event we were trying to display. Being more explicit about scope seemed to fix things. 
* Add url for new event reg web service to configs. Use it in client to post notifications. 

## [4.1.2] - 2024-12-07
* Changes for updated deployment 

## [4.1.1] - 2024-11-26
* Referencing wrong object - should have been globals 
* Flush cached views every few mins 
* Wrong class name for globals 
* Removed confirmationId - not used. Removed savedEvent - not used. 
* Moved currentCalSuite, calSuiteName into globals. 
* Moved currentTab into globals. Moved ref out of all jsp files and into header.jsp 
* Move oneGroup and adminGroupName into globals. 
* Add yearVals attribute to selectDate and selectDateTime 
* Move submissionsroot and workflowroot and associated flags 
* Move today out of form into globals 
* Move BwForm tag out of struts package into taglib. Was there for transition from struts1. Get rid of all refs to bwhtml 
* Further changes to remove dependencies on form objects. 
* Missing return value in config 
* Use value in session rather than in form 
* Use session variable rather than form 

## [4.1.0] - 2024-04-03
This release marked the move from struts1 to struts 2. This involved many changes as detailed below.
* Fixes to the removal of bw-xml. Now appears to build and run correctly 
* Next stage in removing the bw-xml module.
  * icalendar schema moved into its own module  
  * Many modules updated to refer to it  
  * calws schema moved into caldav  
  * feature pack update to deploy calws wsdls into bedework-content  
  * Fixed timezone server context 
* Update parent version 
* Seems we have to handle the input result - even though it's not clear where it comes from. 
* Fix action 
* Catch logged out session to avoid npe 
* Fix widget return. 
* Fix struts.xml for /cal - missing redirect 
* Add badRequest action result 
* Update parent version to latest. 
* Add information to the view data so that we can sort on the displayed field rather than the path. 
* Force scope session. Struts2 is picking up objects from the request scope. 
* Typo in name 
* Deploy bw-xml as war instead of ear 
* Handle validation errors 
* Back off forwarding changes for add/update event 
* Fix up the showing of current tab to refresh the search result each time. May result in some inefficiencies but it now shows changes as they are made.
* Added page to handle approve/delete. Mostly working. 
* Remove last of tab specific stuff. 
* Should be same as ro cal client 
* Redo tab management for admin client. Add a currentTab form variable and output that in the jsp <tab> element. 
* Add methods to client to allow determination of approver status and return the current authorised user. Change validation - reversed sense of check. 
* Fix login error retry link 
* Fix setting of calendar path in InitAddEventAction 
* Use a system property to set struts 2 debug mode 
* Wrong tag 
* Fix feeder struts.xml 
* iml files 
* Explicitly specify jsp scope - seems to be necessary for vpoll only 
* Fix bad jsp 
* Missing struts 2 pieces for calauth 
* Remove struts 1 configs 
* Fix path for loggedout 
* Struts2 found some bad mappings 
* First pass at move ucal to struts 2 
* Feeder to struts2 
* Apparent bad result in action. Possibly never used. 
* struts 2 for soe 
* struts 2 for submit 
* Aspace. Try to customize upload messages 
* Apparently we have to have result "input" to handle file upload errors 
* Avoid null value for bad contacts 
* Fix location update for struts 2. 
* struts 2 updates for admin groups 
* Removed struts 1 support. 
* First pass at struts2 for caladmin 
* Fix struts.xml and pattern on struts filter 
* Try struts2 
* Remove last dependecies on struts taglibs in jsp. 
* New tags to select a contact and location and create a text field. 
* Use select tag for all date/time fields in all forms. 
* Add a select tag for all date/time fields 
* Add a select tag in more places. Fix the tld 
* Add a select tag to use instead of struts html tag 
* Remove inclusion for file that doesn't exist (and hasn't for a long time) 
* Fix dependencies on parent to be consistent. 
* Add a BwFormTag to proxy the struts tag - also set xhtml for struts 1 
* Drop the genurl tags - they were all html anyway 
* Remove last of struts-logic tags. 
* Add emitFormattedDates tag to replace emitDates.jsp 
* Replace logic tags and fix previous change 
* Replace logic tags for calendar display and search result 
* Replace logic tags 
* Replace logic tags in view displays. 
* New bw tag to emit categories. 
* Replace logic tags in main.jsp with core tags. 
* New bw tag to emit various labels and values. 
* New bw tag to emit messages and errors. 
* New bw tag to emit rrules. 
* New bw tag to emit xprops. 
* logic:present changed to c:if 
* log:present changed to c:if Comment out test forevent.target - doesn't work and we don't use it anyway 
* Move errorForward to a context param 
* Define the error forward in web.xml as an init-param. Embed that in the form when initialising. 
* Put back xhtml for the moment 
* Remove bean and html tags 
* Add back xhtml for pages with html elements. 
* Fix bad attribute 
* Remove bean and html tags 
* Fix pos in recurrences 
* REmove more unused tags 
* Remove bean and html tags 
* Fix header 
* Remove struts:bean tags 
* Remove unused files and folders 
* Remove unsed action and page 

## [4.0.1] - 2022-02-16
* Fix web.xml for ucal

## [4.0.0] - 2022-02-12
* Fix up logins after I broke them 
* All calendar client wars broken out so they can be deployed independently 
* Move all variable out of web app files. 
* Add feature pack module to bw-xml. 
* Reduce parent version to simple number 
* iml files 
* Fix up after attempt at deploying artifacts 
* Straighten out versions and use artifacts to deploy the calendar ears. 
* Replacement for bw-deploy which sounded too general. 
* Initial commit 