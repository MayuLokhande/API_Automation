API AUTOMATION WITH ROBOT FRAMEWORK

1. Overview 
This project demonstrates automation tests using Robot Framework and RequestsLibrary. It validate the correct processing of requests for
at least 3 APIs, one of each method: GET, POST, and PUT.

2. SETUP INSTRUCTIONS 
Install Robot Framework by using pip install robotframework
Install RequestsLibrary by using pip install robotframework-requests

3. SETUP FOLDER STRUCTURE
api_Automation
- tests
   -api_get_request.robot
   -api_post_request.robot
   -api_put_request.robot
-output.xml  .... it will  automatically generate
-report.html   ....it will  automatically generate

4. EXECUTION INTRUCTIONS
Open the terminal and then run this 
robot tests/api_get_request.robot      -> It runs GET request tests
robot tests/api_post_request.robot     -> It runs POST request tests
robot tests/api_put_request.robot      -> It runs PUT request tests
robot tests/                           -> It run all tests in the tests folder at once

5. VIEW RESULTS 
After execution robot framework generates the following files automatically by default
output.xml         -> xml results
log.html           -> step by step execution log
report.html        -> showing passed/failed status
start report.html  ->To open the report in Google Chrome