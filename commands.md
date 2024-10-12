* Make the shell scripts executable.
  * `chmod +x *.sh`

* Add coverlet to the test project
  * `dotnet add package coverlet.msbuild`

* Run the tests with coverage and fail if it is below certain threshold:
  * `dotnet test /p:CollectCoverage=true /p:Threshold=80`
  * `dotnet test /p:CollectCoverage=true /p:Threshold=\"80,100,70\" /p:ThresholdType=\"line,branch,method\"`

Here is more information about MSBuild and coverlet: https://github.com/coverlet-coverage/coverlet/blob/master/Documentation/MSBuildIntegration.md