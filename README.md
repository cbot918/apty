# apty
tutorial: build a local debian package

<br/>

## Getting Started
```
make build
// create hello-world_0.0.1-1_amd64.deb

sudo apt install -f ./hello-world_0.0.1-1_amd64.deb
// perform install

hello-world
// hello packaged world

which hello-world
// /usr/local/bin/hello-world
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

<br/>

## Reference Tutor
https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/