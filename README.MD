Go Language to Haxe Language Transpiler
==========
**warning:** *early work in progress*

# Getting started
* add repo to environment PATH
* ```lix download``` or ```haxelib git bson https://github.com/kevinresol/bson && haxelib git polygonal-printf https://github.com/polygonal/printf```

* run command:  ```go build .```
* next: ```go2hx library_path``` (tip: you may need to add ./ before directory) this will create a bin folder with the transpiled command and build.hxml to run it.

# Roadmap

* Finish writing go's core standard library in haxe e.g strconv, strings, utf8, os, net, encoding, a lot of crypto.
* Go routines using haxe 4.2's coroutines.
* Pass the [test suite](https://github.com/pxshadow/go2hxtest)


# Inspiration
* Haxiomic's [dts2hx](https://github.com/haxiomic/dts2hx) (typescript defs to haxe externs)
* Elliott5's [tardisgo](https://github.com/tardisgo/tardisgo) (Go to Haxe written in Go)
* Simn's [hxparse](https://github.com/Simn/hxparse) and [haxeparser](https://github.com/Simn/haxeparser) (Haxe Lexer and Parser library)
* Alex's [formatter](https://github.com/HaxeCheckstyle/haxe-formatter) (Haxe code formatter)
* [gopherjs](https://github.com/gopherjs/gopherjs) (Go to Javascript compiler)