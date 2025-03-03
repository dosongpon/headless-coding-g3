# Headless Ubuntu/Xfce containers with VNC/noVNC for programming

## Project `accetto/headless-coding-g3`

***

[Docker Hub][this-docker] - [Changelog][this-changelog] - [Wiki][sibling-wiki] - [Discussions][sibling-discussions]

![badge-github-release][badge-github-release]
![badge-github-release-date][badge-github-release-date]
![badge-github-stars][badge-github-stars]
![badge-github-forks][badge-github-forks]
![badge-github-open-issues][badge-github-open-issues]
![badge-github-closed-issues][badge-github-closed-issues]
![badge-github-releases][badge-github-releases]
![badge-github-commits][badge-github-commits]
![badge-github-last-commit][badge-github-last-commit]

<!-- ![badge-github-workflow-dockerhub-autobuild][badge-github-workflow-dockerhub-autobuild] -->
<!-- ![badge-github-workflow-dockerhub-post-push][badge-github-workflow-dockerhub-post-push] -->

This repository contains resources for building Docker images based on [Ubuntu 20.04 LTS][docker-ubuntu] with [Xfce][xfce] desktop environment and [VNC][tigervnc]/[noVNC][novnc] servers for headless use and selected applications for programming. Adding more tools requires usually only a single or just a few commands. The instructions are in the provided README files and some simple test applications are also already included.

All images can optionally include also the web browsers [Chromium][chromium] or [Firefox][firefox].

The resources for the individual images and their variations (tags) are stored in the subfolders of the **master** branch. Each image has its own README file describing its features and usage.

This is a sibling project to the project [accetto/ubuntu-vnc-xfce-g3][sibling-github], which contains the detailed description of the third generation (G3) of my Docker images. Please check the [sibling project README][sibling-readme] and the [sibling Wiki][sibling-wiki] for common information.

## TL;DR

I try to keep the images slim. Consequently you can encounter missing dependencies while adding more applications yourself. You can track the missing libraries on the [Ubuntu Packages Search][ubuntu-packages-search] page and install them subsequently.

You can also try to fix it by executing the following (the default `sudo` password is **headless**):

```shell
### apt cache needs to be updated only once
sudo apt-get update

sudo apt --fix-broken install
```

There are currently resources for the following Docker images:

- [accetto/ubuntu-vnc-xfce-nodejs-g3][accetto-docker-ubuntu-vnc-xfce-nodejs-g3]
  - [full Readme][this-readme-image-nodejs]
  - [Dockerfile][this-dockerfile-nodejs]
  - [Dockerfile stages diagram][this-diagram-dockerfile-stages-nodejs]
- [accetto/ubuntu-vnc-xfce-postman-g3][accetto-docker-ubuntu-vnc-xfce-postman-g3]
  - [full Readme][this-readme-image-postman]
  - [Dockerfile][this-dockerfile-postman]
  - [Dockerfile stages diagram][this-diagram-dockerfile-stages-postman]
- [accetto/ubuntu-vnc-xfce-python-g3][accetto-docker-ubuntu-vnc-xfce-python-g3]
  - [full Readme][this-readme-image-python]
  - [Dockerfile][this-dockerfile-python]
  - [Dockerfile stages diagram][this-diagram-dockerfile-stages-python]
  - [Dockerfile][this-dockerfile-python-bonus-gui-frameworks] for bonus images with GUI frameworks (bonus branch)
  - [Dockerfile stages diagram][this-diagram-dockerfile-stages-python-bonus] (bonus branch)
- `accetto/headless-coding-g3` base images (not published on Docker Hub)
  - [Dockerfile stages diagram][this-diagram-dockerfile-stages-xfce]

The fastest way to build the images locally:

