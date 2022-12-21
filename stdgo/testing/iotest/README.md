# Module: `stdgo.testing.iotest`

[(view library index)](../../stdgo.md)


# Overview


Package iotest implements Readers and Writers useful mainly for testing. 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN   TestWriteLogger
Exception: testing.iotest.testWriteLogger is not yet implemented
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 353)
Called from stdgo.testing.iotest_test._Iotest.$Iotest_Fields_.main (stdgo/testing/iotest_test/Iotest.hx line 55)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN   TestWriteLogger
Exception: testing.iotest.testWriteLogger is not yet implemented
Called from stdgo.testing.iotest._Iotest.Iotest_Fields_.testWriteLogger (stdgo/testing/iotest/Iotest.hx line 221 column 2)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Variables](<#variables>)

- [`function dataErrReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-dataerrreader>)

- [`function errReader(_err:stdgo.Error):stdgo.io.Reader`](<#function-errreader>)

- [`function halfReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-halfreader>)

- [`function newReadLogger(_prefix:stdgo.GoString, _r:stdgo.io.Reader):stdgo.io.Reader`](<#function-newreadlogger>)

- [`function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo.io.Writer):stdgo.io.Writer`](<#function-newwritelogger>)

- [`function oneByteReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-onebytereader>)

- [`function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdataerrreader_emptyreader>)

- [`function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdataerrreader_nonemptyreader>)

- [`function testErrReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testerrreader>)

- [`function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testhalfreader_emptyreader>)

- [`function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testhalfreader_nonemptyreader>)

- [`function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testonebytereader_emptyreader>)

- [`function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testonebytereader_nonemptyreader>)

- [`function testReadLogger(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadlogger>)

- [`function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadlogger_erroronread>)

- [`function testReader(_r:stdgo.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error`](<#function-testreader>)

- [`function testStringsReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststringsreader>)

- [`function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtimeoutreader_emptyreader>)

- [`function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtimeoutreader_nonemptyreader>)

- [`function testTruncateWriter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtruncatewriter>)

- [`function testWriteLogger(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwritelogger>)

- [`function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwritelogger_erroronwrite>)

- [`function timeoutReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-timeoutreader>)

- [`function truncateWriter(_w:stdgo.io.Writer, _n:stdgo.GoInt64):stdgo.io.Writer`](<#function-truncatewriter>)

- [class T\_dataErrReader\_static\_extension](<#class-t_dataerrreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_dataErrReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_dataerrreader_static_extension-function-read>)

- [class T\_errReader\_static\_extension](<#class-t_errreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_errReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_errreader_static_extension-function-read>)

- [class T\_errWriter\_static\_extension](<#class-t_errwriter_static_extension>)

  - [`function write(_w:stdgo.testing.iotest._Iotest.T_errWriter, _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_errwriter_static_extension-function-write>)

- [class T\_halfReader\_static\_extension](<#class-t_halfreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_halfReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_halfreader_static_extension-function-read>)

- [class T\_oneByteReader\_static\_extension](<#class-t_onebytereader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_oneByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_onebytereader_static_extension-function-read>)

- [class T\_readLogger\_static\_extension](<#class-t_readlogger_static_extension>)

  - [`function read(_l:stdgo.Ref<stdgo.testing.iotest._Iotest.T_readLogger>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_readlogger_static_extension-function-read>)

- [class T\_smallByteReader\_static\_extension](<#class-t_smallbytereader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_smallByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_smallbytereader_static_extension-function-read>)

- [class T\_timeoutReader\_static\_extension](<#class-t_timeoutreader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_timeoutReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_timeoutreader_static_extension-function-read>)

- [class T\_truncateWriter\_static\_extension](<#class-t_truncatewriter_static_extension>)

  - [`function write(_t:stdgo.Ref<stdgo.testing.iotest._Iotest.T_truncateWriter>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_truncatewriter_static_extension-function-write>)

- [class T\_writeLogger\_static\_extension](<#class-t_writelogger_static_extension>)

  - [`function write(_l:stdgo.Ref<stdgo.testing.iotest._Iotest.T_writeLogger>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_writelogger_static_extension-function-write>)

# Examples


- [`exampleErrReader`](<#exampleerrreader>)

# Variables


```haxe
import stdgo.testing.iotest.Iotest
```


```haxe
var errTimeout:stdgo.Error
```


ErrTimeout is a fake timeout error. 


# Functions


```haxe
import stdgo.testing.iotest.Iotest
```


## function dataErrReader


```haxe
function dataErrReader(_r:stdgo.io.Reader):stdgo.io.Reader
```


DataErrReader changes the way errors are handled by a Reader. Normally, a��// Reader returns an error \(typically EOF\) from the first Read call after the��// last piece of data is read. DataErrReader wraps a Reader and changes its��// behavior so the final error is returned along with the final data, instead��// of in the first call after the final data. 


[\(view code\)](<./Iotest.hx#L254>)


## function errReader


```haxe
function errReader(_err:stdgo.Error):stdgo.io.Reader
```


ErrReader returns an io.Reader that returns 0, err from all Read calls. 


### exampleErrReader


<details><summary></summary>
<p>


```haxe
function exampleErrReader():Void {
	var _r:stdgo.io.Io.Reader = stdgo.testing.iotest.Iotest.errReader(stdgo.errors.Errors.new_(Go.str("custom error")));
	var __tmp__ = _r.read((null : Slice<GoUInt8>)),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	stdgo.fmt.Fmt.printf(Go.str("n:   %d\nerr: %q\n"), Go.toInterface(_n), Go.toInterface(_err));
}
```


</p>
</details>


[\(view code\)](<./Iotest.hx#L267>)


## function halfReader


```haxe
function halfReader(_r:stdgo.io.Reader):stdgo.io.Reader
```


HalfReader returns a Reader that implements Read��// by reading half as many requested bytes from r. 


[\(view code\)](<./Iotest.hx#L244>)


## function newReadLogger


```haxe
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo.io.Reader):stdgo.io.Reader
```


NewReadLogger returns a reader that behaves like r except��// that it logs \(using log.Printf\) each read to standard error,��// printing the prefix and the hexadecimal data read. 


[\(view code\)](<./Iotest.hx#L218>)


## function newWriteLogger


```haxe
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo.io.Writer):stdgo.io.Writer
```


NewWriteLogger returns a writer that behaves like w except��// that it logs \(using log.Printf\) each write to standard error,��// printing the prefix and the hexadecimal data written. 


[\(view code\)](<./Iotest.hx#L210>)


## function oneByteReader


```haxe
function oneByteReader(_r:stdgo.io.Reader):stdgo.io.Reader
```


OneByteReader returns a Reader that implements��// each non\-empty Read by reading one byte from r. 


[\(view code\)](<./Iotest.hx#L237>)


## function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L303>)


## function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L300>)


## function testErrReader


```haxe
function testErrReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L306>)


## function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L291>)


## function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L288>)


## function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L285>)


## function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L282>)


## function testReadLogger


```haxe
function testReadLogger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L227>)


## function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L230>)


## function testReader


```haxe
function testReader(_r:stdgo.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```


TestReader tests that reading from r returns the expected file content.��// It does reads of different sizes, until EOF.��// If r implements io.ReaderAt or io.Seeker, TestReader also checks��// that those operations behave as they should.��//��// If TestReader finds any misbehaviors, it returns an error reporting them.��// The error text may span multiple lines. 


[\(view code\)](<./Iotest.hx#L279>)


## function testStringsReader


```haxe
function testStringsReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L309>)


## function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L297>)


## function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L294>)


## function testTruncateWriter


```haxe
function testTruncateWriter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L319>)


## function testWriteLogger


```haxe
function testWriteLogger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L221>)


## function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Iotest.hx#L224>)


## function timeoutReader


```haxe
function timeoutReader(_r:stdgo.io.Reader):stdgo.io.Reader
```


TimeoutReader returns ErrTimeout on the second read��// with no data. Subsequent calls to read succeed. 


[\(view code\)](<./Iotest.hx#L261>)


## function truncateWriter


```haxe
function truncateWriter(_w:stdgo.io.Writer, _n:stdgo.GoInt64):stdgo.io.Writer
```


TruncateWriter returns a Writer that writes to w��// but stops silently after n bytes. 


[\(view code\)](<./Iotest.hx#L316>)


# Classes


```haxe
import stdgo.testing.iotest.*
```


## class T\_dataErrReader\_static\_extension


 


### T\_dataErrReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_dataErrReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L468>)


## class T\_errReader\_static\_extension


 


### T\_errReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_errReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L518>)


## class T\_errWriter\_static\_extension


 


### T\_errWriter\_static\_extension function write


```haxe
function write(_w:stdgo.testing.iotest._Iotest.T_errWriter, _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L393>)


## class T\_halfReader\_static\_extension


 


### T\_halfReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_halfReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L443>)


## class T\_oneByteReader\_static\_extension


 


### T\_oneByteReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_oneByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L418>)


## class T\_readLogger\_static\_extension


 


### T\_readLogger\_static\_extension function read


```haxe
function read(_l:stdgo.Ref<stdgo.testing.iotest._Iotest.T_readLogger>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L368>)


## class T\_smallByteReader\_static\_extension


 


### T\_smallByteReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_smallByteReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L543>)


## class T\_timeoutReader\_static\_extension


 


### T\_timeoutReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.testing.iotest._Iotest.T_timeoutReader>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L493>)


## class T\_truncateWriter\_static\_extension


 


### T\_truncateWriter\_static\_extension function write


```haxe
function write(_t:stdgo.Ref<stdgo.testing.iotest._Iotest.T_truncateWriter>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L568>)


## class T\_writeLogger\_static\_extension


 


### T\_writeLogger\_static\_extension function write


```haxe
function write(_l:stdgo.Ref<stdgo.testing.iotest._Iotest.T_writeLogger>, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Iotest.hx#L343>)


