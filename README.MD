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

## Good to know

### npx prefix
Commands in this documentation such as: ``haxe`` and ``haxelib`` may have ``npx`` as a prefix, that's because in those cases the command is using the local npm package lix to run Haxe, this is optional and if you would like to use non lix commands that's supported as well.



## Setup from source


```sh
git clone https://github.com/go2hx/go2hx
npm i lix
npx lix download
cd go2hx
haxelib dev go2hx .
```
Now you can run the compiler, for example:
```sh
npx haxelib run go2hx ./main.go 
```


Look at [Run.hx](./Run.hx) to see how the building occurs.

## Using the compiler development environment

After you have [setup from source](#setup-from-source) and **ran the compiler at least once** you should be able to use the dev tools, here is the list and how they work.

* ``npx haxe rnd.hxml`` : rnd stands for research and development, it's a quirky name for a test bed that runs ``./rnd/main.go`` use it for rapid testing of go snippets and comparison with go output.
* ``npx haxe stdgo.hxml`` : (requires nodejs) go's standard library generator, all std pkgs compiled are added into ``./stdgo/*`` for generating specific std go libs use the ``-D libs`` flag. For example to compile ``unicode/utf8`` and ``strings`` run: ``npx haxe stdgo.hxml -D libs=unicode/utf8,strings``

* ``npx tests.hxml && hl tests.hl [suite]`` : ([requires hashlink](https://hashlink.haxe.org/#download)) A multi suite test runner with a built in regression tracker, used primarily by github actions to test for progression and regression of every commit to the project. [suite] can be any of the following added as an argument: unit, stdgo, yaegi, gobyexample, go . For example ``npx tests.hxml && hl tests.hl stdgo`` . Note ``&&`` separates out 2 arguments for ``unix`` for windows you may need to use ``||``

* ``npx haxe stdgo/[std].hxml --[target]`` : A series of hxml files created by running the stdgo test suite. Every stdlib listed in ``./tests.json`` has an hxml file created at ``./stdgo`` root folder. For example to run ``unicode/utf16`` with the ``interp`` target : ``npx haxe stdgo/unicode_utf16.hxml --interp``