```shell
### PWD = project root
./docker/hooks/build dev nodejs
./docker/hooks/build dev nodejs-chromium
./docker/hooks/build dev nodejs-vscode
./docker/hooks/build dev nodejs-vscode-chromium
./docker/hooks/build dev nodejs-vscode-firefox
./docker/hooks/build dev nodejs-current
./docker/hooks/build dev nodejs-vnc
./docker/hooks/build dev nodejs-vnc-chromium
./docker/hooks/build dev nodejs-vnc-vscode
./docker/hooks/build dev nodejs-vnc-vscode-chromium
./docker/hooks/build dev nodejs-vnc-vscode-firefox
./docker/hooks/build dev nodejs-vnc-current
./docker/hooks/build dev nodejs-vnc-chromium-current
./docker/hooks/build dev nodejs-vnc-vscode-chromium-current
./docker/hooks/build dev nodejs-vnc-vscode-firefox-current

./docker/hooks/build dev postman
./docker/hooks/build dev postman-chromium
./docker/hooks/build dev postman-firefox
./docker/hooks/build dev postman-vnc
./docker/hooks/build dev postman-vnc-chromium
./docker/hooks/build dev postman-vnc-firefox

./docker/hooks/build dev python
./docker/hooks/build dev python-chromium
./docker/hooks/build dev python-vscode
./docker/hooks/build dev python-vscode-chromium
./docker/hooks/build dev python-vscode-firefox
./docker/hooks/build dev python-vnc
./docker/hooks/build dev python-vnc-chromium
./docker/hooks/build dev python-vnc-vscode
./docker/hooks/build dev python-vnc-vscode-chromium
./docker/hooks/build dev python-vnc-vscode-firefox

### from the branch 'bonus-images-python-gui-frameworks'
./docker/hooks/build dev python-vnc-tkinter
./docker/hooks/build dev python-vnc-wxpython
./docker/hooks/build dev python-vnc-pyqt5
./docker/hooks/build dev python-vnc-pyside2
./docker/hooks/build dev python-vnc-pyside6
./docker/hooks/build dev python-vnc-kivy
./docker/hooks/build dev python-vnc-tkinter-vscode
./docker/hooks/build dev python-vnc-tkinter-vscode-chromium
./docker/hooks/build dev python-vnc-novnc-tkinter
```

You can also use the provided helper script `builder.sh`, which can also publish the images on Docker Hub, if you correctly set the required environment variables (see the file `example-secrets.rc`). Check the files `local-builder-readme.md` and `local-building-example.md`.

Find more in the hook script `env.rc` and in the [sibling Wiki][sibling-wiki].

## Implicit base images

This project contains also resources for building the base images without the applications for programming. Because those images would be actually equivalent to the images from the [sibling project][sibling-github], they will not be built or published on Docker Hub. However, you can build them yourself locally any time you wish.

The [source repository][this-github] contains also the branch `bonus-images-python-gui-frameworks`, which allows building images already including the most popular Python GUI frameworks. Those images could be occasionally pushed to Docker Hub, but there will be no effort to do it regularly. However, you can built them locally any time.

## Issues, Wiki and Discussions

If you have found a problem or you just have a question, please check the [Issues][this-issues], the [sibling Issues][sibling-issues] and the [sibling Wiki][sibling-wiki] first. Please do not overlook the closed issues.

If you do not find a solution, you can file a new issue. The better you describe the problem, the bigger the chance it'll be solved soon.

If you have a question or an idea and you don't want to open an issue, you can use the [sibling Discussions][sibling-discussions].

## Credits

Credit goes to all the countless people and companies, who contribute to open source community and make so many dreamy things real.

***

<!-- this project -->

[this-docker]: https://hub.docker.com/u/accetto/

[this-changelog]: https://github.com/accetto/headless-coding-g3/blob/master/CHANGELOG.md
[this-github]: https://github.com/accetto/headless-coding-g3/
[this-issues]: https://github.com/accetto/headless-coding-g3/issues

[this-dockerfile-nodejs]: https://github.com/accetto/headless-coding-g3/blob/master/docker/Dockerfile.xfce.nodejs
[this-readme-image-nodejs]: https://github.com/accetto/headless-coding-g3/blob/master/docker/xfce-nodejs/README.md

[this-dockerfile-postman]: https://github.com/accetto/headless-coding-g3/blob/master/docker/Dockerfile.xfce.postman
[this-readme-image-postman]: https://github.com/accetto/headless-coding-g3/blob/master/docker/xfce-postman/README.md

