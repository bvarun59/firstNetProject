# Use the official Microsoft image for ASP.NET as the base image
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8

# Set the working directory in the container
WORKDIR /inetpub/wwwroot

# Copy the published files from your local machine to the container
COPY ./ticketier-webapi/. .

# Expose the default IIS port
EXPOSE 80

# Entry point to start the IIS server
ENTRYPOINT ["cmd", "/c", "start", "iisreset", "&&", "ping", "-t", "localhost"]
