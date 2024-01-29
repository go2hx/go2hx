# Module: `stdgo.compress.zlib`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testfileleveldict>)

- [`function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_testfileleveldictreset>)

- [`function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void`](<#function-_testleveldict>)

- [`function newReader(_r:stdgo._internal.io.Reader):Void`](<#function-newreader>)

- [`function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newreaderdict>)

- [`function newWriter(_w:stdgo._internal.io.Writer):Void`](<#function-newwriter>)

- [`function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):Void`](<#function-newwriterlevel>)

- [`function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void`](<#function-newwriterleveldict>)

- [`function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecompressor>)

- [`function testWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriter>)

- [`function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterbig>)

- [`function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterdict>)

- [`function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterdictisused>)

- [`function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriterreset>)

- [typedef Resetter](<#typedef-resetter>)

- [typedef T\_reader](<#typedef-t_reader>)

- [typedef T\_reader\_asInterface](<#typedef-t_reader_asinterface>)

- [typedef T\_reader\_static\_extension](<#typedef-t_reader_static_extension>)

- [typedef T\_zlibTest](<#typedef-t_zlibtest>)

- [typedef Writer](<#typedef-writer>)

- [typedef Writer\_asInterface](<#typedef-writer_asinterface>)

- [typedef Writer\_static\_extension](<#typedef-writer_static_extension>)

# Variables


```haxe
import stdgo.compress.zlib.Zlib
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _data:Dynamic
```


```haxe
var _filenames:Dynamic
```


```haxe
var _zlibDeflate:Dynamic
```


```haxe
var _zlibMaxWindow:Dynamic
```


```haxe
var _zlibTests:Dynamic
```


```haxe
var bestCompression:Dynamic
```


```haxe
var bestSpeed:Dynamic
```


```haxe
var defaultCompression:Dynamic
```


```haxe
var errChecksum:Dynamic
```


```haxe
var errDictionary:Dynamic
```


```haxe
var errHeader:Dynamic
```


```haxe
var huffmanOnly:Dynamic
```


```haxe
var noCompression:Dynamic
```


# Functions


```haxe
import stdgo.compress.zlib.Zlib
```


## function \_testFileLevelDict


```haxe
function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```


[\(view code\)](<./Zlib.hx#L26>)


## function \_testFileLevelDictReset


```haxe
function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Zlib.hx#L28>)


## function \_testLevelDict


```haxe
function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void
```


[\(view code\)](<./Zlib.hx#L27>)


## function newReader


```haxe
function newReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Zlib.hx#L20>)


## function newReaderDict


```haxe
function newReaderDict(_r:stdgo._internal.io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Zlib.hx#L21>)


## function newWriter


```haxe
function newWriter(_w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Zlib.hx#L23>)


## function newWriterLevel


```haxe
function newWriterLevel(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt):Void
```


[\(view code\)](<./Zlib.hx#L24>)


## function newWriterLevelDict


```haxe
function newWriterLevelDict(_w:stdgo._internal.io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Zlib.hx#L25>)


## function testDecompressor


```haxe
function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L22>)


## function testWriter


```haxe
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L29>)


## function testWriterBig


```haxe
function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L30>)


## function testWriterDict


```haxe
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L31>)


## function testWriterDictIsUsed


```haxe
function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L33>)


## function testWriterReset


```haxe
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Zlib.hx#L32>)


# Typedefs


```haxe
import stdgo.compress.zlib.*
```


## typedef Resetter


```haxe
typedef Resetter = stdgo._internal.compress.zlib.Resetter;
```


## typedef T\_reader


```haxe
typedef T_reader = Dynamic;
```


## typedef T\_reader\_asInterface


```haxe
typedef T_reader_asInterface = Dynamic;
```


## typedef T\_reader\_static\_extension


```haxe
typedef T_reader_static_extension = Dynamic;
```


## typedef T\_zlibTest


```haxe
typedef T_zlibTest = Dynamic;
```


## typedef Writer


```haxe
typedef Writer = Dynamic;
```


## typedef Writer\_asInterface


```haxe
typedef Writer_asInterface = Dynamic;
```


## typedef Writer\_static\_extension


```haxe
typedef Writer_static_extension = Dynamic;
```


