## Run the shell scripts in a linux docker container

* Install Docker

* Run docker container (make sure docker container is running)
  * `docker run -it ubuntu`

* Install dotnet
  * `apt-get update`
  * `apt-get install -y dotnet-sdk-8.0`

* Install git (if you will clone from github)
  * `apt-get install -y git`

* Clone this repo:
  * `git clone https://github.com/hergin/dotnet-test-with-coverage`

* Cd into it
  * `cd dotnet-test-with-coverage`

* Make the shell scripts executable.
  * `chmod +x *.sh`

* Run tests and check results by pattern matching
  * `./test.sh`
  * Should see `Nothing failed!`

* Run tests and check if coverage goal is met (80%)
  * `./test-coverage.sh`
  * Should see `Coverage not reached!`

* Switch the branch (so the full set of tests will be there to execute)
  * `git switch full-coverage`
  * `./test-coverage.sh`
  * Should see `Coverage reached!`

## Other commands

* Add coverlet to the test project
  * `dotnet add package coverlet.msbuild`

* Run the tests with coverage and fail if it is below certain threshold:
  * `dotnet test /p:CollectCoverage=true /p:Threshold=80`
  * `dotnet test /p:CollectCoverage=true /p:Threshold=\"80,100,70\" /p:ThresholdType=\"line,branch,method\"`

Here is more information about MSBuild and coverlet: https://github.com/coverlet-coverage/coverlet/blob/master/Documentation/MSBuildIntegration.md
