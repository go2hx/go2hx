# Module: `stdgo._internal.testing.iotest`

[(view library index)](../../../stdgo.md)


# Overview



# Index


- [Variables](<#variables>)

- [`function dataErrReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-dataerrreader>)

- [`function errReader(_err:stdgo.Error):stdgo._internal.io.Reader`](<#function-errreader>)

- [`function halfReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-halfreader>)

- [`function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newreadlogger>)

- [`function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#function-newwritelogger>)

- [`function oneByteReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-onebytereader>)

- [`function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdataerrreader_emptyreader>)

- [`function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdataerrreader_nonemptyreader>)

- [`function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerrreader>)

- [`function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhalfreader_emptyreader>)

- [`function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhalfreader_nonemptyreader>)

- [`function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonebytereader_emptyreader>)

- [`function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonebytereader_nonemptyreader>)

- [`function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadlogger>)

- [`function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadlogger_erroronread>)

- [`function testReader(_r:stdgo._internal.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error`](<#function-testreader>)

- [`function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststringsreader>)

- [`function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtimeoutreader_emptyreader>)

- [`function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtimeoutreader_nonemptyreader>)

- [`function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtruncatewriter>)

- [`function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwritelogger>)

- [`function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwritelogger_erroronwrite>)

- [`function timeoutReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-timeoutreader>)

- [`function truncateWriter(_w:stdgo._internal.io.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Writer`](<#function-truncatewriter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Examples


- [`exampleErrReader`](<#exampleerrreader>)

# Variables


```haxe
import stdgo._internal.testing.iotest.Iotest
```


```haxe
var _truncateWriterTests:stdgo.Slice<stdgo._internal.testing.iotest.T__struct_0>
```


```haxe
var errTimeout:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.testing.iotest.Iotest
```


## function dataErrReader


```haxe
function dataErrReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Iotest.hx#L147>)


## function errReader


```haxe
function errReader(_err:stdgo.Error):stdgo._internal.io.Reader
```


### exampleErrReader


<details><summary></summary>
<p>


```haxe
function exampleErrReader():Void {
        var _r = (stdgo._internal.testing.iotest.Iotest.errReader(stdgo._internal.errors.Errors.new_(("custom error" : stdgo.GoString))) : stdgo._internal.io.Io.Reader);
        var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("n:   %d\nerr: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Iotest.hx#L149>)


## function halfReader


```haxe
function halfReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Iotest.hx#L146>)


## function newReadLogger


```haxe
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Iotest.hx#L140>)


## function newWriteLogger


```haxe
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```


[\(view code\)](<./Iotest.hx#L139>)


## function oneByteReader


```haxe
function oneByteReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Iotest.hx#L145>)


## function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L158>)


## function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L157>)


## function testErrReader


```haxe
function testErrReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L159>)


## function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L154>)


## function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L153>)


## function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L152>)


## function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L151>)


## function testReadLogger


```haxe
function testReadLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L143>)


## function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L144>)


## function testReader


```haxe
function testReader(_r:stdgo._internal.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```


[\(view code\)](<./Iotest.hx#L150>)


## function testStringsReader


```haxe
function testStringsReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L160>)


## function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L156>)


## function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L155>)


## function testTruncateWriter


```haxe
function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L162>)


## function testWriteLogger


```haxe
function testWriteLogger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L141>)


## function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Iotest.hx#L142>)


## function timeoutReader


```haxe
function timeoutReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


[\(view code\)](<./Iotest.hx#L148>)


## function truncateWriter


```haxe
function truncateWriter(_w:stdgo._internal.io.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Writer
```


[\(view code\)](<./Iotest.hx#L161>)


# Typedefs


```haxe
import stdgo._internal.testing.iotest.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoString;
	_trunc:stdgo.GoInt64;
	_n:stdgo.GoInt;
	_in:stdgo.GoString;
};
```


