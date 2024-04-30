package stdgo.testing.iotest;
/**
    Package iotest implements Readers and Writers useful mainly for testing.
**/
private var __go2hxdoc__package : Bool;
var errTimeout(get, set) : stdgo.Error;
function get_errTimeout():stdgo.Error return stdgo._internal.testing.iotest.Iotest.errTimeout;
function set_errTimeout(v:stdgo.Error):stdgo.Error return stdgo._internal.testing.iotest.Iotest.errTimeout = v;
@:invalid typedef T_writeLogger = Dynamic;
@:invalid typedef T_readLogger = Dynamic;
@:invalid typedef T_errWriter = Dynamic;
@:invalid typedef T_oneByteReader = Dynamic;
@:invalid typedef T_halfReader = Dynamic;
@:invalid typedef T_dataErrReader = Dynamic;
@:invalid typedef T_timeoutReader = Dynamic;
@:invalid typedef T_errReader = Dynamic;
@:invalid typedef T_smallByteReader = Dynamic;
@:invalid typedef T_truncateWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.testing.iotest.Iotest.T__struct_0;
/**
    NewWriteLogger returns a writer that behaves like w except
    that it logs (using log.Printf) each write to standard error,
    printing the prefix and the hexadecimal data written.
**/
inline function newWriteLogger(prefix:String, w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer throw "not implemented";
/**
    NewReadLogger returns a reader that behaves like r except
    that it logs (using log.Printf) each read to standard error,
    printing the prefix and the hexadecimal data read.
**/
inline function newReadLogger(prefix:String, r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
inline function testWriteLogger(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testWriteLogger_errorOnWrite(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadLogger(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadLogger_errorOnRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    OneByteReader returns a Reader that implements
    each non-empty Read by reading one byte from r.
**/
inline function oneByteReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    HalfReader returns a Reader that implements Read
    by reading half as many requested bytes from r.
**/
inline function halfReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    DataErrReader changes the way errors are handled by a Reader. Normally, a
    Reader returns an error (typically EOF) from the first Read call after the
    last piece of data is read. DataErrReader wraps a Reader and changes its
    behavior so the final error is returned along with the final data, instead
    of in the first call after the final data.
**/
inline function dataErrReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    TimeoutReader returns ErrTimeout on the second read
    with no data. Subsequent calls to read succeed.
**/
inline function timeoutReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    ErrReader returns an io.Reader that returns 0, err from all Read calls.
**/
inline function errReader(err:stdgo.Error):stdgo._internal.io.Io.Reader throw "not implemented";
/**
    TestReader tests that reading from r returns the expected file content.
    It does reads of different sizes, until EOF.
    If r implements io.ReaderAt or io.Seeker, TestReader also checks
    that those operations behave as they should.
    
    If TestReader finds any misbehaviors, it returns an error reporting them.
    The error text may span multiple lines.
**/
inline function testReader(r:stdgo._internal.io.Io.Reader, content:Array<Int>):stdgo.Error throw "not implemented";
inline function testOneByteReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testOneByteReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testHalfReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testHalfReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTimeOutReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTimeOutReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDataErrReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testDataErrReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testErrReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStringsReader(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    TruncateWriter returns a Writer that writes to w
    but stops silently after n bytes.
**/
inline function truncateWriter(w:stdgo._internal.io.Io.Writer, n:haxe.Int64):stdgo._internal.io.Io.Writer throw "not implemented";
inline function testTruncateWriter(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef T_writeLogger_asInterface = Dynamic;
@:invalid typedef T_writeLogger_static_extension = Dynamic;
@:invalid typedef T_readLogger_asInterface = Dynamic;
@:invalid typedef T_readLogger_static_extension = Dynamic;
@:invalid typedef T_errWriter_asInterface = Dynamic;
@:invalid typedef T_errWriter_static_extension = Dynamic;
@:invalid typedef T_oneByteReader_asInterface = Dynamic;
@:invalid typedef T_oneByteReader_static_extension = Dynamic;
@:invalid typedef T_halfReader_asInterface = Dynamic;
@:invalid typedef T_halfReader_static_extension = Dynamic;
@:invalid typedef T_dataErrReader_asInterface = Dynamic;
@:invalid typedef T_dataErrReader_static_extension = Dynamic;
@:invalid typedef T_timeoutReader_asInterface = Dynamic;
@:invalid typedef T_timeoutReader_static_extension = Dynamic;
@:invalid typedef T_errReader_asInterface = Dynamic;
@:invalid typedef T_errReader_static_extension = Dynamic;
@:invalid typedef T_smallByteReader_asInterface = Dynamic;
@:invalid typedef T_smallByteReader_static_extension = Dynamic;
@:invalid typedef T_truncateWriter_asInterface = Dynamic;
@:invalid typedef T_truncateWriter_static_extension = Dynamic;
