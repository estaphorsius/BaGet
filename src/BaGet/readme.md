# BaGet

This is the project that implements [NuGet service APIs](https://docs.microsoft.com/en-us/nuget/api/overview). Most of the core logic is contained within the `BaGet.Core` project.

## Migrations

Regenerate migrations with:

```
rm baget.db
dotnet ef migrations remove
dotnet ef migrations add Initial --context SqliteContext --output-dir Migrations/Sqlite
dotnet ef migrations add Initial --context SqlServerContext --output-dir Migrations/SqlServer

dotnet ef database update
```

dotnet nuget push -s https://nuget.bether.net/v3/index.json /Users/elmar/Source/pinqfin/src/Pinqfin.Entities/bin/Debug/Pinqfin.Entities.1.1.0.nupkg