The script parser.rb takes a log file as input and outputs a list of web pages ordered by the number of visits to the page and the number of unique visits to each page.

eg: `./parser.rb webserver.log`

outputs:

- /home 90 visits
- index 80 visits

- /home   8 unique visits
- /index  5 unique vists

## Setup
This code was developed using ruby 2.7.0

run `bundle install` to install the necessary ruby gems

## Run the script
run `./parser.rb webserver.log` to display the pages ranked by total visits and total unique visits. 
You can provide any log file which has the same structure as the provided example file, webserver.log.

## Run the tests
run `rspec spec` to run the test suite

## TODO
As I have tried to stick to the 2.5 hour limit (allowing some time for yak shaving) there are some areas that I would like to improve.
The test coverage is not as comprehensive as I would like. What is present is more of a skeleton upon which to add more specs.

The error handling feels clunky and I would like to add checking the validity of each log line, discarding those which are invalid.

I would also like to explore ways to make the console output more visually appealing.

## Updates
I will put any subsequent changes to the code in the extra-time branch
