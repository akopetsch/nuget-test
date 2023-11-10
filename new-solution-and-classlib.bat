@echo off

curl -L https://github.com/github/gitignore/raw/main/VisualStudio.gitignore > .gitignore

set SLN_NAME=nuget-test
set PROJ_NAME=NugetTest

dotnet new sln -n %SLN_NAME%
dotnet new classlib -n %PROJ_NAME%
dotnet sln  add %PROJ_NAME%/%PROJ_NAME%.csproj
