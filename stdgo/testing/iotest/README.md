# Module: `stdgo.testing.iotest`

[(view library index)](../../stdgo.md)


# Overview



Package iotest implements Readers and Writers useful mainly for testing.  

# Index


- [Variables](<#variables>)

- [`function dataErrReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-dataerrreader>)

- [`function errReader(err:stdgo.Error):stdgo._internal.io.Reader`](<#function-errreader>)

- [`function get_errTimeout():stdgo.Error`](<#function-get_errtimeout>)

- [`function halfReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-halfreader>)

- [`function newReadLogger(prefix:String, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-newreadlogger>)

- [`function newWriteLogger(prefix:String, w:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#function-newwritelogger>)

- [`function oneByteReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-onebytereader>)

- [`function set_errTimeout(v:stdgo.Error):stdgo.Error`](<#function-set_errtimeout>)

- [`function testDataErrReader_emptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testdataerrreader_emptyreader>)

- [`function testDataErrReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testdataerrreader_nonemptyreader>)

- [`function testErrReader(t:stdgo._internal.testing.T_):Void`](<#function-testerrreader>)

- [`function testHalfReader_emptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testhalfreader_emptyreader>)

- [`function testHalfReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testhalfreader_nonemptyreader>)

- [`function testOneByteReader_emptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testonebytereader_emptyreader>)

- [`function testOneByteReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testonebytereader_nonemptyreader>)

- [`function testReadLogger(t:stdgo._internal.testing.T_):Void`](<#function-testreadlogger>)

- [`function testReadLogger_errorOnRead(t:stdgo._internal.testing.T_):Void`](<#function-testreadlogger_erroronread>)

- [`function testReader(r:stdgo._internal.io.Reader, content:Array<Int>):stdgo.Error`](<#function-testreader>)

- [`function testStringsReader(t:stdgo._internal.testing.T_):Void`](<#function-teststringsreader>)

- [`function testTimeOutReader_emptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testtimeoutreader_emptyreader>)

- [`function testTimeOutReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void`](<#function-testtimeoutreader_nonemptyreader>)

- [`function testTruncateWriter(t:stdgo._internal.testing.T_):Void`](<#function-testtruncatewriter>)

- [`function testWriteLogger(t:stdgo._internal.testing.T_):Void`](<#function-testwritelogger>)

- [`function testWriteLogger_errorOnWrite(t:stdgo._internal.testing.T_):Void`](<#function-testwritelogger_erroronwrite>)

- [`function timeoutReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader`](<#function-timeoutreader>)

- [`function truncateWriter(w:stdgo._internal.io.Writer, n:haxe.Int64):stdgo._internal.io.Writer`](<#function-truncatewriter>)

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
var errTimeout:stdgo.Error
```


# Functions


```haxe
import stdgo.testing.iotest.Iotest
```


## function dataErrReader


```haxe
function dataErrReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
DataErrReader changes the way errors are handled by a Reader. Normally, a
    Reader returns an error (typically EOF) from the first Read call after the
    last piece of data is read. DataErrReader wraps a Reader and changes its
    behavior so the final error is returned along with the final data, instead
    of in the first call after the final data.
```
[\(view code\)](<./Iotest.hx#L55>)


## function errReader


```haxe
function errReader(err:stdgo.Error):stdgo._internal.io.Reader
```



ErrReader returns an io.Reader that returns 0, err from all Read calls.  

[\(view code\)](<./Iotest.hx#L64>)


## function get\_errTimeout


```haxe
function get_errTimeout():stdgo.Error
```


[\(view code\)](<./Iotest.hx#L7>)


## function halfReader


```haxe
function halfReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
HalfReader returns a Reader that implements Read
    by reading half as many requested bytes from r.
```
[\(view code\)](<./Iotest.hx#L47>)


## function newReadLogger


```haxe
function newReadLogger(prefix:String, r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
NewReadLogger returns a reader that behaves like r except
    that it logs (using log.Printf) each read to standard error,
    printing the prefix and the hexadecimal data read.
```
[\(view code\)](<./Iotest.hx#L33>)


## function newWriteLogger


```haxe
function newWriteLogger(prefix:String, w:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```


```
NewWriteLogger returns a writer that behaves like w except
    that it logs (using log.Printf) each write to standard error,
    printing the prefix and the hexadecimal data written.
```
[\(view code\)](<./Iotest.hx#L27>)


## function oneByteReader


```haxe
function oneByteReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
OneByteReader returns a Reader that implements
    each non-empty Read by reading one byte from r.
```
[\(view code\)](<./Iotest.hx#L42>)


## function set\_errTimeout


```haxe
function set_errTimeout(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Iotest.hx#L8>)


## function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L82>)


## function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L81>)


## function testErrReader


```haxe
function testErrReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L83>)


## function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L78>)


## function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L77>)


## function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L76>)


## function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L75>)


## function testReadLogger


```haxe
function testReadLogger(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L36>)


## function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L37>)


## function testReader


```haxe
function testReader(r:stdgo._internal.io.Reader, content:Array<Int>):stdgo.Error
```


```
TestReader tests that reading from r returns the expected file content.
    It does reads of different sizes, until EOF.
    If r implements io.ReaderAt or io.Seeker, TestReader also checks
    that those operations behave as they should.
```

If TestReader finds any misbehaviors, it returns an error reporting them.
The error text may span multiple lines.  

[\(view code\)](<./Iotest.hx#L74>)


## function testStringsReader


```haxe
function testStringsReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L84>)


## function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L80>)


## function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L79>)


## function testTruncateWriter


```haxe
function testTruncateWriter(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L90>)


## function testWriteLogger


```haxe
function testWriteLogger(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L34>)


## function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Iotest.hx#L35>)


## function timeoutReader


```haxe
function timeoutReader(r:stdgo._internal.io.Reader):stdgo._internal.io.Reader
```


```
TimeoutReader returns ErrTimeout on the second read
    with no data. Subsequent calls to read succeed.
```
[\(view code\)](<./Iotest.hx#L60>)


## function truncateWriter


```haxe
function truncateWriter(w:stdgo._internal.io.Writer, n:haxe.Int64):stdgo._internal.io.Writer
```


```
TruncateWriter returns a Writer that writes to w
    but stops silently after n bytes.
```
[\(view code\)](<./Iotest.hx#L89>)


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


