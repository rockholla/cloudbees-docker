# How to use this DSE workspace

Start by looking at [the dependencies you need to have installed on your workstation](../README.md)

## Clone, or symlink existing clones here

From this directory:

```
git clone git@github.com:cloudbees/support-shinobi-tools.git shinobi-tools
git clone git@github.com:cloudbees/support-kb-articles.git kb-articles
git clone git@github.com:cloudbees/insights.git insights
```

or if you already have clones in other locations locally, you can simply symlink from this directory, like:

```
ln -s [your shinobi tools clone location] ./shinobi-tools
ln -s [your kb articles clone location] ./kb-articles
ln -s [your insights clone location] ./insights
```

## Bring up the Docker container

1. Copy `config.template` to `config` and set your values within
2. Run `docker-compose up -d --build`

Connect to the container to run things like shinobi tools, maven tests for probes, etc: `./connect.sh` or `docker exec -it cloudbees_dse_workspace /bin/bash -l`. When connecting, everything on the box will be initialized if it hasn't been already, internal maven settings download, shinobi install, etc.

## Things you can do in the container

```
nexus-download
```
this will re-run the nexus-m2-settings download

```
shinobi case 48739
shinobi ...
```
run shinobi commands, for support bundle downloads, they'll be downloaded to the `support` directory within this `dse-workspace` directory

```
cd /root/insights/insights-probes
mvn test
```
Run tests for probes

## Things I'm not sure about yet

* Not sure if everything in shinobi works yet in this setup, I've only been using a few things, so will continue to test everything out as I go
