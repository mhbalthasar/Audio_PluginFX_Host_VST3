@echo off
cd %~dp0\bin
%~d0
copy /y "..\filtergraphs\VXBeta2.filtergraph" "%temp%\Loader.filtergraph"
start AudioPluginHost.exe "%temp%\Loader.filtergraph"