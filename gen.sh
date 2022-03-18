export DOCKER_BUILDKIT=1
docker build --no-cache -f ./docker/Dockerfile.xfce.python \
--build-arg BUILDKIT_INLINE_CACHE=1 \
--build-arg BASEIMAGE=ubuntu \
--build-arg BASETAG=20.04 \
--build-arg ARG_CREATED=2022-03-17T13:22:45Z \
--build-arg ARG_DOCKER_TAG=1.0 \
--build-arg ARG_VERSION_STICKER=null \
--build-arg ARG_VCS_REF=0abf5d0 \
--build-arg ARG_APT_NO_RECOMMENDS=1 \
--build-arg ARG_MERGE_STAGE_BROWSER_BASE=stage_firefox \
--build-arg ARG_FINAL_STAGE_BASE=stage_python \
--build-arg ARG_FINAL_STAGE_BASE=stage_vscode \
--build-arg ARG_VNC_PW=digitalorganic \
--build-arg ARG_HEADLESS_USER_NAME=ubuntu \
-t digitalorganic/desktop-python-firefox:1.0 ./docker
