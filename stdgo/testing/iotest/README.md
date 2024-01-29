# Module: `stdgo.testing.iotest`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function dataErrReader(_r:stdgo._internal.io.Reader):Void`](<#function-dataerrreader>)

- [`function errReader(_err:stdgo.Error):Void`](<#function-errreader>)

- [`function halfReader(_r:stdgo._internal.io.Reader):Void`](<#function-halfreader>)

- [`function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Reader):Void`](<#function-newreadlogger>)

- [`function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Writer):Void`](<#function-newwritelogger>)

- [`function oneByteReader(_r:stdgo._internal.io.Reader):Void`](<#function-onebytereader>)

- [`function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdataerrreader_emptyreader>)

- [`function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdataerrreader_nonemptyreader>)

- [`function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerrreader>)

- [`function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhalfreader_emptyreader>)

- [`function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhalfreader_nonemptyreader>)

- [`function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonebytereader_emptyreader>)

- [`function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonebytereader_nonemptyreader>)

- [`function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadlogger>)

- [`function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadlogger_erroronread>)

- [`function testReader(_r:stdgo._internal.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):Void`](<#function-testreader>)

- [`function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststringsreader>)

- [`function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtimeoutreader_emptyreader>)

- [`function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtimeoutreader_nonemptyreader>)

- [`function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtruncatewriter>)

- [`function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwritelogger>)

- [`function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwritelogger_erroronwrite>)

- [`function timeoutReader(_r:stdgo._internal.io.Reader):Void`](<#function-timeoutreader>)

- [`function truncateWriter(_w:stdgo._internal.io.Writer, _n:stdgo.GoInt64):Void`](<#function-truncatewriter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_dataErrReader](<#typedef-t_dataerrreader>)

- [typedef T\_dataErrReader\_asInterface](<#typedef-t_dataerrreader_asinterface>)

- [typedef T\_dataErrReader\_static\_extension](<#typedef-t_dataerrreader_static_extension>)

- [typedef T\_errReader](<#typedef-t_errreader>)

- [typedef T\_errReader\_asInterface](<#typedef-t_errreader_asinterface>)

- [typedef T\_errReader\_static\_extension](<#typedef-t_errreader_static_extension>)

- [typedef T\_errWriter](<#typedef-t_errwriter>)

- [typedef T\_errWriter\_asInterface](<#typedef-t_errwriter_asinterface>)

- [typedef T\_errWriter\_static\_extension](<#typedef-t_errwriter_static_extension>)

- [typedef T\_halfReader](<#typedef-t_halfreader>)

- [typedef T\_halfReader\_asInterface](<#typedef-t_halfreader_asinterface>)

- [typedef T\_halfReader\_static\_extension](<#typedef-t_halfreader_static_extension>)

- [typedef T\_oneByteReader](<#typedef-t_onebytereader>)

- [typedef T\_oneByteReader\_asInterface](<#typedef-t_onebytereader_asinterface>)

- [typedef T\_oneByteReader\_static\_extension](<#typedef-t_onebytereader_static_extension>)

- [typedef T\_readLogger](<#typedef-t_readlogger>)

- [typedef T\_readLogger\_asInterface](<#typedef-t_readlogger_asinterface>)

- [typedef T\_readLogger\_static\_extension](<#typedef-t_readlogger_static_extension>)

- [typedef T\_smallByteReader](<#typedef-t_smallbytereader>)

- [typedef T\_smallByteReader\_asInterface](<#typedef-t_smallbytereader_asinterface>)

- [typedef T\_smallByteReader\_static\_extension](<#typedef-t_smallbytereader_static_extension>)

- [typedef T\_timeoutReader](<#typedef-t_timeoutreader>)

- [typedef T\_timeoutReader\_asInterface](<#typedef-t_timeoutreader_asinterface>)

- [typedef T\_timeoutReader\_static\_extension](<#typedef-t_timeoutreader_static_extension>)

- [typedef T\_truncateWriter](<#typedef-t_truncatewriter>)

- [typedef T\_truncateWriter\_asInterface](<#typedef-t_truncatewriter_asinterface>)

- [typedef T\_truncateWriter\_static\_extension](<#typedef-t_truncatewriter_static_extension>)

- [typedef T\_writeLogger](<#typedef-t_writelogger>)

- [typedef T\_writeLogger\_asInterface](<#typedef-t_writelogger_asinterface>)

- [typedef T\_writeLogger\_static\_extension](<#typedef-t_writelogger_static_extension>)

# Variables


```haxe
import stdgo.testing.iotest.Iotest
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _truncateWriterTests:Dynamic
```


```haxe
var errTimeout:Dynamic
```


# Functions


```haxe
import stdgo.testing.iotest.Iotest
```


## function dataErrReader


```haxe
function dataErrReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Iotest.hx#L26>)


## function errReader


```haxe
function errReader(_err:stdgo.Error):Void
```


[\(view code\)](<./Iotest.hx#L28>)


## function halfReader


```haxe
function halfReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Iotest.hx#L25>)


## function newReadLogger


```haxe
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Iotest.hx#L19>)


## function newWriteLogger


```haxe
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Writer):Void
```


[\(view code\)](<./Iotest.hx#L18>)


## function oneByteReader


```haxe
function oneByteReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Iotest.hx#L24>)


## function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L37>)


## function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L36>)


## function testErrReader


```haxe
function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L38>)


## function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L33>)


## function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L32>)


## function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L31>)


## function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L30>)


## function testReadLogger


```haxe
function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L22>)


## function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L23>)


## function testReader


```haxe
function testReader(_r:stdgo._internal.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Iotest.hx#L29>)


## function testStringsReader


```haxe
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L39>)


## function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L35>)


## function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L34>)


## function testTruncateWriter


```haxe
function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L41>)


## function testWriteLogger


```haxe
function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L20>)


## function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L21>)


## function timeoutReader


```haxe
function timeoutReader(_r:stdgo._internal.io.Reader):Void
```


[\(view code\)](<./Iotest.hx#L27>)


## function truncateWriter


```haxe
function truncateWriter(_w:stdgo._internal.io.Writer, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Iotest.hx#L40>)


# Typedefs


```haxe
import stdgo.testing.iotest.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.testing.iotest.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_dataErrReader


```haxe
typedef T_dataErrReader = Dynamic;
```


## typedef T\_dataErrReader\_asInterface


```haxe
typedef T_dataErrReader_asInterface = Dynamic;
```


## typedef T\_dataErrReader\_static\_extension


```haxe
typedef T_dataErrReader_static_extension = Dynamic;
```


## typedef T\_errReader


```haxe
typedef T_errReader = Dynamic;
```


## typedef T\_errReader\_asInterface


```haxe
typedef T_errReader_asInterface = Dynamic;
```


## typedef T\_errReader\_static\_extension


```haxe
typedef T_errReader_static_extension = Dynamic;
```


## typedef T\_errWriter


```haxe
typedef T_errWriter = Dynamic;
```


## typedef T\_errWriter\_asInterface


```haxe
typedef T_errWriter_asInterface = Dynamic;
```


## typedef T\_errWriter\_static\_extension


```haxe
typedef T_errWriter_static_extension = Dynamic;
```


## typedef T\_halfReader


```haxe
typedef T_halfReader = Dynamic;
```


## typedef T\_halfReader\_asInterface


```haxe
typedef T_halfReader_asInterface = Dynamic;
```


## typedef T\_halfReader\_static\_extension


```haxe
typedef T_halfReader_static_extension = Dynamic;
```


## typedef T\_oneByteReader


```haxe
typedef T_oneByteReader = Dynamic;
```


## typedef T\_oneByteReader\_asInterface


```haxe
typedef T_oneByteReader_asInterface = Dynamic;
```


## typedef T\_oneByteReader\_static\_extension


```haxe
typedef T_oneByteReader_static_extension = Dynamic;
```


## typedef T\_readLogger


```haxe
typedef T_readLogger = Dynamic;
```


## typedef T\_readLogger\_asInterface


```haxe
typedef T_readLogger_asInterface = Dynamic;
```


## typedef T\_readLogger\_static\_extension


```haxe
typedef T_readLogger_static_extension = Dynamic;
```


## typedef T\_smallByteReader


```haxe
typedef T_smallByteReader = Dynamic;
```


## typedef T\_smallByteReader\_asInterface


```haxe
typedef T_smallByteReader_asInterface = Dynamic;
```


## typedef T\_smallByteReader\_static\_extension


```haxe
typedef T_smallByteReader_static_extension = Dynamic;
```


## typedef T\_timeoutReader


```haxe
typedef T_timeoutReader = Dynamic;
```


## typedef T\_timeoutReader\_asInterface


```haxe
typedef T_timeoutReader_asInterface = Dynamic;
```


## typedef T\_timeoutReader\_static\_extension


```haxe
typedef T_timeoutReader_static_extension = Dynamic;
```


## typedef T\_truncateWriter


```haxe
typedef T_truncateWriter = Dynamic;
```


## typedef T\_truncateWriter\_asInterface


```haxe
typedef T_truncateWriter_asInterface = Dynamic;
```


## typedef T\_truncateWriter\_static\_extension


```haxe
typedef T_truncateWriter_static_extension = Dynamic;
```


## typedef T\_writeLogger


```haxe
typedef T_writeLogger = Dynamic;
```


## typedef T\_writeLogger\_asInterface


```haxe
typedef T_writeLogger_asInterface = Dynamic;
```


## typedef T\_writeLogger\_static\_extension


```haxe
typedef T_writeLogger_static_extension = Dynamic;
```


