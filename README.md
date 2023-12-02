# iris-chatgpt

This is the easiest assistant for accessing chatgpt

## Example of use
> USER>w ##class(dc.irischatgpt.main).prompt("please return random name")
>> Alex

## Setup
Set the environment variable for chatgpt

```bash
API_CHATGPT_KEY=sk-xxx
```
or you can pass the key as the second parameter
> USER>w ##class(dc.irischatgpt.main).prompt("please return random name", "sk-xxx")

## Configuration
1. Clone/git pull the repo into any local directory

```
git clone https://github.com/alexnxela/iris-chatgpt.git
```

2Run the IRIS container:

```
docker-compose up -d
```
---
**Install with IPM**
```objectscript
zpm "install irischatgpt"
```

## How to run it

```bash
docker-compose up -d 
```