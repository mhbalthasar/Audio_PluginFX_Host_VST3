@echo off
cd %~dp0\bin
%~d0
copy /y "..\filtergraphs\SynthesizerV_Sharp.filtergraph" "%temp%\Loader.filtergraph"
start AudioPluginHost.exe "%temp%\Loader.filtergraph" /showWindow "Synthesizer V Sharp Plugin" /asSingle