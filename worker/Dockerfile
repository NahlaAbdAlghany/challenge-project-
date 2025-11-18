FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /src
COPY *.csproj ./
RUN dotnet restore

COPY . .
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime:7.0

RUN groupadd -r appuser && useradd -r -g appuser appuser

WORKDIR /app
COPY --from=build --chown=appuser:appuser /app/publish .

USER appuser


ENTRYPOINT ["dotnet", "Worker.dll"]