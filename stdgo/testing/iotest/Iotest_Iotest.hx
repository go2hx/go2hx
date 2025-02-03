package stdgo.testing.iotest;
/**
    Package iotest implements Readers and Writers useful mainly for testing.
**/
class Iotest {
    /**
        NewWriteLogger returns a writer that behaves like w except
        that it logs (using log.Printf) each write to standard error,
        printing the prefix and the hexadecimal data written.
    **/
    static public inline function newWriteLogger(_prefix:String, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.testing.iotest.Iotest_newWriteLogger.newWriteLogger(_prefix, _w);
    }
    /**
        NewReadLogger returns a reader that behaves like r except
        that it logs (using log.Printf) each read to standard error,
        printing the prefix and the hexadecimal data read.
    **/
    static public inline function newReadLogger(_prefix:String, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.testing.iotest.Iotest_newReadLogger.newReadLogger(_prefix, _r);
    }
    static public inline function testWriteLogger(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testWriteLogger.testWriteLogger(_t);
    }
    static public inline function testWriteLogger_errorOnWrite(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testWriteLogger_errorOnWrite.testWriteLogger_errorOnWrite(_t);
    }
    static public inline function testReadLogger(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testReadLogger.testReadLogger(_t);
    }
    static public inline function testReadLogger_errorOnRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testReadLogger_errorOnRead.testReadLogger_errorOnRead(_t);
    }
    /**
        OneByteReader returns a Reader that implements
        each non-empty Read by reading one byte from r.
    **/
    static public inline function oneByteReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_oneByteReader.oneByteReader(_r);
    }
    /**
        HalfReader returns a Reader that implements Read
        by reading half as many requested bytes from r.
    **/
    static public inline function halfReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_halfReader.halfReader(_r);
    }
    /**
        DataErrReader changes the way errors are handled by a Reader. Normally, a
        Reader returns an error (typically EOF) from the first Read call after the
        last piece of data is read. DataErrReader wraps a Reader and changes its
        behavior so the final error is returned along with the final data, instead
        of in the first call after the final data.
    **/
    static public inline function dataErrReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_dataErrReader.dataErrReader(_r);
    }
    /**
        TimeoutReader returns ErrTimeout on the second read
        with no data. Subsequent calls to read succeed.
    **/
    static public inline function timeoutReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_timeoutReader.timeoutReader(_r);
    }
    /**
        ErrReader returns an io.Reader that returns 0, err from all Read calls.
    **/
    static public inline function errReader(_err:stdgo.Error):stdgo._internal.io.Io_Reader.Reader {
        final _err = (_err : stdgo.Error);
        return stdgo._internal.testing.iotest.Iotest_errReader.errReader(_err);
    }
    /**
        TestReader tests that reading from r returns the expected file content.
        It does reads of different sizes, until EOF.
        If r implements io.ReaderAt or io.Seeker, TestReader also checks
        that those operations behave as they should.
        
        If TestReader finds any misbehaviors, it returns an error reporting them.
        The error text may span multiple lines.
    **/
    static public inline function testReader(_r:stdgo._internal.io.Io_Reader.Reader, _content:Array<std.UInt>):stdgo.Error {
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.testing.iotest.Iotest_testReader.testReader(_r, _content);
    }
    static public inline function testOneByteReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testOneByteReader_nonEmptyReader.testOneByteReader_nonEmptyReader(_t);
    }
    static public inline function testOneByteReader_emptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testOneByteReader_emptyReader.testOneByteReader_emptyReader(_t);
    }
    static public inline function testHalfReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testHalfReader_nonEmptyReader.testHalfReader_nonEmptyReader(_t);
    }
    static public inline function testHalfReader_emptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testHalfReader_emptyReader.testHalfReader_emptyReader(_t);
    }
    static public inline function testTimeOutReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTimeOutReader_nonEmptyReader.testTimeOutReader_nonEmptyReader(_t);
    }
    static public inline function testTimeOutReader_emptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTimeOutReader_emptyReader.testTimeOutReader_emptyReader(_t);
    }
    static public inline function testDataErrReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testDataErrReader_nonEmptyReader.testDataErrReader_nonEmptyReader(_t);
    }
    static public inline function testDataErrReader_emptyReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testDataErrReader_emptyReader.testDataErrReader_emptyReader(_t);
    }
    static public inline function testErrReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testErrReader.testErrReader(_t);
    }
    static public inline function testStringsReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testStringsReader.testStringsReader(_t);
    }
    /**
        TruncateWriter returns a Writer that writes to w
        but stops silently after n bytes.
    **/
    static public inline function truncateWriter(_w:stdgo._internal.io.Io_Writer.Writer, _n:haxe.Int64):stdgo._internal.io.Io_Writer.Writer {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.testing.iotest.Iotest_truncateWriter.truncateWriter(_w, _n);
    }
    static public inline function testTruncateWriter(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTruncateWriter.testTruncateWriter(_t);
    }
}
