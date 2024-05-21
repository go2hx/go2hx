# Module: `stdgo.testing.iotest`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Iotest](<#class-iotest>)

  - [`function dataErrReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#iotest-function-dataerrreader>)

  - [`function errReader(_err:stdgo.Error):stdgo._internal.io.Reader`](<#iotest-function-errreader>)

  - [`function halfReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#iotest-function-halfreader>)

  - [`function newReadLogger(_prefix:String, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#iotest-function-newreadlogger>)

  - [`function newWriteLogger(_prefix:String, _w:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#iotest-function-newwritelogger>)

  - [`function oneByteReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#iotest-function-onebytereader>)

  - [`function testDataErrReader_emptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testdataerrreader_emptyreader>)

  - [`function testDataErrReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testdataerrreader_nonemptyreader>)

  - [`function testErrReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testerrreader>)

  - [`function testHalfReader_emptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testhalfreader_emptyreader>)

  - [`function testHalfReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testhalfreader_nonemptyreader>)

  - [`function testOneByteReader_emptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testonebytereader_emptyreader>)

  - [`function testOneByteReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testonebytereader_nonemptyreader>)

  - [`function testReadLogger(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testreadlogger>)

  - [`function testReadLogger_errorOnRead(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testreadlogger_erroronread>)

  - [`function testReader(_r:stdgo._internal.io.Reader, _content:Array<Int>):stdgo.Error`](<#iotest-function-testreader>)

  - [`function testStringsReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-teststringsreader>)

  - [`function testTimeOutReader_emptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testtimeoutreader_emptyreader>)

  - [`function testTimeOutReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testtimeoutreader_nonemptyreader>)

  - [`function testTruncateWriter(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testtruncatewriter>)

  - [`function testWriteLogger(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testwritelogger>)

  - [`function testWriteLogger_errorOnWrite(_t:stdgo._internal.testing.T_):Void`](<#iotest-function-testwritelogger_erroronwrite>)

  - [`function timeoutReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#iotest-function-timeoutreader>)

  - [`function truncateWriter(_w:stdgo._internal.io.Writer, _n:haxe.Int64):stdgo._internal.io.Writer`](<#iotest-function-truncatewriter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [abstract T\_writeLogger](<#abstract-t_writelogger>)

- [abstract T\_readLogger](<#abstract-t_readlogger>)

- [abstract T\_errWriter](<#abstract-t_errwriter>)

- [abstract T\_oneByteReader](<#abstract-t_onebytereader>)

- [abstract T\_halfReader](<#abstract-t_halfreader>)

- [abstract T\_dataErrReader](<#abstract-t_dataerrreader>)

- [abstract T\_timeoutReader](<#abstract-t_timeoutreader>)

- [abstract T\_errReader](<#abstract-t_errreader>)

- [abstract T\_smallByteReader](<#abstract-t_smallbytereader>)

- [abstract T\_truncateWriter](<#abstract-t_truncatewriter>)

# Variables


```haxe
import stdgo.testing.iotest.Iotest
```


```haxe
var errTimeout:stdgo.Error
```


# Classes


```haxe
import stdgo.testing.iotest.*
```


## class Iotest



Package iotest implements Readers and Writers useful mainly for testing.  

### Iotest function dataErrReader


```haxe
function dataErrReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
DataErrReader changes the way errors are handled by a Reader. Normally, a
        Reader returns an error (typically EOF) from the first Read call after the
        last piece of data is read. DataErrReader wraps a Reader and changes its
        behavior so the final error is returned along with the final data, instead
        of in the first call after the final data.
```
[\(view code\)](<./Iotest.hx#L313>)


### Iotest function errReader


```haxe
function errReader(_err:stdgo.Error):stdgo._internal.io.Reader
```



ErrReader returns an io.Reader that returns 0, err from all Read calls.  

[\(view code\)](<./Iotest.hx#L326>)


### Iotest function halfReader


```haxe
function halfReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
HalfReader returns a Reader that implements Read
        by reading half as many requested bytes from r.
```
[\(view code\)](<./Iotest.hx#L303>)


### Iotest function newReadLogger


```haxe
function newReadLogger(_prefix:String, _r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
NewReadLogger returns a reader that behaves like r except
        that it logs (using log.Printf) each read to standard error,
        printing the prefix and the hexadecimal data read.
```
[\(view code\)](<./Iotest.hx#L277>)


### Iotest function newWriteLogger


```haxe
function newWriteLogger(_prefix:String, _w:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```


```
NewWriteLogger returns a writer that behaves like w except
        that it logs (using log.Printf) each write to standard error,
        printing the prefix and the hexadecimal data written.
```
[\(view code\)](<./Iotest.hx#L269>)


### Iotest function oneByteReader


```haxe
function oneByteReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
OneByteReader returns a Reader that implements
        each non-empty Read by reading one byte from r.
```
[\(view code\)](<./Iotest.hx#L296>)


### Iotest function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L363>)


### Iotest function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L360>)


### Iotest function testErrReader


```haxe
function testErrReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L366>)


### Iotest function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L351>)


### Iotest function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L348>)


### Iotest function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L345>)


### Iotest function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L342>)


### Iotest function testReadLogger


```haxe
function testReadLogger(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L286>)


### Iotest function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L289>)


### Iotest function testReader


```haxe
function testReader(_r:stdgo._internal.io.Reader, _content:Array<Int>):stdgo.Error
```


```
TestReader tests that reading from r returns the expected file content.
        It does reads of different sizes, until EOF.
        If r implements io.ReaderAt or io.Seeker, TestReader also checks
        that those operations behave as they should.
```

If TestReader finds any misbehaviors, it returns an error reporting them.
The error text may span multiple lines.  

[\(view code\)](<./Iotest.hx#L338>)


### Iotest function testStringsReader


```haxe
function testStringsReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L369>)


### Iotest function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L357>)


### Iotest function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L354>)


### Iotest function testTruncateWriter


```haxe
function testTruncateWriter(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L379>)


### Iotest function testWriteLogger


```haxe
function testWriteLogger(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L280>)


### Iotest function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L283>)


### Iotest function timeoutReader


```haxe
function timeoutReader(_r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
TimeoutReader returns ErrTimeout on the second read
        with no data. Subsequent calls to read succeed.
```
[\(view code\)](<./Iotest.hx#L320>)


### Iotest function truncateWriter


```haxe
function truncateWriter(_w:stdgo._internal.io.Writer, _n:haxe.Int64):stdgo._internal.io.Writer
```


```
TruncateWriter returns a Writer that writes to w
        but stops silently after n bytes.
```
[\(view code\)](<./Iotest.hx#L376>)


# Typedefs


```haxe
import stdgo.testing.iotest.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.testing.iotest.T__struct_0;
```


# Abstracts


## abstract T\_writeLogger


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_readLogger


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_errWriter


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_oneByteReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_halfReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_dataErrReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_timeoutReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_errReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_smallByteReader


[\(view file containing code\)](<./Iotest.hx>)


## abstract T\_truncateWriter


[\(view file containing code\)](<./Iotest.hx>)


