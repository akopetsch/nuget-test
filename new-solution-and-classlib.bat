@echo off

curl -L https://github.com/github/gitignore/raw/main/VisualStudio.gitignore > .gitignore

dotnet new sln -n nuget-test
dotnet new classlib -n UnityLib -f netstandard2.1
dotnet sln  add UnityLib/UnityLib.csproj
