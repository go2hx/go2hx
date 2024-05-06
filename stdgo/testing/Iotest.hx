package stdgo.testing;
/**
    Package iotest implements Readers and Writers useful mainly for testing.
**/
private var __go2hxdoc__package : Bool;
var errTimeout(get, set) : stdgo.Error;
private function get_errTimeout():stdgo.Error return stdgo._internal.testing.iotest.Iotest.errTimeout;
private function set_errTimeout(v:stdgo.Error):stdgo.Error return stdgo._internal.testing.iotest.Iotest.errTimeout = v;
@:forward @:forward.new abstract T_writeLogger(stdgo._internal.testing.iotest.Iotest.T_writeLogger) from stdgo._internal.testing.iotest.Iotest.T_writeLogger to stdgo._internal.testing.iotest.Iotest.T_writeLogger {

}
@:forward @:forward.new abstract T_readLogger(stdgo._internal.testing.iotest.Iotest.T_readLogger) from stdgo._internal.testing.iotest.Iotest.T_readLogger to stdgo._internal.testing.iotest.Iotest.T_readLogger {

}
@:forward @:forward.new abstract T_errWriter(stdgo._internal.testing.iotest.Iotest.T_errWriter) from stdgo._internal.testing.iotest.Iotest.T_errWriter to stdgo._internal.testing.iotest.Iotest.T_errWriter {

}
@:forward @:forward.new abstract T_oneByteReader(stdgo._internal.testing.iotest.Iotest.T_oneByteReader) from stdgo._internal.testing.iotest.Iotest.T_oneByteReader to stdgo._internal.testing.iotest.Iotest.T_oneByteReader {

}
@:forward @:forward.new abstract T_halfReader(stdgo._internal.testing.iotest.Iotest.T_halfReader) from stdgo._internal.testing.iotest.Iotest.T_halfReader to stdgo._internal.testing.iotest.Iotest.T_halfReader {

}
@:forward @:forward.new abstract T_dataErrReader(stdgo._internal.testing.iotest.Iotest.T_dataErrReader) from stdgo._internal.testing.iotest.Iotest.T_dataErrReader to stdgo._internal.testing.iotest.Iotest.T_dataErrReader {

}
@:forward @:forward.new abstract T_timeoutReader(stdgo._internal.testing.iotest.Iotest.T_timeoutReader) from stdgo._internal.testing.iotest.Iotest.T_timeoutReader to stdgo._internal.testing.iotest.Iotest.T_timeoutReader {

}
@:forward @:forward.new abstract T_errReader(stdgo._internal.testing.iotest.Iotest.T_errReader) from stdgo._internal.testing.iotest.Iotest.T_errReader to stdgo._internal.testing.iotest.Iotest.T_errReader {

}
@:forward @:forward.new abstract T_smallByteReader(stdgo._internal.testing.iotest.Iotest.T_smallByteReader) from stdgo._internal.testing.iotest.Iotest.T_smallByteReader to stdgo._internal.testing.iotest.Iotest.T_smallByteReader {

}
@:forward @:forward.new abstract T_truncateWriter(stdgo._internal.testing.iotest.Iotest.T_truncateWriter) from stdgo._internal.testing.iotest.Iotest.T_truncateWriter to stdgo._internal.testing.iotest.Iotest.T_truncateWriter {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.testing.iotest.Iotest.T__struct_0_asInterface) from stdgo._internal.testing.iotest.Iotest.T__struct_0_asInterface to stdgo._internal.testing.iotest.Iotest.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.testing.iotest.Iotest.T__struct_0_static_extension) from stdgo._internal.testing.iotest.Iotest.T__struct_0_static_extension to stdgo._internal.testing.iotest.Iotest.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.testing.iotest.Iotest.T__struct_0;
/**
    NewWriteLogger returns a writer that behaves like w except
    that it logs (using log.Printf) each write to standard error,
    printing the prefix and the hexadecimal data written.
**/
function newWriteLogger(prefix:String, w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo._internal.testing.iotest.Iotest.newWriteLogger(prefix, w);
    }
/**
    NewReadLogger returns a reader that behaves like r except
    that it logs (using log.Printf) each read to standard error,
    printing the prefix and the hexadecimal data read.
**/
function newReadLogger(prefix:String, r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.newReadLogger(prefix, r);
    }
function testWriteLogger(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testWriteLogger(t);
    }
function testWriteLogger_errorOnWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testWriteLogger_errorOnWrite(t);
    }
function testReadLogger(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testReadLogger(t);
    }
function testReadLogger_errorOnRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testReadLogger_errorOnRead(t);
    }
/**
    OneByteReader returns a Reader that implements
    each non-empty Read by reading one byte from r.
**/
function oneByteReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.oneByteReader(r);
    }
/**
    HalfReader returns a Reader that implements Read
    by reading half as many requested bytes from r.
**/
function halfReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.halfReader(r);
    }
/**
    DataErrReader changes the way errors are handled by a Reader. Normally, a
    Reader returns an error (typically EOF) from the first Read call after the
    last piece of data is read. DataErrReader wraps a Reader and changes its
    behavior so the final error is returned along with the final data, instead
    of in the first call after the final data.
**/
function dataErrReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.dataErrReader(r);
    }
/**
    TimeoutReader returns ErrTimeout on the second read
    with no data. Subsequent calls to read succeed.
**/
function timeoutReader(r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.timeoutReader(r);
    }
