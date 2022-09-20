<img src="logo.svg" width="270" align="right"/>

go2hx
==========
## Compile: Go -> Haxe -> C#, C++, Java, C/Hashlink

**warning:** *heavily experimental still a ways to go before an alpha.*


# Getting started
* [Download Go 1.16+](https://golang.org/dl/)
* [Download Haxe 4.3.0-rc.1 or later](https://build.haxe.org/builds/haxe/)
* *optional:* [Download Hashlink 1.12+](https://hashlink.haxe.org/#download) (better performance and used for testing)


Install:
```sh
haxelib git go2hx https://github.com/go2hx/go2hx
```

Local file compile and interp (good for prototyping):
```sh
haxelib run go2hx ./main.go --interp
```

## Standard library
[Supported libraries](./stdgo/stdgo.md)

example:

build.hxml
```hxml
-m Main
-lib go2hx
--interp
```
```haxe
import stdgo.sort.Sort.intsAreSorted;
import stdgo.unicode.Unicode.isSymbol;

function main() {
    trace(isSymbol(".".code));
    trace(intsAreSorted([30,24,67]));
}
```


## External libraries 
**warning:** *most libraries will not work because of the limited supported of the standard libraries*

create a go mod file:
```sh
go mod init test
```
get the library
```sh
go get golang.org/x/example/stringutil
```
compile with go2hx
```sh
haxelib run go2hx golang.org/x/example/stringutil
```



## Commendation

A spiritual successor to Tardisgo written by [Elliott Stoneham](https://github.com/elliott5),
A maintainer, mentor, and code contribuitor of this project. Elliott's wise counsel, solid engineering design, and effective programming is the core of this project and go2hx would not exist without him.

## Build from source

```
haxelib dev go2hx .
```

Look at [Run.hx](./Run.hx) to see how the building occurs.