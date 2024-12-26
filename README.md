# Bash Exercise

For course DE

## To do

* Write several commands to the log file
* Package them in a .sh script

## Commands

* Calculate the total number of requests.
* Count the number of unique IP addresses. Strictly using awk.
* Count the number of requests by methods (GET, POST, etc.). Strictly using awk.
* Find the most popular URL. Strictly using awk.
* Create a report as a text file. The name of the text file - report.txt

## Script for log
cat <<EOL > access.log
192.168.1.1 - - [28/Jul/2024:12:34:56 +0000] "GET /index.html HTTP/1.1" 200 1234
192.168.1.2 - - [28/Jul/2024:12:35:56 +0000] "POST /login HTTP/1.1" 200 567
192.168.1.3 - - [28/Jul/2024:12:36:56 +0000] "GET /home HTTP/1.1" 404 890
192.168.1.1 - - [28/Jul/2024:12:37:56 +0000] "GET /index.html HTTP/1.1" 200 1234
192.168.1.4 - - [28/Jul/2024:12:38:56 +0000] "GET /about HTTP/1.1" 200 432
192.168.1.2 - - [28/Jul/2024:12:39:56 +0000] "GET /index.html HTTP/1.1" 200 1234
EOL
