<img src="logo.svg" width="270" align="right"/>

go2hx
==========
*warning: experimental version.*

Source-to-Source Go to Haxe compiler.


### What is supported?

* A few std libs ([compatibility](https://go2hx.github.io/stdgo/index.html)).
* No support for Cgo and Go assembly

### Installation
* [Download Go 1.16+](https://golang.org/dl/)
* [Download Haxe 4.3.0-rc.1 or later](https://build.haxe.org/builds/haxe/)
* *optional:* [Download Hashlink 1.12+](https://hashlink.haxe.org/#download) (better performance and used for testing)


```sh
haxelib git go2hx https://github.com/go2hx/go2hx
```
Create a main.go to find good small test programs look at [gobyexample](https://gobyexample.com/):
```go
package main
func main() {
    println("hello world")
}
```
Run compiler:
```sh
haxelib run go2hx ./main.go
```


## External libraries (3rd party) 
**warning:** *most libraries will not work because of the limited supported of the standard libraries*


```sh
haxelib run go2hx golang.org/x/example/stringutil
```



## Commendation

A spiritual successor to Tardisgo written by [Elliott Stoneham](https://github.com/elliott5),
A maintainer, mentor, and code contribuitor of this project. Elliott's wise counsel, solid engineering design, and effective programming is the core of this project and go2hx would not exist without him.

## Setup from source


```sh
git clone https://github.com/go2hx/go2hx
cd go2hx
haxelib dev go2hx .
```
Then run the compiler on go code:
```sh
haxelib run go2hx ./main.go 
```


Look at [Run.hx](./Run.hx) to see how the building occurs.