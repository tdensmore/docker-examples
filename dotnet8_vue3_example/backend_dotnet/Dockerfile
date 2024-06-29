##
## BUILD
##

# Use the SDK image to build dotnet
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-stage
WORKDIR /App
# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

##
## RUN
##

# Use the runtime image to run dotnet
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /App
COPY --from=build-stage /App/out .
EXPOSE 8080
# The ENTRYPOINT should be the name of the DLL
ENTRYPOINT ["dotnet", "backend.dll"]
