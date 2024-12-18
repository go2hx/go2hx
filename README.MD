<img src="logo.svg" width="270" align="right"/>

go2hx
==========
> [!WARNING]  
> experimental version, not able to compile most Go code correctly.

Compile [Go](https://go.dev) to [Haxe](https://haxe.org).


If you want to use Go libraries without setting up the compiler try [go2hxlibs](https://github.com/go2hx/go2hxlibs?tab=readme-ov-file#go2hxlibs) for precompiled working libraries.


### What is supported?

* A few std libs ([compatibility](https://go2hx.github.io/)).
* No support for Cgo and Go assembly
* 95% of the normal language features

### Installation
* [Download Go 1.20+](https://golang.org/dl/)
* [Download Haxe 4.3.2+](https://build.haxe.org/builds/haxe/)


```sh
haxelib git go2hx https://github.com/go2hx/go2hx
```

Run compiler on a library:
> [!CAUTION]
> Almost all libs will not work yet, because of missing stdlib support.

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
haxelib dev go2hx go2hx
haxe --run Run build
```
Now you can run the compiler, for example on a go test file:
```sh
haxelib run go2hx ./main.go --rebuild --interp
```


> [!TIP]
> Use the --rebuild command to have the compiler build every time it is called, useful when making active changes to the compiler and testing it by running it.

## Using the compiler development environment

After you have [setup from source](#setup-from-source) and **ran the compiler at least once** you should be able to use the dev tools, here is the list and how they work.

* ``haxe rnd.hxml`` : rnd stands for research and development, it's a quirky name for a test bed that runs ``./rnd/main.go`` use it for rapid testing of go snippets and comparison with go output.
* ``haxe scripts/stdgo.hxml`` : (requires nodejs) go's standard library generator, all std pkgs compiled are added into ``./stdgo/*`` for generating specific std go libs use the ``-D libs`` flag. For example to compile ``unicode/utf8`` and ``strings`` run: ``haxe scripts/stdgo.hxml -D libs=unicode/utf8,strings``

* ``haxe tests/tests.hl [suite]`` : ([requires hashlink](https://hashlink.haxe.org/#download)) and nodejs A multi suite test runner with a built in regression tracker, used primarily by github actions to test for progression and regression of every commit to the project. [suite] can be any of the following added as an argument: unit, stdgo, yaegi, gobyexample, go . For example ``haxe tests/tests.hxml -D std``

* ``haxe stdgo/[std].hxml --[target]`` : A series of hxml files created by running the stdgo test suite. Every stdlib listed in ``./tests.json`` has an hxml file created at ``./stdgo`` root folder. For example to run ``unicode/utf16`` with the ``interp`` target : ``haxe stdgo/unicode_utf16.hxml --interp``