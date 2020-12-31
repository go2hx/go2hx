Go Language to Haxe Language Transpiler
==========
**warning:** *experimental and still very much a work in progress*

# How to build
* if you don't have lix run: ```npm install lix -g```
* ```lix download```
* ```haxe build.hxml```

# Roadmap

* Finish writing go's core standard library in haxe e.g strconv, strings, utf8, os, net, encoding, a lot of crypto.
* Go routines using haxe 4.2's coroutines.
* Pass the [test suite](https://github.com/pxshadow/go2hxtest)


# Inspiration
* Haxiomic's [dts2hx](https://github.com/haxiomic/dts2hx) (typescript defs to haxe externs)
* Elliott5's [tardisgo](https://github.com/tardisgo/tardisgo) (Go to Haxe written in Go)
* Alex's [formatter](https://github.com/HaxeCheckstyle/haxe-formatter) (Haxe code formatter)
* Simn's [hxparse](https://github.com/Simn/hxparse) and [haxeparser](https://github.com/Simn/haxeparser) (Haxe Lexer and Parser library)
* [gopherjs](https://github.com/gopherjs/gopherjs) (Go to Javascript compiler)