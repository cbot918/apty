# apty
template: build a local debian package

<br/>

## Environment
- Debian Linux (test in ubuntu 20.04)
- it is welcome to test in ubuntu vm
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
pkg info
```
dpkg-deb --info ~/example/hello-world_0.0.1.deb
dpkg-deb --contents ~/example/hello-world_0.0.1.deb
```
delete pkg
```
sudo apt remove hello-world
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