[this-dockerfile-python]: https://github.com/accetto/headless-coding-g3/blob/master/docker/Dockerfile.xfce.python
[this-dockerfile-python-bonus-gui-frameworks]: https://github.com/accetto/headless-coding-g3/blob/bonus-images-python-gui-frameworks/docker/Dockerfile.xfce.python
[this-readme-image-python]: https://github.com/accetto/headless-coding-g3/blob/master/docker/xfce-python/README.md

[accetto-docker-ubuntu-vnc-xfce-nodejs-g3]: https://hub.docker.com/r/accetto/ubuntu-vnc-xfce-nodejs-g3
[accetto-docker-ubuntu-vnc-xfce-postman-g3]: https://hub.docker.com/r/accetto/ubuntu-vnc-xfce-postman-g3
[accetto-docker-ubuntu-vnc-xfce-python-g3]: https://hub.docker.com/r/accetto/ubuntu-vnc-xfce-python-g3

<!-- diagrams -->

[this-diagram-dockerfile-stages-xfce]: https://raw.githubusercontent.com/accetto/headless-coding-g3/master/docker/doc/images/Dockerfile.xfce.png
[this-diagram-dockerfile-stages-nodejs]: https://raw.githubusercontent.com/accetto/headless-coding-g3/master/docker/doc/images/Dockerfile.xfce.nodejs.png
[this-diagram-dockerfile-stages-python]: https://raw.githubusercontent.com/accetto/headless-coding-g3/master/docker/doc/images/Dockerfile.xfce.python.png
[this-diagram-dockerfile-stages-python-bonus]: https://raw.githubusercontent.com/accetto/headless-coding-g3/master/docker/doc/images/Dockerfile.xfce.python-bonus.png
[this-diagram-dockerfile-stages-postman]: https://raw.githubusercontent.com/accetto/headless-coding-g3/master/docker/doc/images/Dockerfile.xfce.postman.png

<!-- sibling project -->

[sibling-discussions]: https://github.com/accetto/ubuntu-vnc-xfce-g3/discussions
[sibling-github]: https://github.com/accetto/ubuntu-vnc-xfce-g3/
[sibling-issues]: https://github.com/accetto/ubuntu-vnc-xfce-g3/issues
[sibling-readme]: https://github.com/accetto/ubuntu-vnc-xfce-g3/blob/master/README.md
[sibling-wiki]: https://github.com/accetto/ubuntu-vnc-xfce-g3/wiki

<!-- external links -->

[docker-ubuntu]: https://hub.docker.com/_/ubuntu/
[ubuntu-packages-search]: https://packages.ubuntu.com/

[chromium]: https://www.chromium.org/Home
[firefox]: https://www.mozilla.org
[novnc]: https://github.com/kanaka/noVNC
[tigervnc]: http://tigervnc.org
[xfce]: http://www.xfce.org

<!-- github badges -->

[badge-github-workflow-dockerhub-autobuild]: https://github.com/accetto/headless-coding-g3/workflows/dockerhub-autobuild/badge.svg

[badge-github-workflow-dockerhub-post-push]: https://github.com/accetto/headless-coding-g3/workflows/dockerhub-post-push/badge.svg

[badge-github-release]: https://badgen.net/github/release/accetto/headless-coding-g3?icon=github&label=release

[badge-github-release-date]: https://img.shields.io/github/release-date/accetto/headless-coding-g3?logo=github

[badge-github-stars]: https://badgen.net/github/stars/accetto/headless-coding-g3?icon=github&label=stars

[badge-github-forks]: https://badgen.net/github/forks/accetto/headless-coding-g3?icon=github&label=forks

[badge-github-releases]: https://badgen.net/github/releases/accetto/headless-coding-g3?icon=github&label=releases

[badge-github-commits]: https://badgen.net/github/commits/accetto/headless-coding-g3?icon=github&label=commits

[badge-github-last-commit]: https://badgen.net/github/last-commit/accetto/headless-coding-g3?icon=github&label=last%20commit

[badge-github-closed-issues]: https://badgen.net/github/closed-issues/accetto/headless-coding-g3?icon=github&label=closed%20issues

[badge-github-open-issues]: https://badgen.net/github/open-issues/accetto/headless-coding-g3?icon=github&label=open%20issues
