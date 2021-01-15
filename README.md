# aact database - docker

Build docker postgres image with latest snapshot from clinicaltrials.gov (https://aact.ctti-clinicaltrials.org/snapshots).

## Build

```
docker build -t aact-db .
```

## Deploy

```
docker run -p 5432:5432 aact-db
```

