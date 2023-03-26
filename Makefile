pre:
	sudo apt-get install -y gcc dpkg-dev gpg

bin:
	gcc -o hello-world hello.c

build:
	dpkg --build ./hello-world_0.0.1-1_amd64

local-install:
	sudo apt install -f ./hello-world_0.0.1-1_amd64.deb

test:
	hello-world && which hello-world

#####

serve:
	python3 -m http.server

config:
	echo "deb [arch=amd64] http://127.0.0.1:8000/apt-repo stable main" | sudo tee /etc/apt/sources.list.d/example.list

install:
	sudo apt-get update --allow-insecure-repositories
	sudo apt-get install hello-world

remove:
	sudo apt-get remove hello-world