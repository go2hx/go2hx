<img src="logo.svg" width="320" align="right"/>

go2hx
==========
## Compile: Go -> Haxe -> Js, Lua, C#, C++, Java, C, Python

**warning:** *heavily experimental still a ways to go before an alpha.*

Come give feedback on what [Go libraries you want  supported!](https://github.com/go2hx/go2hx/issues/67)


# Getting started
* [Download Go 1.16+](https://golang.org/dl/)
* [Download Haxe 4.2.0+](https://haxe.org/download/)
* [Download Hashlink](https://hashlink.haxe.org/)
```
haxelib git go2hx https://github.com/go2hx/go2hx
```

```
haxelib run go2hx ./main.go
```

*Shows percentage of tests passing out of total*

<img src="graph.png" align="center"/></p>

## Supported Spec

* defer
* slice append and slice/array/map indexing
* type switches and switches
* if statements, nil checks, equality, for loops, range
* interface{} and asserts
* field access, binary operators
* most number types
* pointers
* structs/interfaces/aliases*

### Standard library support

* a little os, fmt, reflect, time, math
* most of builtin

## Acknowledgement

A spiritual successor to Tardisgo written by [Elliott Stoneham](https://github.com/elliott5), The developer that has set the building blocks conceptually for this project, as well as a code contributor, with use of some of his code from Tardisgo.

## Build from source

*dependencies: haxe, go, [utest](https://github.com/haxe-utest/utest)*

```
haxelib dev go2hx .
```
Look at Run.hx to see how the building occurs.