/**
    ErrReader returns an io.Reader that returns 0, err from all Read calls.
**/
function errReader(err:stdgo.Error):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.errReader(err);
    }
/**
    TestReader tests that reading from r returns the expected file content.
    It does reads of different sizes, until EOF.
    If r implements io.ReaderAt or io.Seeker, TestReader also checks
    that those operations behave as they should.
    
    If TestReader finds any misbehaviors, it returns an error reporting them.
    The error text may span multiple lines.
**/
function testReader(r:stdgo._internal.io.Io.Reader, content:Array<StdTypes.Int>):stdgo.Error {
        final content = ([for (i in content) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.testing.iotest.Iotest.testReader(r, content);
    }
function testOneByteReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testOneByteReader_nonEmptyReader(t);
    }
function testOneByteReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testOneByteReader_emptyReader(t);
    }
function testHalfReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testHalfReader_nonEmptyReader(t);
    }
function testHalfReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testHalfReader_emptyReader(t);
    }
function testTimeOutReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTimeOutReader_nonEmptyReader(t);
    }
function testTimeOutReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTimeOutReader_emptyReader(t);
    }
function testDataErrReader_nonEmptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testDataErrReader_nonEmptyReader(t);
    }
function testDataErrReader_emptyReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testDataErrReader_emptyReader(t);
    }
function testErrReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testErrReader(t);
    }
function testStringsReader(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testStringsReader(t);
    }
/**
    TruncateWriter returns a Writer that writes to w
    but stops silently after n bytes.
**/
function truncateWriter(w:stdgo._internal.io.Io.Writer, n:haxe.Int64):stdgo._internal.io.Io.Writer {
        return stdgo._internal.testing.iotest.Iotest.truncateWriter(w, n);
    }
function testTruncateWriter(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTruncateWriter(t);
    }
@:forward @:forward.new abstract T_writeLogger_asInterface(stdgo._internal.testing.iotest.Iotest.T_writeLogger_asInterface) from stdgo._internal.testing.iotest.Iotest.T_writeLogger_asInterface to stdgo._internal.testing.iotest.Iotest.T_writeLogger_asInterface {

}
@:forward @:forward.new abstract T_writeLogger_static_extension(stdgo._internal.testing.iotest.Iotest.T_writeLogger_static_extension) from stdgo._internal.testing.iotest.Iotest.T_writeLogger_static_extension to stdgo._internal.testing.iotest.Iotest.T_writeLogger_static_extension {

}
@:forward @:forward.new abstract T_readLogger_asInterface(stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface) from stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface to stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface {

}
@:forward @:forward.new abstract T_readLogger_static_extension(stdgo._internal.testing.iotest.Iotest.T_readLogger_static_extension) from stdgo._internal.testing.iotest.Iotest.T_readLogger_static_extension to stdgo._internal.testing.iotest.Iotest.T_readLogger_static_extension {

}
@:forward @:forward.new abstract T_errWriter_asInterface(stdgo._internal.testing.iotest.Iotest.T_errWriter_asInterface) from stdgo._internal.testing.iotest.Iotest.T_errWriter_asInterface to stdgo._internal.testing.iotest.Iotest.T_errWriter_asInterface {

}
@:forward @:forward.new abstract T_errWriter_static_extension(stdgo._internal.testing.iotest.Iotest.T_errWriter_static_extension) from stdgo._internal.testing.iotest.Iotest.T_errWriter_static_extension to stdgo._internal.testing.iotest.Iotest.T_errWriter_static_extension {

}
@:forward @:forward.new abstract T_oneByteReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface {

}
@:forward @:forward.new abstract T_oneByteReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_oneByteReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_oneByteReader_static_extension {

}
@:forward @:forward.new abstract T_halfReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_halfReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_halfReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_halfReader_asInterface {

}
@:forward @:forward.new abstract T_halfReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_halfReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_halfReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_halfReader_static_extension {

}
@:forward @:forward.new abstract T_dataErrReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface {

}
@:forward @:forward.new abstract T_dataErrReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_dataErrReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_dataErrReader_static_extension {

}
@:forward @:forward.new abstract T_timeoutReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface {

}
@:forward @:forward.new abstract T_timeoutReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_timeoutReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_timeoutReader_static_extension {

}
@:forward @:forward.new abstract T_errReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface {

}
@:forward @:forward.new abstract T_errReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_errReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_errReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_errReader_static_extension {

}
@:forward @:forward.new abstract T_smallByteReader_asInterface(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface) from stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface to stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface {

}
@:forward @:forward.new abstract T_smallByteReader_static_extension(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_static_extension) from stdgo._internal.testing.iotest.Iotest.T_smallByteReader_static_extension to stdgo._internal.testing.iotest.Iotest.T_smallByteReader_static_extension {

}
@:forward @:forward.new abstract T_truncateWriter_asInterface(stdgo._internal.testing.iotest.Iotest.T_truncateWriter_asInterface) from stdgo._internal.testing.iotest.Iotest.T_truncateWriter_asInterface to stdgo._internal.testing.iotest.Iotest.T_truncateWriter_asInterface {

}
@:forward @:forward.new abstract T_truncateWriter_static_extension(stdgo._internal.testing.iotest.Iotest.T_truncateWriter_static_extension) from stdgo._internal.testing.iotest.Iotest.T_truncateWriter_static_extension to stdgo._internal.testing.iotest.Iotest.T_truncateWriter_static_extension {

}
