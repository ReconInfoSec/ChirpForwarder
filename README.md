# ChirpForwarder
![ChirpForwarder Logo](/assets/images/ChirpForwarder.png)
## What?
ChirpForwarder is a tool that pulls alerts and incidents from thinkst canary console "https://canary.tools/", then forwards them to local destinations (e.g. SIEM/SOAR solutions), for further processing/indexing/archival/etc.  
It's a single binary that has no dependencies, runs on windows, linux, macOS, and it's also available as a docker image.

## Why?
Even though there are many ways to receive alerts from the canary console, canary owners who would like to integrate alerts with local/on-prem SIEM solutions had to either do some custom development (to integrate with the console API), and/or expose a service listener to the internet (syslog or webhook).  
This tool aims to lower the barrier for canary owners who have a need to integrate canary alerts into their SIEM/SOAR solutions, or are looking for an easy way to archive alerts & incidents in a standard format, for regulatory & compliance purposes, without the need for custom development, or the need to open a listener to the internet.
## How?
First of all, in your canary console, go to `Settings`, then  turn `ON` the `API` switch; get your API key, and your unique domain (before .canary.tools), you might also want to `Download Token File` which makes it a bit easier later on.
![Get canary API](/assets/images/01-GetAPI.png)

## Show me more examples!
## Tell me more...
This graph explains the overview (don't worry, using the tool is pretty easy)
![ChirpForwarder Overview](/assets/images/Overview.png)
The ChirpForwarder has the following components:
  * Input Modules
  * Filter Modules (not shown in graph)
  * Mapper Modules
  * Output Modules 
### Input Modules

