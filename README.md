```sh
# Downloading a single video:
docker run --rm -v $PWD/downloads:/downloads youtube-dl https://www.youtube.com/watch?v=...

# Downloading multiple videos at once:
docker run --rm -v $PWD/downloads:/downloads -v $PWD/batch.txt:/batch.txt youtube-dl -a /batch.txt
```
