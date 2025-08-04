<div align="center">

<img src="extra/images/logo.svg" width="300"/>

[![build](https://github.com/go2hx/go2hx/actions/workflows/main.yml/badge.svg)](https://github.com/go2hx/go2hx/actions/workflows/main.yml) ![Static Badge](https://img.shields.io/badge/target-hashlink-darkgreen)
![Static Badge](https://img.shields.io/badge/target-eval-darkgreen)
 [![Discord](https://img.shields.io/discord/162395145352904705.svg?logo=discord)](https://discord.gg/jgPcqC7DY2)

Import Go libraries into your Haxe projects.

Imported Go libraries can be used across all supported [Haxe targets](#compatibility-haxe-targets).

Think of go2hx as a replacement for nodejs + the npm ecosystem:

1. No externs required
2. Concurrent by default
3. No reliance on javascript

> A spiritual successor to [Elliott Stoneham's compiler](#credits)

</div>

# Tables of contents
- [Why?](#why)
- [Compatibility](#compatibility)
    - [Compatibility Haxe targets](#compatibility-haxe-targets)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
    - [net/http](#nethttp)
- [Latest video on youtube](#latest-update-on-youtube)
- [Setup from source](#setup-from-source)
- [Community](#community)
- [Credits](#credits)

# Why

The Go programming language fills in the gap for some of Haxe's biggest weaknesses, that being:
- Small ecosystem
- Lack of documentation
- Lack of cross target libraries

Go can be seen as an alternative to Nodejs:

traits | go2hx | nodejs | 
|-------|-----| ---- |
| No externs needed | ️️✅ | ❌
| Cross target | ✅ | ❌
| Large ecosystem | ✅ | ✅
| Thread support | ✅ | ❌
| Production ready | ❌ | ✅
| Has tests | ✅ | ❌
| Can create a web server | ✅ | ✅
| Underlying code statically typed | ️️✅ | ❌

# Compatibility

The compiler supports a sub-specification of the Go language, written about in detail [here](./doc/compatibility.md). The gist is that the language is compatible (besides a few corner cases). The stdlibs are partially compatible. 

Finally outside of the sub-specification and therefore not supported are cgo, the runtime internals, unsafe, and syscall.


## Compatibility Haxe Targets

Supported: Eval, Hashlink.

Want to support in the future: C++, Jvm, Javascript.

Javascript can only be supported with a coroutine model.

## Installation

> [!WARNING]  
> Early alpha version, not able to compile most Go code correctly


* [Download Haxe 5.0.0+](https://haxe.org/download/version/5.0.0-preview.1/)
* Hxcpp haxe library is required for the compiler


```sh
haxelib git hxcpp https://github.com/haxefoundation/hxcpp
```

## Usage

To compile a given library run the following command:

```sh
haxelib run go2hx [library_here]
```

Now include the outputted code into your build hxml or equivalent:
```hxml
--hxb-lib go2hx.zip
```

## Web server example
For example, to compile ``net/http`` to build a web server, run the command:
```sh
haxelib run go2hx net/http
```

Create a build.hxml file
```hxml
-m Main
--hxb-lib go2hx.zip
--hl test.hl
```
Create a Main.hx file:
```haxe
import go.net.http.Http;
function main() {
    var mux = Http.newServeMux();
    mux.handleFunc("/hello", (response:ResponseWriter, request:Request) -> {
        response.write("HELLO THERE");
    });
    Sys.println("starting!");
    Http.listenAndServe("127.0.0.1:8090", stdgo.Go.asInterface(mux));
}
```

Run the resulting code:
```sh
haxe build.hxml
hl test.hl
```

After ``starting!`` is shown navigate to the webserver: http://localhost:8090/hello

Voila! A working all in Haxe webserver. The go2hx compiler only needs to be run again to add/update Go packages.


### Latest update on Youtube
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/qVaynJJ941M/0.jpg)](https://www.youtube.com/watch?v=qVaynJJ941M)

## Setup from source

Clone the repo using the recursive flag:
```sh
git clone --recursive https://github.com/go2hx/go2hx
```

```sh
cd go2hx
haxelib dev go2hx .
haxelib run go2hx build
```

## Community

[Haxe #go2hx discord channel](https://discord.gg/jgPcqC7DY2).
Read the [contributing guide](./CONTRIBUTING.MD) for insights and information on adding code into the project.

# Credits

A spiritual successor to Tardisgo written by [Elliott Stoneham](https://github.com/elliott5),
A maintainer, mentor, and code contributor of this project, go2hx would not exist without him.