# Module: `stdgo.io`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Io](<#class-io>)

  - [`function copy(_dst:stdgo.io.Writer, _src:stdgo.io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#io-function-copy>)

  - [`function copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:Array<Int>):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#io-function-copybuffer>)

  - [`function copyN(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#io-function-copyn>)

  - [`function limitReader(_r:stdgo.io.Reader, _n:haxe.Int64):stdgo.io.Reader`](<#io-function-limitreader>)

  - [`function multiReader(_readers:haxe.Rest<stdgo.io.Reader>):stdgo.io.Reader`](<#io-function-multireader>)

  - [`function multiWriter(_writers:haxe.Rest<stdgo.io.Writer>):stdgo.io.Writer`](<#io-function-multiwriter>)

  - [`function newOffsetWriter(_w:stdgo.io.WriterAt, _off:haxe.Int64):stdgo.io.OffsetWriter`](<#io-function-newoffsetwriter>)

  - [`function newSectionReader(_r:stdgo.io.ReaderAt, _off:haxe.Int64, _n:haxe.Int64):stdgo.io.SectionReader`](<#io-function-newsectionreader>)

  - [`function nopCloser(_r:stdgo.io.Reader):stdgo.io.ReadCloser`](<#io-function-nopcloser>)

  - [`function pipe():stdgo.Tuple<stdgo.io.PipeReader, stdgo.io.PipeWriter>`](<#io-function-pipe>)

  - [`function readAll(_r:stdgo.io.Reader):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#io-function-readall>)

  - [`function readAtLeast(_r:stdgo.io.Reader, _buf:Array<Int>, _min:Int):stdgo.Tuple<Int, stdgo.Error>`](<#io-function-readatleast>)

  - [`function readFull(_r:stdgo.io.Reader, _buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#io-function-readfull>)

  - [`function teeReader(_r:stdgo.io.Reader, _w:stdgo.io.Writer):stdgo.io.Reader`](<#io-function-teereader>)

  - [`function writeString(_w:stdgo.io.Writer, _s:String):stdgo.Tuple<Int, stdgo.Error>`](<#io-function-writestring>)

- [typedef ByteReader](<#typedef-bytereader>)

- [typedef ByteScanner](<#typedef-bytescanner>)

- [typedef ByteWriter](<#typedef-bytewriter>)

- [typedef Closer](<#typedef-closer>)

- [typedef ReadCloser](<#typedef-readcloser>)

- [typedef ReadSeekCloser](<#typedef-readseekcloser>)

- [typedef ReadSeeker](<#typedef-readseeker>)

- [typedef ReadWriteCloser](<#typedef-readwritecloser>)

- [typedef ReadWriteSeeker](<#typedef-readwriteseeker>)

- [typedef ReadWriter](<#typedef-readwriter>)

- [typedef Reader](<#typedef-reader>)

- [typedef ReaderAt](<#typedef-readerat>)

- [typedef ReaderFrom](<#typedef-readerfrom>)

- [typedef RuneReader](<#typedef-runereader>)

- [typedef RuneScanner](<#typedef-runescanner>)

- [typedef Seeker](<#typedef-seeker>)

- [typedef StringWriter](<#typedef-stringwriter>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef WriteCloser](<#typedef-writecloser>)

- [typedef WriteSeeker](<#typedef-writeseeker>)

- [typedef Writer](<#typedef-writer>)

- [typedef WriterAt](<#typedef-writerat>)

- [typedef WriterTo](<#typedef-writerto>)

- [abstract LimitedReader](<#abstract-limitedreader>)

- [abstract SectionReader](<#abstract-sectionreader>)

- [abstract OffsetWriter](<#abstract-offsetwriter>)

- [abstract T\_teeReader](<#abstract-t_teereader>)

- [abstract T\_discard](<#abstract-t_discard>)

- [abstract T\_nopCloser](<#abstract-t_nopcloser>)

- [abstract T\_nopCloserWriterTo](<#abstract-t_nopcloserwriterto>)

- [abstract T\_eofReader](<#abstract-t_eofreader>)

- [abstract T\_multiReader](<#abstract-t_multireader>)

- [abstract T\_multiWriter](<#abstract-t_multiwriter>)

- [abstract T\_onceError](<#abstract-t_onceerror>)

- [abstract T\_pipe](<#abstract-t_pipe>)

- [abstract PipeReader](<#abstract-pipereader>)

- [abstract PipeWriter](<#abstract-pipewriter>)

# Constants


```haxe
import stdgo.io.Io
```


```haxe
final seekCurrent:haxe.UInt64 = stdgo._internal.io.Io.seekCurrent
```


```haxe
final seekEnd:haxe.UInt64 = stdgo._internal.io.Io.seekEnd
```


```haxe
final seekStart:haxe.UInt64 = stdgo._internal.io.Io.seekStart
```


# Variables


```haxe
import stdgo.io.Io
```


```haxe
var discard:stdgo.io.Writer
```


```haxe
var eof:stdgo.Error
```


```haxe
var errClosedPipe:stdgo.Error
```


```haxe
var errInvalidWrite:stdgo.Error
```


```haxe
var errNoProgress:stdgo.Error
```


```haxe
var errOffset:stdgo.Error
```


```haxe
var errShortBuffer:stdgo.Error
```


```haxe
var errShortWrite:stdgo.Error
```


```haxe
var errUnexpectedEOF:stdgo.Error
```


```haxe
var errWhence:stdgo.Error
```


# Classes


```haxe
import stdgo.io.*
```


## class Io


```
Package io provides basic interfaces to I/O primitives.
    Its primary job is to wrap existing implementations of such primitives,
    such as those in package os, into shared public interfaces that
    abstract the functionality, plus some other related primitives.
```

Because these interfaces and primitives wrap lower\-level operations with
various implementations, unless otherwise informed clients should not
assume they are safe for parallel execution.  

### Io function copy


```haxe
function copy(_dst:stdgo.io.Writer, _src:stdgo.io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
Copy copies from src to dst until either EOF is reached
        on src or an error occurs. It returns the number of bytes
        copied and the first error encountered while copying, if any.
```

A successful Copy returns err == nil, not err == EOF.
Because Copy is defined to read from src until EOF, it does
not treat an EOF from Read as an error to be reported.  


If src implements the WriterTo interface,
the copy is implemented by calling src.WriteTo\(dst\).
Otherwise, if dst implements the ReaderFrom interface,
the copy is implemented by calling dst.ReadFrom\(src\).  

[\(view code\)](<./Io.hx#L772>)


### Io function copyBuffer


```haxe
function copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:Array<Int>):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
CopyBuffer is identical to Copy except that it stages through the
        provided buffer (if one is required) rather than allocating a
        temporary one. If buf is nil, one is allocated; otherwise if it has
        zero length, CopyBuffer panics.
```

If either src implements WriterTo or dst implements ReaderFrom,
buf will not be used to perform the copy.  

[\(view code\)](<./Io.hx#L787>)


### Io function copyN


```haxe
function copyN(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
CopyN copies n bytes (or until an error) from src to dst.
        It returns the number of bytes copied and the earliest
        error encountered while copying.
        On return, written == n if and only if err == nil.
```

If dst implements the ReaderFrom interface,
the copy is implemented using it.  

[\(view code\)](<./Io.hx#L752>)


### Io function limitReader


```haxe
function limitReader(_r:stdgo.io.Reader, _n:haxe.Int64):stdgo.io.Reader
```


```
LimitReader returns a Reader that reads from r
        but stops with EOF after n bytes.
        The underlying implementation is a *LimitedReader.
```
[\(view code\)](<./Io.hx#L799>)


### Io function multiReader


```haxe
function multiReader(_readers:haxe.Rest<stdgo.io.Reader>):stdgo.io.Reader
```


```
MultiReader returns a Reader that's the logical concatenation of
        the provided input readers. They're read sequentially. Once all
        inputs have returned EOF, Read will return EOF.  If any of the readers
        return a non-nil, non-EOF error, Read will return that error.
```
[\(view code\)](<./Io.hx#L853>)


### Io function multiWriter


```haxe
function multiWriter(_writers:haxe.Rest<stdgo.io.Writer>):stdgo.io.Writer
```


```
MultiWriter creates a writer that duplicates its writes to all the
        provided writers, similar to the Unix tee(1) command.
```

Each write is written to each listed writer, one at a time.
If a listed writer returns an error, that overall write operation
stops and returns the error; it does not continue down the list.  

[\(view code\)](<./Io.hx#L864>)


### Io function newOffsetWriter


```haxe
function newOffsetWriter(_w:stdgo.io.WriterAt, _off:haxe.Int64):stdgo.io.OffsetWriter
```


```
NewOffsetWriter returns an OffsetWriter that writes to w
        starting at offset off.
```
[\(view code\)](<./Io.hx#L813>)


### Io function newSectionReader


```haxe
function newSectionReader(_r:stdgo.io.ReaderAt, _off:haxe.Int64, _n:haxe.Int64):stdgo.io.SectionReader
```


```
NewSectionReader returns a SectionReader that reads from r
        starting at offset off and stops with EOF after n bytes.
```
[\(view code\)](<./Io.hx#L806>)


### Io function nopCloser


```haxe
function nopCloser(_r:stdgo.io.Reader):stdgo.io.ReadCloser
```


```
NopCloser returns a ReadCloser with a no-op Close method wrapping
        the provided Reader r.
        If r implements WriterTo, the returned ReadCloser will implement WriterTo
        by forwarding calls to r.
```
[\(view code\)](<./Io.hx#L832>)


### Io function pipe


```haxe
function pipe():stdgo.Tuple<stdgo.io.PipeReader, stdgo.io.PipeWriter>
```


```
Pipe creates a synchronous in-memory pipe.
        It can be used to connect code expecting an io.Reader
        with code expecting an io.Writer.
```

Reads and Writes on the pipe are matched one to one
except when multiple Reads are needed to consume a single Write.
That is, each Write to the PipeWriter blocks until it has satisfied
one or more Reads from the PipeReader that fully consume
the written data.
The data is copied directly from the Write to the corresponding
Read \(or Reads\); there is no internal buffering.  


It is safe to call Read and Write in parallel with each other or with Close.
Parallel calls to Read and parallel calls to Write are also safe:
the individual calls will be gated sequentially.  

[\(view code\)](<./Io.hx#L884>)


### Io function readAll


```haxe
function readAll(_r:stdgo.io.Reader):stdgo.Tuple<Array<Int>, stdgo.Error>
```


```
ReadAll reads from r until an error or EOF and returns the data it read.
        A successful call returns err == nil, not err == EOF. Because ReadAll is
        defined to read from src until EOF, it does not treat an EOF from Read
        as an error to be reported.
```
[\(view code\)](<./Io.hx#L841>)


### Io function readAtLeast


```haxe
function readAtLeast(_r:stdgo.io.Reader, _buf:Array<Int>, _min:Int):stdgo.Tuple<Int, stdgo.Error>
```


```
ReadAtLeast reads from r into buf until it has read at least min bytes.
        It returns the number of bytes copied and an error if fewer bytes were read.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading fewer than min bytes,
        ReadAtLeast returns ErrUnexpectedEOF.
        If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
        On return, n >= min if and only if err == nil.
        If r returns an error having read at least min bytes, the error is dropped.
```
[\(view code\)](<./Io.hx#L720>)


### Io function readFull


```haxe
function readFull(_r:stdgo.io.Reader, _buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
```


```
ReadFull reads exactly len(buf) bytes from r into buf.
        It returns the number of bytes copied and an error if fewer bytes were read.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadFull returns ErrUnexpectedEOF.
        On return, n == len(buf) if and only if err == nil.
        If r returns an error having read at least len(buf) bytes, the error is dropped.
```
[\(view code\)](<./Io.hx#L736>)


### Io function teeReader


```haxe
function teeReader(_r:stdgo.io.Reader, _w:stdgo.io.Writer):stdgo.io.Reader
```


```
TeeReader returns a Reader that writes to w what it reads from r.
        All reads from r performed through it are matched with
        corresponding writes to w. There is no internal buffering -
        the write must complete before the read completes.
        Any error encountered while writing is reported as a read error.
```
[\(view code\)](<./Io.hx#L823>)


### Io function writeString


```haxe
function writeString(_w:stdgo.io.Writer, _s:String):stdgo.Tuple<Int, stdgo.Error>
```


```
WriteString writes the contents of the string s to w, which accepts a slice of bytes.
        If w implements StringWriter, its WriteString method is invoked directly.
        Otherwise, w.Write is called exactly once.
```
[\(view code\)](<./Io.hx#L704>)


# Typedefs


```haxe
import stdgo.io.*
```


## typedef ByteReader


```haxe
typedef ByteReader = stdgo._internal.io.ByteReader;
```


## typedef ByteScanner


```haxe
typedef ByteScanner = stdgo._internal.io.ByteScanner;
```


## typedef ByteWriter


```haxe
typedef ByteWriter = stdgo._internal.io.ByteWriter;
```


## typedef Closer


```haxe
typedef Closer = stdgo._internal.io.Closer;
```


## typedef ReadCloser


```haxe
typedef ReadCloser = stdgo._internal.io.ReadCloser;
```


## typedef ReadSeekCloser


```haxe
typedef ReadSeekCloser = stdgo._internal.io.ReadSeekCloser;
```


## typedef ReadSeeker


```haxe
typedef ReadSeeker = stdgo._internal.io.ReadSeeker;
```


## typedef ReadWriteCloser


```haxe
typedef ReadWriteCloser = stdgo._internal.io.ReadWriteCloser;
```


## typedef ReadWriteSeeker


```haxe
typedef ReadWriteSeeker = stdgo._internal.io.ReadWriteSeeker;
```


## typedef ReadWriter


```haxe
typedef ReadWriter = stdgo._internal.io.ReadWriter;
```


## typedef Reader


```haxe
typedef Reader = stdgo._internal.io.Reader;
```


## typedef ReaderAt


```haxe
typedef ReaderAt = stdgo._internal.io.ReaderAt;
```


## typedef ReaderFrom


```haxe
typedef ReaderFrom = stdgo._internal.io.ReaderFrom;
```


## typedef RuneReader


```haxe
typedef RuneReader = stdgo._internal.io.RuneReader;
```


## typedef RuneScanner


```haxe
typedef RuneScanner = stdgo._internal.io.RuneScanner;
```


## typedef Seeker


```haxe
typedef Seeker = stdgo._internal.io.Seeker;
```


## typedef StringWriter


```haxe
typedef StringWriter = stdgo._internal.io.StringWriter;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.io.T__struct_0;
```


## typedef WriteCloser


```haxe
typedef WriteCloser = stdgo._internal.io.WriteCloser;
```


## typedef WriteSeeker


```haxe
typedef WriteSeeker = stdgo._internal.io.WriteSeeker;
```


## typedef Writer


```haxe
typedef Writer = stdgo._internal.io.Writer;
```


## typedef WriterAt


```haxe
typedef WriterAt = stdgo._internal.io.WriterAt;
```


## typedef WriterTo


```haxe
typedef WriterTo = stdgo._internal.io.WriterTo;
```


# Abstracts


## abstract LimitedReader


[\(view file containing code\)](<./Io.hx>)


## abstract SectionReader


[\(view file containing code\)](<./Io.hx>)


## abstract OffsetWriter


[\(view file containing code\)](<./Io.hx>)


## abstract T\_teeReader


[\(view file containing code\)](<./Io.hx>)


## abstract T\_discard


[\(view file containing code\)](<./Io.hx>)


## abstract T\_nopCloser


[\(view file containing code\)](<./Io.hx>)


## abstract T\_nopCloserWriterTo


[\(view file containing code\)](<./Io.hx>)


## abstract T\_eofReader


[\(view file containing code\)](<./Io.hx>)


## abstract T\_multiReader


[\(view file containing code\)](<./Io.hx>)


## abstract T\_multiWriter


[\(view file containing code\)](<./Io.hx>)


## abstract T\_onceError


[\(view file containing code\)](<./Io.hx>)


## abstract T\_pipe


[\(view file containing code\)](<./Io.hx>)


## abstract PipeReader


[\(view file containing code\)](<./Io.hx>)


## abstract PipeWriter


[\(view file containing code\)](<./Io.hx>)


