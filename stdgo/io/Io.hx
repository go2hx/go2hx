package stdgo.io;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var errShortWrite : Dynamic;
@:invalid var _errInvalidWrite : Dynamic;
@:invalid var errShortBuffer : Dynamic;
@:invalid var eof : Dynamic;
@:invalid var errUnexpectedEOF : Dynamic;
@:invalid var errNoProgress : Dynamic;
@:invalid var _errWhence : Dynamic;
@:invalid var _errOffset : Dynamic;
@:invalid var discard : Dynamic;
@:invalid var _blackHolePool : Dynamic;
@:invalid var errClosedPipe : Dynamic;
@:invalid var errInvalidWrite : Dynamic;
@:invalid var errWhence : Dynamic;
@:invalid var errOffset : Dynamic;
@:invalid var seekStart : Dynamic;
@:invalid var seekCurrent : Dynamic;
@:invalid var seekEnd : Dynamic;
@:invalid var __3 : Dynamic;
@:invalid var __4 : Dynamic;
@:invalid var __5 : Dynamic;
typedef Reader = stdgo._internal.io.Io.Reader;
typedef Writer = stdgo._internal.io.Io.Writer;
typedef Closer = stdgo._internal.io.Io.Closer;
typedef Seeker = stdgo._internal.io.Io.Seeker;
typedef ReadWriter = stdgo._internal.io.Io.ReadWriter;
typedef ReadCloser = stdgo._internal.io.Io.ReadCloser;
typedef WriteCloser = stdgo._internal.io.Io.WriteCloser;
typedef ReadWriteCloser = stdgo._internal.io.Io.ReadWriteCloser;
typedef ReadSeeker = stdgo._internal.io.Io.ReadSeeker;
typedef ReadSeekCloser = stdgo._internal.io.Io.ReadSeekCloser;
typedef WriteSeeker = stdgo._internal.io.Io.WriteSeeker;
typedef ReadWriteSeeker = stdgo._internal.io.Io.ReadWriteSeeker;
typedef ReaderFrom = stdgo._internal.io.Io.ReaderFrom;
typedef WriterTo = stdgo._internal.io.Io.WriterTo;
typedef ReaderAt = stdgo._internal.io.Io.ReaderAt;
typedef WriterAt = stdgo._internal.io.Io.WriterAt;
typedef ByteReader = stdgo._internal.io.Io.ByteReader;
typedef ByteScanner = stdgo._internal.io.Io.ByteScanner;
typedef ByteWriter = stdgo._internal.io.Io.ByteWriter;
typedef RuneReader = stdgo._internal.io.Io.RuneReader;
typedef RuneScanner = stdgo._internal.io.Io.RuneScanner;
typedef StringWriter = stdgo._internal.io.Io.StringWriter;
@:invalid typedef LimitedReader = Dynamic;
@:invalid typedef SectionReader = Dynamic;
@:invalid typedef OffsetWriter = Dynamic;
@:invalid typedef T_teeReader = Dynamic;
@:invalid typedef T_discard = Dynamic;
@:invalid typedef T_nopCloser = Dynamic;
@:invalid typedef T_nopCloserWriterTo = Dynamic;
@:invalid typedef T_eofReader = Dynamic;
@:invalid typedef T_multiReader = Dynamic;
@:invalid typedef T_multiWriter = Dynamic;
@:invalid typedef T_onceError = Dynamic;
@:invalid typedef T_pipe = Dynamic;
@:invalid typedef PipeReader = Dynamic;
@:invalid typedef PipeWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.io.Io.T__struct_0;
function writeString(_w:Writer, _s:stdgo.GoString):Void {}
function readAtLeast(_r:Reader, _buf:stdgo.Slice<stdgo.GoByte>, _min:stdgo.GoInt):Void {}
function readFull(_r:Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void {}
function copyN(_dst:Writer, _src:Reader, _n:stdgo.GoInt64):Void {}
function copy(_dst:Writer, _src:Reader):Void {}
function copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void {}
function _copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.GoByte>):Void {}
function limitReader(_r:Reader, _n:stdgo.GoInt64):Void {}
function newSectionReader(_r:ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):Void {}
function newOffsetWriter(_w:WriterAt, _off:stdgo.GoInt64):Void {}
function teeReader(_r:Reader, _w:Writer):Void {}
function nopCloser(_r:Reader):Void {}
function readAll(_r:Reader):Void {}
function multiReader(_readers:haxe.Rest<Reader>):Void {}
function multiWriter(_writers:haxe.Rest<Writer>):Void {}
function pipe():Void {}
@:invalid typedef LimitedReader_asInterface = Dynamic;
@:invalid typedef LimitedReader_static_extension = Dynamic;
@:invalid typedef SectionReader_asInterface = Dynamic;
@:invalid typedef SectionReader_static_extension = Dynamic;
@:invalid typedef OffsetWriter_asInterface = Dynamic;
@:invalid typedef OffsetWriter_static_extension = Dynamic;
@:invalid typedef T_teeReader_asInterface = Dynamic;
@:invalid typedef T_teeReader_static_extension = Dynamic;
@:invalid typedef T_discard_asInterface = Dynamic;
@:invalid typedef T_discard_static_extension = Dynamic;
@:invalid typedef T_nopCloser_asInterface = Dynamic;
@:invalid typedef T_nopCloser_static_extension = Dynamic;
@:invalid typedef T_nopCloserWriterTo_asInterface = Dynamic;
@:invalid typedef T_nopCloserWriterTo_static_extension = Dynamic;
@:invalid typedef T_eofReader_asInterface = Dynamic;
@:invalid typedef T_eofReader_static_extension = Dynamic;
@:invalid typedef T_multiReader_asInterface = Dynamic;
@:invalid typedef T_multiReader_static_extension = Dynamic;
@:invalid typedef T_multiWriter_asInterface = Dynamic;
@:invalid typedef T_multiWriter_static_extension = Dynamic;
@:invalid typedef T_onceError_asInterface = Dynamic;
@:invalid typedef T_onceError_static_extension = Dynamic;
@:invalid typedef T_pipe_asInterface = Dynamic;
@:invalid typedef T_pipe_static_extension = Dynamic;
@:invalid typedef PipeReader_asInterface = Dynamic;
@:invalid typedef PipeReader_static_extension = Dynamic;
@:invalid typedef PipeWriter_asInterface = Dynamic;
@:invalid typedef PipeWriter_static_extension = Dynamic;
