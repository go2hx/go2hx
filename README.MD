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
- [Language support](#language-support)
    - [Compatibility Haxe targets](#compatibility-haxe-targets)
- [Installation](#installation)
- [Usage](#usage)
    - [Web server example](#web-server-example)
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

# Language support

The compiler supports a sub-specification of the Go language, written about in detail [here](./extra/docs/doc.md#sub-specification). 

The gist is that the language is compatible with Go's specification except when using cgo, [``runtime``](https://pkg.go.dev/runtime)/[``reflect``](https://pkg.go.dev/reflect) internals, [``unsafe``](https://pkg.go.dev/unsafe), or [``syscall``](https://pkg.go.dev/syscall).

There are many edge cases that limit the compiler from being able to produce correct library code. If you are wondering does "library/feature X work yet", the best way is to try the compiler out yourself.



## Compatible Haxe Targets

Supported: Hashlink.

Partially supported: Eval

Planned: C++, Jvm, Javascript.

Javascript can only be supported with a coroutine model.

## Installation


1. [Download Haxe 5.0.0+](https://haxe.org/download/version/5.0.0-preview.1/)
2. Hxcpp haxe library is required for the compiler


```sh
haxelib git hxcpp https://github.com/haxefoundation/hxcpp
```

3. Install the compiler
```sh
haxelib git go2hx https://github.com/go2hx/go2hx
```


## Usage

To compile a given library run the following command:

```sh
haxelib run go2hx [library_here]
```

Now include the outputted code into your build hxml or equivalent:
```hxml
--hxb-lib go2hx.zip
-w -WStaticInitOrder # temporarily required to hide a Haxe compiler warning
```

## Web server example
**Requires**
1. go2hx [installed](#installation)
2. hashlink [downloaded](https://hashlink.haxe.org/#download)

For example, to compile ``net/http`` to build a web server, run the command:
```sh
haxelib run go2hx net/http
```

Create a build.hxml file
```hxml
-m Main
--hxb-lib go2hx.zip
-w -WStaticInitOrder # temporarily required to hide a Haxe compiler warning
--hl test.hl
```
Create a Main.hx file:
```haxe
import go.net.http.Http;
function main() {
    Http.handleFunc("/hello", (response:ResponseWriter, request:Request) -> {
        response.write("HELLO THERE");
    });
    Sys.println("starting!");
    Http.listenAndServe("127.0.0.1:8090", null);
}
```

Run the resulting code:
```sh
haxe build.hxml
hl test.hl
```

After ``starting!`` is shown navigate to the webserver: http://localhost:8090/hello

Voila! A working all in Haxe webserver. The go2hx compiler only needs to be run again to add/update Go packages.

For more information check the [documentation](./extra/docs/doc.md)!


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