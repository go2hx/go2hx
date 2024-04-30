# Module: `stdgo.io`

[(view library index)](../stdgo.md)


# Overview


```
Package io provides basic interfaces to I/O primitives.
    Its primary job is to wrap existing implementations of such primitives,
    such as those in package os, into shared public interfaces that
    abstract the functionality, plus some other related primitives.
```

Because these interfaces and primitives wrap lower\-level operations with
various implementations, unless otherwise informed clients should not
assume they are safe for parallel execution.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function copy(dst:stdgo.io.Writer, src:stdgo.io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-copy>)

- [`function copyBuffer(dst:stdgo.io.Writer, src:stdgo.io.Reader, buf:Array<Int>):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-copybuffer>)

- [`function copyN(dst:stdgo.io.Writer, src:stdgo.io.Reader, n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-copyn>)

- [`function get_discard():stdgo._internal.io.Writer`](<#function-get_discard>)

- [`function get_eof():stdgo.Error`](<#function-get_eof>)

- [`function get_errClosedPipe():stdgo.Error`](<#function-get_errclosedpipe>)

- [`function get_errInvalidWrite():stdgo.Error`](<#function-get_errinvalidwrite>)

- [`function get_errNoProgress():stdgo.Error`](<#function-get_errnoprogress>)

- [`function get_errOffset():stdgo.Error`](<#function-get_erroffset>)

- [`function get_errShortBuffer():stdgo.Error`](<#function-get_errshortbuffer>)

- [`function get_errShortWrite():stdgo.Error`](<#function-get_errshortwrite>)

- [`function get_errUnexpectedEOF():stdgo.Error`](<#function-get_errunexpectedeof>)

- [`function get_errWhence():stdgo.Error`](<#function-get_errwhence>)

- [`function limitReader(r:stdgo.io.Reader, n:haxe.Int64):stdgo.io.Reader`](<#function-limitreader>)

- [`function multiReader(readers:haxe.Rest<stdgo.io.Reader>):stdgo.io.Reader`](<#function-multireader>)

- [`function multiWriter(writers:haxe.Rest<stdgo.io.Writer>):stdgo.io.Writer`](<#function-multiwriter>)

- [`function newOffsetWriter(w:stdgo.io.WriterAt, off:haxe.Int64):stdgo.io.OffsetWriter`](<#function-newoffsetwriter>)

- [`function newSectionReader(r:stdgo.io.ReaderAt, off:haxe.Int64, n:haxe.Int64):stdgo.io.SectionReader`](<#function-newsectionreader>)

- [`function nopCloser(r:stdgo.io.Reader):stdgo.io.ReadCloser`](<#function-nopcloser>)

- [`function pipe():stdgo.Tuple<stdgo.io.PipeReader, stdgo.io.PipeWriter>`](<#function-pipe>)

- [`function readAll(r:stdgo.io.Reader):stdgo.Tuple<Array<Int>, stdgo.Error>`](<#function-readall>)

- [`function readAtLeast(r:stdgo.io.Reader, buf:Array<Int>, min:Int):stdgo.Tuple<Int, stdgo.Error>`](<#function-readatleast>)

- [`function readFull(r:stdgo.io.Reader, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>`](<#function-readfull>)

- [`function set_discard(v:stdgo._internal.io.Writer):stdgo._internal.io.Writer`](<#function-set_discard>)

- [`function set_eof(v:stdgo.Error):stdgo.Error`](<#function-set_eof>)

- [`function set_errClosedPipe(v:stdgo.Error):stdgo.Error`](<#function-set_errclosedpipe>)

- [`function set_errInvalidWrite(v:stdgo.Error):stdgo.Error`](<#function-set_errinvalidwrite>)

- [`function set_errNoProgress(v:stdgo.Error):stdgo.Error`](<#function-set_errnoprogress>)

- [`function set_errOffset(v:stdgo.Error):stdgo.Error`](<#function-set_erroffset>)

- [`function set_errShortBuffer(v:stdgo.Error):stdgo.Error`](<#function-set_errshortbuffer>)

- [`function set_errShortWrite(v:stdgo.Error):stdgo.Error`](<#function-set_errshortwrite>)

- [`function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error`](<#function-set_errunexpectedeof>)

- [`function set_errWhence(v:stdgo.Error):stdgo.Error`](<#function-set_errwhence>)

- [`function teeReader(r:stdgo.io.Reader, w:stdgo.io.Writer):stdgo.io.Reader`](<#function-teereader>)

- [`function writeString(w:stdgo.io.Writer, s:String):stdgo.Tuple<Int, stdgo.Error>`](<#function-writestring>)

- [typedef ByteReader](<#typedef-bytereader>)

- [typedef ByteReader\_static\_extension](<#typedef-bytereader_static_extension>)

- [typedef ByteScanner](<#typedef-bytescanner>)

- [typedef ByteScanner\_static\_extension](<#typedef-bytescanner_static_extension>)

- [typedef ByteWriter](<#typedef-bytewriter>)

- [typedef ByteWriter\_static\_extension](<#typedef-bytewriter_static_extension>)

- [typedef Closer](<#typedef-closer>)

- [typedef Closer\_static\_extension](<#typedef-closer_static_extension>)

- [typedef LimitedReader](<#typedef-limitedreader>)

- [typedef LimitedReader\_asInterface](<#typedef-limitedreader_asinterface>)

- [typedef LimitedReader\_static\_extension](<#typedef-limitedreader_static_extension>)

- [typedef OffsetWriter](<#typedef-offsetwriter>)

- [typedef OffsetWriter\_asInterface](<#typedef-offsetwriter_asinterface>)

- [typedef OffsetWriter\_static\_extension](<#typedef-offsetwriter_static_extension>)

- [typedef PipeReader](<#typedef-pipereader>)

- [typedef PipeReader\_asInterface](<#typedef-pipereader_asinterface>)

- [typedef PipeReader\_static\_extension](<#typedef-pipereader_static_extension>)

- [typedef PipeWriter](<#typedef-pipewriter>)

- [typedef PipeWriter\_asInterface](<#typedef-pipewriter_asinterface>)

- [typedef PipeWriter\_static\_extension](<#typedef-pipewriter_static_extension>)

- [typedef ReadCloser](<#typedef-readcloser>)

- [typedef ReadCloser\_static\_extension](<#typedef-readcloser_static_extension>)

- [typedef ReadSeekCloser](<#typedef-readseekcloser>)

- [typedef ReadSeekCloser\_static\_extension](<#typedef-readseekcloser_static_extension>)

- [typedef ReadSeeker](<#typedef-readseeker>)

- [typedef ReadSeeker\_static\_extension](<#typedef-readseeker_static_extension>)

- [typedef ReadWriteCloser](<#typedef-readwritecloser>)

- [typedef ReadWriteCloser\_static\_extension](<#typedef-readwritecloser_static_extension>)

- [typedef ReadWriteSeeker](<#typedef-readwriteseeker>)

- [typedef ReadWriteSeeker\_static\_extension](<#typedef-readwriteseeker_static_extension>)

- [typedef ReadWriter](<#typedef-readwriter>)

- [typedef ReadWriter\_static\_extension](<#typedef-readwriter_static_extension>)

- [typedef Reader](<#typedef-reader>)

- [typedef ReaderAt](<#typedef-readerat>)

- [typedef ReaderAt\_static\_extension](<#typedef-readerat_static_extension>)

- [typedef ReaderFrom](<#typedef-readerfrom>)

- [typedef ReaderFrom\_static\_extension](<#typedef-readerfrom_static_extension>)

- [typedef Reader\_static\_extension](<#typedef-reader_static_extension>)

- [typedef RuneReader](<#typedef-runereader>)

- [typedef RuneReader\_static\_extension](<#typedef-runereader_static_extension>)

- [typedef RuneScanner](<#typedef-runescanner>)

- [typedef RuneScanner\_static\_extension](<#typedef-runescanner_static_extension>)

- [typedef SectionReader](<#typedef-sectionreader>)

- [typedef SectionReader\_asInterface](<#typedef-sectionreader_asinterface>)

- [typedef SectionReader\_static\_extension](<#typedef-sectionreader_static_extension>)

- [typedef Seeker](<#typedef-seeker>)

- [typedef Seeker\_static\_extension](<#typedef-seeker_static_extension>)

- [typedef StringWriter](<#typedef-stringwriter>)

- [typedef StringWriter\_static\_extension](<#typedef-stringwriter_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_discard](<#typedef-t_discard>)

- [typedef T\_discard\_asInterface](<#typedef-t_discard_asinterface>)

- [typedef T\_discard\_static\_extension](<#typedef-t_discard_static_extension>)

- [typedef T\_eofReader](<#typedef-t_eofreader>)

- [typedef T\_eofReader\_asInterface](<#typedef-t_eofreader_asinterface>)

- [typedef T\_eofReader\_static\_extension](<#typedef-t_eofreader_static_extension>)

- [typedef T\_multiReader](<#typedef-t_multireader>)

- [typedef T\_multiReader\_asInterface](<#typedef-t_multireader_asinterface>)

- [typedef T\_multiReader\_static\_extension](<#typedef-t_multireader_static_extension>)

- [typedef T\_multiWriter](<#typedef-t_multiwriter>)

- [typedef T\_multiWriter\_asInterface](<#typedef-t_multiwriter_asinterface>)

- [typedef T\_multiWriter\_static\_extension](<#typedef-t_multiwriter_static_extension>)

- [typedef T\_nopCloser](<#typedef-t_nopcloser>)

- [typedef T\_nopCloserWriterTo](<#typedef-t_nopcloserwriterto>)

- [typedef T\_nopCloserWriterTo\_asInterface](<#typedef-t_nopcloserwriterto_asinterface>)

- [typedef T\_nopCloserWriterTo\_static\_extension](<#typedef-t_nopcloserwriterto_static_extension>)

- [typedef T\_nopCloser\_asInterface](<#typedef-t_nopcloser_asinterface>)

- [typedef T\_nopCloser\_static\_extension](<#typedef-t_nopcloser_static_extension>)

- [typedef T\_onceError](<#typedef-t_onceerror>)

- [typedef T\_onceError\_asInterface](<#typedef-t_onceerror_asinterface>)

- [typedef T\_onceError\_static\_extension](<#typedef-t_onceerror_static_extension>)

- [typedef T\_pipe](<#typedef-t_pipe>)

- [typedef T\_pipe\_asInterface](<#typedef-t_pipe_asinterface>)

- [typedef T\_pipe\_static\_extension](<#typedef-t_pipe_static_extension>)

- [typedef T\_teeReader](<#typedef-t_teereader>)

- [typedef T\_teeReader\_asInterface](<#typedef-t_teereader_asinterface>)

- [typedef T\_teeReader\_static\_extension](<#typedef-t_teereader_static_extension>)

- [typedef WriteCloser](<#typedef-writecloser>)

- [typedef WriteCloser\_static\_extension](<#typedef-writecloser_static_extension>)

- [typedef WriteSeeker](<#typedef-writeseeker>)

- [typedef WriteSeeker\_static\_extension](<#typedef-writeseeker_static_extension>)

- [typedef Writer](<#typedef-writer>)

- [typedef WriterAt](<#typedef-writerat>)

- [typedef WriterAt\_static\_extension](<#typedef-writerat_static_extension>)

- [typedef WriterTo](<#typedef-writerto>)

- [typedef WriterTo\_static\_extension](<#typedef-writerto_static_extension>)

- [typedef Writer\_static\_extension](<#typedef-writer_static_extension>)

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
var discard:stdgo._internal.io.Writer
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


# Functions


```haxe
import stdgo.io.Io
```


## function copy


```haxe
function copy(dst:stdgo.io.Writer, src:stdgo.io.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error>
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

[\(view code\)](<./Io.hx#L158>)


## function copyBuffer


```haxe
function copyBuffer(dst:stdgo.io.Writer, src:stdgo.io.Reader, buf:Array<Int>):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
CopyBuffer is identical to Copy except that it stages through the
    provided buffer (if one is required) rather than allocating a
    temporary one. If buf is nil, one is allocated; otherwise if it has
    zero length, CopyBuffer panics.
```

If either src implements WriterTo or dst implements ReaderFrom,
buf will not be used to perform the copy.  

[\(view code\)](<./Io.hx#L168>)


## function copyN


```haxe
function copyN(dst:stdgo.io.Writer, src:stdgo.io.Reader, n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
CopyN copies n bytes (or until an error) from src to dst.
    It returns the number of bytes copied and the earliest
    error encountered while copying.
    On return, written == n if and only if err == nil.
```

If dst implements the ReaderFrom interface,
the copy is implemented using it.  

[\(view code\)](<./Io.hx#L143>)


## function get\_discard


```haxe
function get_discard():stdgo._internal.io.Writer
```


[\(view code\)](<./Io.hx#L32>)


## function get\_eof


```haxe
function get_eof():stdgo.Error
```


[\(view code\)](<./Io.hx#L23>)


## function get\_errClosedPipe


```haxe
function get_errClosedPipe():stdgo.Error
```


[\(view code\)](<./Io.hx#L35>)


## function get\_errInvalidWrite


```haxe
function get_errInvalidWrite():stdgo.Error
```


[\(view code\)](<./Io.hx#L38>)


## function get\_errNoProgress


```haxe
function get_errNoProgress():stdgo.Error
```


[\(view code\)](<./Io.hx#L29>)


## function get\_errOffset


```haxe
function get_errOffset():stdgo.Error
```


[\(view code\)](<./Io.hx#L44>)


## function get\_errShortBuffer


```haxe
function get_errShortBuffer():stdgo.Error
```


[\(view code\)](<./Io.hx#L20>)


## function get\_errShortWrite


```haxe
function get_errShortWrite():stdgo.Error
```


[\(view code\)](<./Io.hx#L17>)


## function get\_errUnexpectedEOF


```haxe
function get_errUnexpectedEOF():stdgo.Error
```


[\(view code\)](<./Io.hx#L26>)


## function get\_errWhence


```haxe
function get_errWhence():stdgo.Error
```


[\(view code\)](<./Io.hx#L41>)


## function limitReader


```haxe
function limitReader(r:stdgo.io.Reader, n:haxe.Int64):stdgo.io.Reader
```


```
LimitReader returns a Reader that reads from r
    but stops with EOF after n bytes.
    The underlying implementation is a *LimitedReader.
```
[\(view code\)](<./Io.hx#L174>)


## function multiReader


```haxe
function multiReader(readers:haxe.Rest<stdgo.io.Reader>):stdgo.io.Reader
```


```
MultiReader returns a Reader that's the logical concatenation of
    the provided input readers. They're read sequentially. Once all
    inputs have returned EOF, Read will return EOF.  If any of the readers
    return a non-nil, non-EOF error, Read will return that error.
```
[\(view code\)](<./Io.hx#L213>)


## function multiWriter


```haxe
function multiWriter(writers:haxe.Rest<stdgo.io.Writer>):stdgo.io.Writer
```


```
MultiWriter creates a writer that duplicates its writes to all the
    provided writers, similar to the Unix tee(1) command.
```

Each write is written to each listed writer, one at a time.
If a listed writer returns an error, that overall write operation
stops and returns the error; it does not continue down the list.  

[\(view code\)](<./Io.hx#L222>)


## function newOffsetWriter


```haxe
function newOffsetWriter(w:stdgo.io.WriterAt, off:haxe.Int64):stdgo.io.OffsetWriter
```


```
NewOffsetWriter returns an OffsetWriter that writes to w
    starting at offset off.
```
[\(view code\)](<./Io.hx#L184>)


## function newSectionReader


```haxe
function newSectionReader(r:stdgo.io.ReaderAt, off:haxe.Int64, n:haxe.Int64):stdgo.io.SectionReader
```


```
NewSectionReader returns a SectionReader that reads from r
    starting at offset off and stops with EOF after n bytes.
```
[\(view code\)](<./Io.hx#L179>)


## function nopCloser


```haxe
function nopCloser(r:stdgo.io.Reader):stdgo.io.ReadCloser
```


```
NopCloser returns a ReadCloser with a no-op Close method wrapping
    the provided Reader r.
    If r implements WriterTo, the returned ReadCloser will implement WriterTo
    by forwarding calls to r.
```
[\(view code\)](<./Io.hx#L199>)


## function pipe


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

[\(view code\)](<./Io.hx#L240>)


## function readAll


```haxe
function readAll(r:stdgo.io.Reader):stdgo.Tuple<Array<Int>, stdgo.Error>
```


```
ReadAll reads from r until an error or EOF and returns the data it read.
    A successful call returns err == nil, not err == EOF. Because ReadAll is
    defined to read from src until EOF, it does not treat an EOF from Read
    as an error to be reported.
```
[\(view code\)](<./Io.hx#L206>)


## function readAtLeast


```haxe
function readAtLeast(r:stdgo.io.Reader, buf:Array<Int>, min:Int):stdgo.Tuple<Int, stdgo.Error>
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
[\(view code\)](<./Io.hx#L123>)


## function readFull


```haxe
function readFull(r:stdgo.io.Reader, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error>
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
[\(view code\)](<./Io.hx#L133>)


## function set\_discard


```haxe
function set_discard(v:stdgo._internal.io.Writer):stdgo._internal.io.Writer
```


[\(view code\)](<./Io.hx#L33>)


## function set\_eof


```haxe
function set_eof(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L24>)


## function set\_errClosedPipe


```haxe
function set_errClosedPipe(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L36>)


## function set\_errInvalidWrite


```haxe
function set_errInvalidWrite(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L39>)


## function set\_errNoProgress


```haxe
function set_errNoProgress(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L30>)


## function set\_errOffset


```haxe
function set_errOffset(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L45>)


## function set\_errShortBuffer


```haxe
function set_errShortBuffer(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L21>)


## function set\_errShortWrite


```haxe
function set_errShortWrite(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L18>)


## function set\_errUnexpectedEOF


```haxe
function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L27>)


## function set\_errWhence


```haxe
function set_errWhence(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Io.hx#L42>)


## function teeReader


```haxe
function teeReader(r:stdgo.io.Reader, w:stdgo.io.Writer):stdgo.io.Reader
```


```
TeeReader returns a Reader that writes to w what it reads from r.
    All reads from r performed through it are matched with
    corresponding writes to w. There is no internal buffering -
    the write must complete before the read completes.
    Any error encountered while writing is reported as a read error.
```
[\(view code\)](<./Io.hx#L192>)


## function writeString


```haxe
function writeString(w:stdgo.io.Writer, s:String):stdgo.Tuple<Int, stdgo.Error>
```


```
WriteString writes the contents of the string s to w, which accepts a slice of bytes.
    If w implements StringWriter, its WriteString method is invoked directly.
    Otherwise, w.Write is called exactly once.
```
[\(view code\)](<./Io.hx#L112>)


# Typedefs


```haxe
import stdgo.io.*
```


## typedef ByteReader


```haxe
typedef ByteReader = stdgo._internal.io.ByteReader;
```


## typedef ByteReader\_static\_extension


```haxe
typedef ByteReader_static_extension = Dynamic;
```


## typedef ByteScanner


```haxe
typedef ByteScanner = stdgo._internal.io.ByteScanner;
```


## typedef ByteScanner\_static\_extension


```haxe
typedef ByteScanner_static_extension = Dynamic;
```


## typedef ByteWriter


```haxe
typedef ByteWriter = stdgo._internal.io.ByteWriter;
```


## typedef ByteWriter\_static\_extension


```haxe
typedef ByteWriter_static_extension = Dynamic;
```


## typedef Closer


```haxe
typedef Closer = stdgo._internal.io.Closer;
```


## typedef Closer\_static\_extension


```haxe
typedef Closer_static_extension = Dynamic;
```


## typedef LimitedReader


```haxe
typedef LimitedReader = Dynamic;
```


## typedef LimitedReader\_asInterface


```haxe
typedef LimitedReader_asInterface = Dynamic;
```


## typedef LimitedReader\_static\_extension


```haxe
typedef LimitedReader_static_extension = Dynamic;
```


## typedef OffsetWriter


```haxe
typedef OffsetWriter = Dynamic;
```


## typedef OffsetWriter\_asInterface


```haxe
typedef OffsetWriter_asInterface = Dynamic;
```


## typedef OffsetWriter\_static\_extension


```haxe
typedef OffsetWriter_static_extension = Dynamic;
```


## typedef PipeReader


```haxe
typedef PipeReader = Dynamic;
```


## typedef PipeReader\_asInterface


```haxe
typedef PipeReader_asInterface = Dynamic;
```


## typedef PipeReader\_static\_extension


```haxe
typedef PipeReader_static_extension = Dynamic;
```


## typedef PipeWriter


```haxe
typedef PipeWriter = Dynamic;
```


## typedef PipeWriter\_asInterface


```haxe
typedef PipeWriter_asInterface = Dynamic;
```


## typedef PipeWriter\_static\_extension


```haxe
typedef PipeWriter_static_extension = Dynamic;
```


## typedef ReadCloser


```haxe
typedef ReadCloser = stdgo._internal.io.ReadCloser;
```


## typedef ReadCloser\_static\_extension


```haxe
typedef ReadCloser_static_extension = Dynamic;
```


## typedef ReadSeekCloser


```haxe
typedef ReadSeekCloser = stdgo._internal.io.ReadSeekCloser;
```


## typedef ReadSeekCloser\_static\_extension


```haxe
typedef ReadSeekCloser_static_extension = Dynamic;
```


## typedef ReadSeeker


```haxe
typedef ReadSeeker = stdgo._internal.io.ReadSeeker;
```


## typedef ReadSeeker\_static\_extension


```haxe
typedef ReadSeeker_static_extension = Dynamic;
```


## typedef ReadWriteCloser


```haxe
typedef ReadWriteCloser = stdgo._internal.io.ReadWriteCloser;
```


## typedef ReadWriteCloser\_static\_extension


```haxe
typedef ReadWriteCloser_static_extension = Dynamic;
```


## typedef ReadWriteSeeker


```haxe
typedef ReadWriteSeeker = stdgo._internal.io.ReadWriteSeeker;
```


## typedef ReadWriteSeeker\_static\_extension


```haxe
typedef ReadWriteSeeker_static_extension = Dynamic;
```


## typedef ReadWriter


```haxe
typedef ReadWriter = stdgo._internal.io.ReadWriter;
```


## typedef ReadWriter\_static\_extension


```haxe
typedef ReadWriter_static_extension = Dynamic;
```


## typedef Reader


```haxe
typedef Reader = stdgo._internal.io.Reader;
```


## typedef ReaderAt


```haxe
typedef ReaderAt = stdgo._internal.io.ReaderAt;
```


## typedef ReaderAt\_static\_extension


```haxe
typedef ReaderAt_static_extension = Dynamic;
```


## typedef ReaderFrom


```haxe
typedef ReaderFrom = stdgo._internal.io.ReaderFrom;
```


## typedef ReaderFrom\_static\_extension


```haxe
typedef ReaderFrom_static_extension = Dynamic;
```


## typedef Reader\_static\_extension


```haxe
typedef Reader_static_extension = Dynamic;
```


## typedef RuneReader


```haxe
typedef RuneReader = stdgo._internal.io.RuneReader;
```


## typedef RuneReader\_static\_extension


```haxe
typedef RuneReader_static_extension = Dynamic;
```


## typedef RuneScanner


```haxe
typedef RuneScanner = stdgo._internal.io.RuneScanner;
```


## typedef RuneScanner\_static\_extension


```haxe
typedef RuneScanner_static_extension = Dynamic;
```


## typedef SectionReader


```haxe
typedef SectionReader = Dynamic;
```


## typedef SectionReader\_asInterface


```haxe
typedef SectionReader_asInterface = Dynamic;
```


## typedef SectionReader\_static\_extension


```haxe
typedef SectionReader_static_extension = Dynamic;
```


## typedef Seeker


```haxe
typedef Seeker = stdgo._internal.io.Seeker;
```


## typedef Seeker\_static\_extension


```haxe
typedef Seeker_static_extension = Dynamic;
```


## typedef StringWriter


```haxe
typedef StringWriter = stdgo._internal.io.StringWriter;
```


## typedef StringWriter\_static\_extension


```haxe
typedef StringWriter_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.io.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_discard


```haxe
typedef T_discard = Dynamic;
```


## typedef T\_discard\_asInterface


```haxe
typedef T_discard_asInterface = Dynamic;
```


## typedef T\_discard\_static\_extension


```haxe
typedef T_discard_static_extension = Dynamic;
```


## typedef T\_eofReader


```haxe
typedef T_eofReader = Dynamic;
```


## typedef T\_eofReader\_asInterface


```haxe
typedef T_eofReader_asInterface = Dynamic;
```


## typedef T\_eofReader\_static\_extension


```haxe
typedef T_eofReader_static_extension = Dynamic;
```


## typedef T\_multiReader


```haxe
typedef T_multiReader = Dynamic;
```


## typedef T\_multiReader\_asInterface


```haxe
typedef T_multiReader_asInterface = Dynamic;
```


## typedef T\_multiReader\_static\_extension


```haxe
typedef T_multiReader_static_extension = Dynamic;
```


## typedef T\_multiWriter


```haxe
typedef T_multiWriter = Dynamic;
```


## typedef T\_multiWriter\_asInterface


```haxe
typedef T_multiWriter_asInterface = Dynamic;
```


## typedef T\_multiWriter\_static\_extension


```haxe
typedef T_multiWriter_static_extension = Dynamic;
```


## typedef T\_nopCloser


```haxe
typedef T_nopCloser = Dynamic;
```


## typedef T\_nopCloserWriterTo


```haxe
typedef T_nopCloserWriterTo = Dynamic;
```


## typedef T\_nopCloserWriterTo\_asInterface


```haxe
typedef T_nopCloserWriterTo_asInterface = Dynamic;
```


## typedef T\_nopCloserWriterTo\_static\_extension


```haxe
typedef T_nopCloserWriterTo_static_extension = Dynamic;
```


## typedef T\_nopCloser\_asInterface


```haxe
typedef T_nopCloser_asInterface = Dynamic;
```


## typedef T\_nopCloser\_static\_extension


```haxe
typedef T_nopCloser_static_extension = Dynamic;
```


## typedef T\_onceError


```haxe
typedef T_onceError = Dynamic;
```


## typedef T\_onceError\_asInterface


```haxe
typedef T_onceError_asInterface = Dynamic;
```


## typedef T\_onceError\_static\_extension


```haxe
typedef T_onceError_static_extension = Dynamic;
```


## typedef T\_pipe


```haxe
typedef T_pipe = Dynamic;
```


## typedef T\_pipe\_asInterface


```haxe
typedef T_pipe_asInterface = Dynamic;
```


## typedef T\_pipe\_static\_extension


```haxe
typedef T_pipe_static_extension = Dynamic;
```


## typedef T\_teeReader


```haxe
typedef T_teeReader = Dynamic;
```


## typedef T\_teeReader\_asInterface


```haxe
typedef T_teeReader_asInterface = Dynamic;
```


## typedef T\_teeReader\_static\_extension


```haxe
typedef T_teeReader_static_extension = Dynamic;
```


## typedef WriteCloser


```haxe
typedef WriteCloser = stdgo._internal.io.WriteCloser;
```


## typedef WriteCloser\_static\_extension


```haxe
typedef WriteCloser_static_extension = Dynamic;
```


## typedef WriteSeeker


```haxe
typedef WriteSeeker = stdgo._internal.io.WriteSeeker;
```


## typedef WriteSeeker\_static\_extension


```haxe
typedef WriteSeeker_static_extension = Dynamic;
```


## typedef Writer


```haxe
typedef Writer = stdgo._internal.io.Writer;
```


## typedef WriterAt


```haxe
typedef WriterAt = stdgo._internal.io.WriterAt;
```


## typedef WriterAt\_static\_extension


```haxe
typedef WriterAt_static_extension = Dynamic;
```


## typedef WriterTo


```haxe
typedef WriterTo = stdgo._internal.io.WriterTo;
```


## typedef WriterTo\_static\_extension


```haxe
typedef WriterTo_static_extension = Dynamic;
```


## typedef Writer\_static\_extension


```haxe
typedef Writer_static_extension = Dynamic;
```


