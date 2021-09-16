#!/usr/bin/env bash
rm -rf "{{.SocketFile}}"
ssh -p "{{.SSHPort}}" -i ~/.lima/_config/user -o NoHostAuthenticationForLocalhost=yes -L "{{.SocketFile}}":/var/run/docker.sock -N 127.0.0.1