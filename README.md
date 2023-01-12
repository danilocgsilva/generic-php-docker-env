# Generic PHP docker environment

1. Put your application files in `www`.

2. Run `start.sh` from the command line and answer the question.

DONE!

**Note:** you may change environment data from `.env` file.

## If I want to run docker before having a real application in the `file_envs`

1. Go to `docker/env`

2. Build a image: `docker build -t myphpenv .`

3. Run the image as container: `docker run -tid --name myphpenv myphpenv`

4. Enters in the container: `docker exec -it myphpenv bash`
