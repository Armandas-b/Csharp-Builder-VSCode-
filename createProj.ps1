param(
    [string]$projectName
)

mkdir $projectName"Proj"
cd $projectName"Proj"

# Create a new solution file
dotnet new sln -n $projectName

# Create a new class library project
dotnet new console -n $projectName -o $projectName

# Add the class library project to the solution
dotnet sln add .\$projectName\$projectName.csproj

# Create a new NUnit test project
dotnet new nunit -n "$projectName.Tests" -o "$projectName.Tests"

# Add the test project to the solution
dotnet sln add .\"$projectName.Tests"\"$projectName.Tests.csproj"

# Add a reference to the class library project in the test project
dotnet add .\"$projectName.Tests"\"$projectName.Tests.csproj" reference .\$projectName\$projectName.csproj


# Run the tests
dotnet test .\"$projectName.Tests"
