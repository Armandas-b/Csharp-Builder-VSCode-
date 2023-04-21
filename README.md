# C# Project Builder

This is a simple project builder for C# projects. I made it to help me with building my projects in Visual Studio Code since all the C# stuff is done via CLI and I don't want to have to remember all the commands.

## Usage

To use this, you need to have the .NET Core SDK installed. You can get it [here](https://dotnet.microsoft.com/download).

Once you have that installed, run the script in a PowerShell terminal:

```powershell
./createProj.ps1 --projectName <projectname>
```

The script will create a folder with the name of the project you specified. It will then create a solution file and two projects: one for the main project and one for the tests.

The script will also execute both projects to make sure they work.

Successful execution should look like this:

```text
Checking if the project is created
Hello, World!
Checking if test project is created

.... Extra stuff from the test project ....

Passed!  - Failed:     0, Passed:     1, Skipped:     0, Total:     1, Duration: 124 ms - ProjectName.Tests.dll (net7.0)
Testing Successful!
Project: ProjectName is created 
Your project is ready!

This should create the following structure:

```text

ExampleProject
|--- Example.sln
|--- Example
     |--- Bin
     |--- Obj
     |--- Example.csproj
     |--- Program.cs
|--- Example.Tests
     |--- Bin
     |--- Obj    
     |--- Example.Tests.csproj
     |--- UnitTest1.cs
     |--- Usings.cs

```
