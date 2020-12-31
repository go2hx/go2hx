<p align="left"><img src="logo.png"/></p>
The Go to Haxe Language Transpiler
==========
<image>
**warning:** *experimental and still very much a work in progress.*

**caution:** *this program uses **gorename** to rename package uppercase/lowercase conflicts, it only renames non exported methods so it shouldn't break any libraries, however no guarantee.*
# Getting started
* if you don't have Golang download it [here](https://golang.org/dl/)
* if you don't have lix run: ``npm install lix -g``
* ``lix scope create``
* ``lix install https://github.com/PXshadow/go2hx``
* ``lix run ./main.go`` or ``lix run github.com/tidwall/btree``

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