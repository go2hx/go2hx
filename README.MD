<div align="center">

Import Go libraries into your Haxe projects.

<img src="extra/images/logo.svg" width="300"/>

[![build](https://github.com/go2hx/go2hx/actions/workflows/main.yml/badge.svg)](https://github.com/go2hx/go2hx/actions/workflows/main.yml) [![Discord](https://img.shields.io/discord/162395145352904705.svg?logo=discord)](https://discord.gg/jgPcqC7DY2)

> Spiritual successor to [Elliott Stoneham's compiler](#credits)

</div>

## Installation

> [!WARNING]  
> Early alpha version, not able to compile most Go code correctly


* [Download Haxe 4.3.2+](https://build.haxe.org/builds/haxe/)
* Hxcpp haxe library is required for the compiler


```sh
haxelib git hxcpp https://github.com/haxefoundation/hxcpp
```

## Getting started

Compile a Go library (example: unicode) to Haxe with the following command line:
```sh
haxelib run go2hx unicode
```

Now include the outputted code into your project hxml or equivalent:
```hxml
-cp golibs
--macro Go2hxMacro.init()
```

You can now import the Go library and use it in your Haxe project (example: unicode):
```haxe
import stdgo.unicode.Unicode;
function main() {
    trace(Unicode.isGraphic('g'.code));
}
```

See the [website](https://go2hx.github.io) for more details.


### Latest update on Youtube
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/qVaynJJ941M/0.jpg)](https://www.youtube.com/watch?v=qVaynJJ941M)

# Project status

The project is currently in a early alpha state. Not able to compile most Go code. Most Go language features are extensively tested and will likely work in isolation, that are not explicated excluded such as generics and unsafe.

## Setup from source

Clone the repo using recursive, as the project relies on git submodules.
```sh
git clone --recursive https://github.com/go2hx/go2hx
```

```sh
cd go2hx
haxelib dev go2hx .
haxelib run go2hx build
```

In case you forgot to add ``--recursive``:
```sh
git submodule update --init --recursive
```

## Join in on the fun!

[Haxe #go2hx discord channel](https://discord.gg/jgPcqC7DY2).
Read the [contributing guide](./CONTRIBUTING.MD) for insights and information on adding code into the project.

# Credits

A spiritual successor to Tardisgo written by [Elliott Stoneham](https://github.com/elliott5),
A maintainer, mentor, and code contributor of this project, go2hx would not exist without him.