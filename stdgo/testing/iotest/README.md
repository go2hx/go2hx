# Module: `stdgo.testing.iotest`

[(view library index)](../../stdgo.md)


# Overview



Package iotest implements Readers and Writers useful mainly for testing.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestWriteLogger
Exception: testing.iotest.testWriteLogger is not yet implemented
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.testing.iotest_test._Iotest.$Iotest_Fields_.main (stdgo/testing/iotest_test/Iotest.hx line 55)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestWriteLogger
Exception: testing.iotest.testWriteLogger is not yet implemented
Called from stdgo.testing.iotest._Iotest.Iotest_Fields_.testWriteLogger (stdgo/testing/iotest/Iotest.hx line 223 column 64)
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



DataErrReader changes the way errors are handled by a Reader. Normally, a
Reader returns an error \(typically EOF\) from the first Read call after the
last piece of data is read. DataErrReader wraps a Reader and changes its
behavior so the final error is returned along with the final data, instead
of in the first call after the final data.  

[\(view code\)](<./Iotest.hx#L244>)


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
        var _r:stdgo.io.Io.Reader = stdgo.testing.iotest.Iotest.errReader(stdgo.errors.Errors.new_(("custom error" : GoString)));
        var __tmp__ = _r.read((null : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("n:   %d\nerr: %q\n" : GoString), Go.toInterface(_n), Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Iotest.hx#L253>)


## function halfReader


```haxe
function halfReader(_r:stdgo.io.Reader):stdgo.io.Reader
```



HalfReader returns a Reader that implements Read
by reading half as many requested bytes from r.  

[\(view code\)](<./Iotest.hx#L236>)


## function newReadLogger


```haxe
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo.io.Reader):stdgo.io.Reader
```



NewReadLogger returns a reader that behaves like r except
that it logs \(using log.Printf\) each read to standard error,
printing the prefix and the hexadecimal data read.  

[\(view code\)](<./Iotest.hx#L222>)


## function newWriteLogger


```haxe
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo.io.Writer):stdgo.io.Writer
```



NewWriteLogger returns a writer that behaves like w except
that it logs \(using log.Printf\) each write to standard error,
printing the prefix and the hexadecimal data written.  

[\(view code\)](<./Iotest.hx#L216>)


## function oneByteReader


```haxe
function oneByteReader(_r:stdgo.io.Reader):stdgo.io.Reader
```



OneByteReader returns a Reader that implements
each non\-empty Read by reading one byte from r.  

[\(view code\)](<./Iotest.hx#L231>)


## function testDataErrReader\_emptyReader


```haxe
function testDataErrReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L271>)


## function testDataErrReader\_nonEmptyReader


```haxe
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L270>)


## function testErrReader


```haxe
function testErrReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L272>)


## function testHalfReader\_emptyReader


```haxe
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L267>)


## function testHalfReader\_nonEmptyReader


```haxe
function testHalfReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L266>)


## function testOneByteReader\_emptyReader


```haxe
function testOneByteReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L265>)


## function testOneByteReader\_nonEmptyReader


```haxe
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L264>)


## function testReadLogger


```haxe
function testReadLogger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L225>)


## function testReadLogger\_errorOnRead


```haxe
function testReadLogger_errorOnRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L226>)


## function testReader


```haxe
function testReader(_r:stdgo.io.Reader, _content:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```



TestReader tests that reading from r returns the expected file content.
It does reads of different sizes, until EOF.
If r implements io.ReaderAt or io.Seeker, TestReader also checks
that those operations behave as they should.  


If TestReader finds any misbehaviors, it returns an error reporting them.
The error text may span multiple lines.  

[\(view code\)](<./Iotest.hx#L263>)


## function testStringsReader


```haxe
function testStringsReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L273>)


## function testTimeOutReader\_emptyReader


```haxe
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L269>)


## function testTimeOutReader\_nonEmptyReader


```haxe
function testTimeOutReader_nonEmptyReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L268>)


## function testTruncateWriter


```haxe
function testTruncateWriter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L279>)


## function testWriteLogger


```haxe
function testWriteLogger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L223>)


## function testWriteLogger\_errorOnWrite


```haxe
function testWriteLogger_errorOnWrite(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Iotest.hx#L224>)


## function timeoutReader


```haxe
function timeoutReader(_r:stdgo.io.Reader):stdgo.io.Reader
```



TimeoutReader returns ErrTimeout on the second read
with no data. Subsequent calls to read succeed.  

[\(view code\)](<./Iotest.hx#L249>)


## function truncateWriter


```haxe
function truncateWriter(_w:stdgo.io.Writer, _n:stdgo.GoInt64):stdgo.io.Writer
```



TruncateWriter returns a Writer that writes to w
but stops silently after n bytes.  

[\(view code\)](<./Iotest.hx#L278>)


