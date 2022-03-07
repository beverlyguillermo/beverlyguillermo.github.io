---
categories: [Win11]
---

## Reasons

Why am I posting now? These days are stressful. I have been trying to write up my thoughts, but I didn't want to 
contribute to noise and there are many better voices out there.

Why was I looking at win11? Short answer, I have not used windows in a while.  My last experience was trying to use
win10, and it was painful. However, in the past, I was teaching new developers and Windows machines are cheaper
versus a macbook for "almost" the same configuration.  I wanted to see if it's possible to set up a local
development environment again with win11.

Why was I trying with a Surface Pro 8? It's not cheap, so why?  I was able to try it out, and I am going give it 
back to its owner. 

## New steps for local windows development

It was immediately obvious that I cannot set up Surface Pro 8 with only 8GB with my normal development setup.
The basic 8GB on these windows laptops cannot handle using IntelliJ and Docker together. If I was given at least 16GB 
model, or even better the 32GB model, it would entirely be possible.

## Notes on how to use 8GB

Remember, 4GB of memory is solidly needed to run Windows.  Do not get the basic 4GB Windows model at all for
development.

- Windows Subsystem for Linux (WSL), at this time, tries to use 8GB of memory.  If we want to try WSL with 8GB, we need
to change the configuration so WSL doesn't try to take all of the memory.  The configuration file is `%USER_PROFILE%/.wsl_config`
, i.e., `C:/Users/[USERNAME]/.wsl_config`, then we can set a max memory to use, as well as swap, etc.
- Docker is a nice to have and convenient to use.  It might be easier to set up different services, like a postgres or
redis db, or different apps you might want to build.
  - Instead of setting up my apps in a container, I was thinking using [asdf](https://github.com/asdf-vm/asdf) and 
  installing the languages locally.
  - Leave the required services, a database like postgres or mysql, to the docker container
  - A special note, Docker will use WSL and its configuration for memory.  I have configured WSL to use 1gb of memory,
  and 2gb of swap.  It hasn't been bad.
- Use a minimal editor for a better experience.  Visual Studio Code or Atom, are nice IDEs but any text editor would
be better than IntelliJ.  If I were to keep Intellij, I have to minimize my plugins and restrict its memory usage.

## Thinking about remote development

It might not be something I'd try to teach to new developers, just learning how to code or learning a framework like
ruby on rails or django, is _hard_ already.  Since I've been using docker and worked with cloud services like AWS,
Digital Ocean, Google Cloud Platform, Azure, it might be worth setting up a remote development environment.  I was
thinking a lot about how to teach using these platforms. 