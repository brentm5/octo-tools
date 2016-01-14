FROM microsoft/aspnet:latest
MAINTAINER brent@bmontague.com

WORKDIR /octo

RUN curl -o OctopusTools.zip https://download.octopusdeploy.com/octopus-tools/3.3.2/OctopusTools.3.3.2.zip && unzip OctopusTools.zip && rm OctopusTools.zip

ENTRYPOINT [ "mono", "Octo.exe" ]
CMD [ "help" ]
