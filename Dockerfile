FROM mcr.microsoft.com/dotnet/core/sdk:3.1.100

WORKDIR /app

RUN apt-get update \
  && apt-get install -y openjdk-11-jdk \
  && dotnet tool install --global dotnet-sonarscanner

ENV PATH="$PATH:/root/.dotnet/tools"

