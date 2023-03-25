# apty
tutorial: build a local debian package

<br/>

## Getting Started
```
sudo apt install -y gcc dpkg-dev gpg make
// install prerequesties

dpkg --build ./hello-world_0.0.1-1_amd64
// should create .deb file

sudo apt install -f ./hello-world_0.0.1-1_amd64.deb
// should perform install

hello-world && which hello-world
// print and show path
```

<br/>

## Other Command
delete pkg
```
dpkg-deb --info ~/example/hello-world_0.0.1.deb
dpkg-deb --contents ~/example/hello-world_0.0.1.deb
sudo apt delete hello-world
```

<br/>

## 檔案說明
### hello-world_0.0.1-1_amd64
- packagename_version_releasenumber_architecture
### hello-world_0.0.1-1_amd64/DEBIAN/control
- 固定格式：pkg資訊
### usr/local/bin/hello-world
- 安裝的 binary executable
### Makefile
- convenient commands

<br/>

## Reference Tutor
https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/