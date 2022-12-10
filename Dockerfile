FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /app
COPY . .
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000

ENTRYPOINT /bin/bash -c "dotnet BMS.dll"

#docker build -t my-bms .
#docker run --name bmsapp -d -p 5000:5000 my-bms