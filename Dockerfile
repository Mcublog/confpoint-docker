FROM mcr.microsoft.com/powershell:latest

COPY confpoint/bin/ /usr/bin

RUN ln -s /usr/bin/pwsh /usr/bin/powershell

CMD ["/bin/bash"]
