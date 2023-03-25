pre:
	sudo apt-get install -y gcc dpkg-dev gpg

bin:
	gcc -o hello-world hello.c

build:
	dpkg --build ./hello-world_0.0.1-1_amd64

install:
	sudo apt install -f ./hello-world_0.0.1-1_amd64.deb

test:
	hello-world && which hello-world