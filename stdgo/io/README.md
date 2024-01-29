# Module: `stdgo.io`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_copybuffer>)

- [`function copy(_dst:stdgo.io.Writer, _src:stdgo.io.Reader):Void`](<#function-copy>)

- [`function copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-copybuffer>)

- [`function copyN(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _n:stdgo.GoInt64):Void`](<#function-copyn>)

- [`function limitReader(_r:stdgo.io.Reader, _n:stdgo.GoInt64):Void`](<#function-limitreader>)

- [`function multiReader(_readers:haxe.Rest<stdgo.io.Reader>):Void`](<#function-multireader>)

- [`function multiWriter(_writers:haxe.Rest<stdgo.io.Writer>):Void`](<#function-multiwriter>)

- [`function newOffsetWriter(_w:stdgo.io.WriterAt, _off:stdgo.GoInt64):Void`](<#function-newoffsetwriter>)

- [`function newSectionReader(_r:stdgo.io.ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):Void`](<#function-newsectionreader>)

- [`function nopCloser(_r:stdgo.io.Reader):Void`](<#function-nopcloser>)

- [`function pipe():Void`](<#function-pipe>)

- [`function readAll(_r:stdgo.io.Reader):Void`](<#function-readall>)

- [`function readAtLeast(_r:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>, _min:stdgo.GoInt):Void`](<#function-readatleast>)

- [`function readFull(_r:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void`](<#function-readfull>)

- [`function teeReader(_r:stdgo.io.Reader, _w:stdgo.io.Writer):Void`](<#function-teereader>)

- [`function writeString(_w:stdgo.io.Writer, _s:stdgo.GoString):Void`](<#function-writestring>)

- [typedef ByteReader](<#typedef-bytereader>)

- [typedef ByteScanner](<#typedef-bytescanner>)

- [typedef ByteWriter](<#typedef-bytewriter>)

- [typedef Closer](<#typedef-closer>)

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

- [typedef SectionReader](<#typedef-sectionreader>)

- [typedef SectionReader\_asInterface](<#typedef-sectionreader_asinterface>)

- [typedef SectionReader\_static\_extension](<#typedef-sectionreader_static_extension>)

- [typedef Seeker](<#typedef-seeker>)

- [typedef StringWriter](<#typedef-stringwriter>)

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

- [typedef WriteSeeker](<#typedef-writeseeker>)

- [typedef Writer](<#typedef-writer>)

- [typedef WriterAt](<#typedef-writerat>)

- [typedef WriterTo](<#typedef-writerto>)

# Variables


```haxe
import stdgo.io.Io
```


```haxe
var __3:Dynamic
```


```haxe
var __4:Dynamic
```


```haxe
var __5:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _blackHolePool:Dynamic
```


```haxe
var _errInvalidWrite:Dynamic
```


```haxe
var _errOffset:Dynamic
```


```haxe
var _errWhence:Dynamic
```


```haxe
var discard:Dynamic
```


```haxe
var eof:Dynamic
```


```haxe
var errClosedPipe:Dynamic
```


```haxe
var errInvalidWrite:Dynamic
```


```haxe
var errNoProgress:Dynamic
```


```haxe
var errOffset:Dynamic
```


```haxe
var errShortBuffer:Dynamic
```


```haxe
var errShortWrite:Dynamic
```


```haxe
var errUnexpectedEOF:Dynamic
```


```haxe
var errWhence:Dynamic
```


```haxe
var seekCurrent:Dynamic
```


```haxe
var seekEnd:Dynamic
```


```haxe
var seekStart:Dynamic
```


# Functions


```haxe
import stdgo.io.Io
```


## function \_copyBuffer


```haxe
function _copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Io.hx#L68>)


## function copy


```haxe
function copy(_dst:stdgo.io.Writer, _src:stdgo.io.Reader):Void
```


[\(view code\)](<./Io.hx#L66>)


## function copyBuffer


```haxe
function copyBuffer(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Io.hx#L67>)


## function copyN


```haxe
function copyN(_dst:stdgo.io.Writer, _src:stdgo.io.Reader, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Io.hx#L65>)


## function limitReader


```haxe
function limitReader(_r:stdgo.io.Reader, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Io.hx#L69>)


## function multiReader


```haxe
function multiReader(_readers:haxe.Rest<stdgo.io.Reader>):Void
```


[\(view code\)](<./Io.hx#L75>)


## function multiWriter


```haxe
function multiWriter(_writers:haxe.Rest<stdgo.io.Writer>):Void
```


[\(view code\)](<./Io.hx#L76>)


## function newOffsetWriter


```haxe
function newOffsetWriter(_w:stdgo.io.WriterAt, _off:stdgo.GoInt64):Void
```


[\(view code\)](<./Io.hx#L71>)


## function newSectionReader


```haxe
function newSectionReader(_r:stdgo.io.ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):Void
```


[\(view code\)](<./Io.hx#L70>)


## function nopCloser


```haxe
function nopCloser(_r:stdgo.io.Reader):Void
```


[\(view code\)](<./Io.hx#L73>)


## function pipe


```haxe
function pipe():Void
```


[\(view code\)](<./Io.hx#L77>)


## function readAll


```haxe
function readAll(_r:stdgo.io.Reader):Void
```


[\(view code\)](<./Io.hx#L74>)


## function readAtLeast


```haxe
function readAtLeast(_r:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>, _min:stdgo.GoInt):Void
```


[\(view code\)](<./Io.hx#L63>)


## function readFull


```haxe
function readFull(_r:stdgo.io.Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Io.hx#L64>)


## function teeReader


```haxe
function teeReader(_r:stdgo.io.Reader, _w:stdgo.io.Writer):Void
```


[\(view code\)](<./Io.hx#L72>)


## function writeString


```haxe
function writeString(_w:stdgo.io.Writer, _s:stdgo.GoString):Void
```


[\(view code\)](<./Io.hx#L62>)


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


## typedef StringWriter


```haxe
typedef StringWriter = stdgo._internal.io.StringWriter;
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


