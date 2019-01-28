# word2vec
Docker container for running word2vec


To start iteractively. Note once you exit the shell the container will terminate:

```bash
docker run -it --rm --name word2vec sabderra/word2vec /bin/bash
```

Running a daemon allows the container to persist across interactive sessions. This is beneficial if you want to try different demo scripts and not take the hit of reloading all the data. 

```bash
docker run -d  --name word2vec sabderra/word2vec /bin/sh -c "while true; do sleep 300; done"
```

Then to connect:

```bash
docker exec -it word2vec bash
```
