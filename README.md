# Generic PHP docker environment

1. Create a folder called `file_envs`

2. Put your application files in `file_envs`.

3. Run `start.sh` from the command line and answer the question.

DONE!

## If I want to run docker before having a real application in the `file_envs`

1. Go to `docker/env`

2. Build a image: `docker build -t myphpenv .`

3. Run the image as container: `docker run -tid --name myphpenv myphpenv`

4. Enters in the container: `docker exec -it myphpenv bash`
