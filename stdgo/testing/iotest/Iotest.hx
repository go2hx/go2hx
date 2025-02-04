package stdgo.testing.iotest;
var errTimeout(get, set) : stdgo.Error;
private function get_errTimeout():stdgo.Error return stdgo._internal.testing.iotest.Iotest_errTimeout.errTimeout;
private function set_errTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.testing.iotest.Iotest_errTimeout.errTimeout = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) abstract T_writeLogger(stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger) from stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger to stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_prefix:String, ?_w:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger((_prefix : stdgo.GoString), _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) abstract T_readLogger(stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger) from stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger to stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_prefix:String, ?_r:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger((_prefix : stdgo.GoString), _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) abstract T_errWriter(stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter) from stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter to stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.testing.iotest.Iotest_T_errWriter.T_errWriter((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) abstract T_oneByteReader(stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader) from stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader to stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) abstract T_halfReader(stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader) from stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader to stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) abstract T_dataErrReader(stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader) from stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader to stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _unread(get, set) : Array<std.UInt>;
    function get__unread():Array<std.UInt> return [for (i in this._unread) i];
    function set__unread(v:Array<std.UInt>):Array<std.UInt> {
        this._unread = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_unread:Array<std.UInt>, ?_data:Array<std.UInt>) this = new stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader(_r, ([for (i in _unread) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) abstract T_timeoutReader(stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader) from stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader to stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_count:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader(_r, (_count : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_errReader_static_extension) abstract T_errReader(stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader) from stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader to stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) abstract T_smallByteReader(stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader) from stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader to stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_off:StdTypes.Int, ?_n:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader(_r, (_off : stdgo.GoInt), (_n : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) abstract T_truncateWriter(stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter) from stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter to stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _n(get, set) : haxe.Int64;
    function get__n():haxe.Int64 return this._n;
    function set__n(v:haxe.Int64):haxe.Int64 {
        this._n = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_n:haxe.Int64) this = new stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter(_w, (_n : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.testing.iotest.Iotest_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.testing.iotest.Iotest_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.testing.iotest.Iotest_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.testing.iotest.Iotest_T__struct_1.T__struct_1;
typedef T_writeLoggerPointer = stdgo._internal.testing.iotest.Iotest_T_writeLoggerPointer.T_writeLoggerPointer;
class T_writeLogger_static_extension {
    static public function write(_l:T_writeLogger, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_writeLogger_static_extension.T_writeLogger_static_extension.write(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_readLoggerPointer = stdgo._internal.testing.iotest.Iotest_T_readLoggerPointer.T_readLoggerPointer;
class T_readLogger_static_extension {
    static public function read(_l:T_readLogger, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_readLogger_static_extension.T_readLogger_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_errWriterPointer = stdgo._internal.testing.iotest.Iotest_T_errWriterPointer.T_errWriterPointer;
class T_errWriter_static_extension {
    static public function write(_w:T_errWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_errWriter_static_extension.T_errWriter_static_extension.write(_w, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_oneByteReaderPointer = stdgo._internal.testing.iotest.Iotest_T_oneByteReaderPointer.T_oneByteReaderPointer;
class T_oneByteReader_static_extension {
    static public function read(_r:T_oneByteReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_oneByteReader_static_extension.T_oneByteReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_halfReaderPointer = stdgo._internal.testing.iotest.Iotest_T_halfReaderPointer.T_halfReaderPointer;
class T_halfReader_static_extension {
    static public function read(_r:T_halfReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_halfReader_static_extension.T_halfReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_dataErrReaderPointer = stdgo._internal.testing.iotest.Iotest_T_dataErrReaderPointer.T_dataErrReaderPointer;
class T_dataErrReader_static_extension {
    static public function read(_r:T_dataErrReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_dataErrReader_static_extension.T_dataErrReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_timeoutReaderPointer = stdgo._internal.testing.iotest.Iotest_T_timeoutReaderPointer.T_timeoutReaderPointer;
class T_timeoutReader_static_extension {
    static public function read(_r:T_timeoutReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_timeoutReader_static_extension.T_timeoutReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_errReaderPointer = stdgo._internal.testing.iotest.Iotest_T_errReaderPointer.T_errReaderPointer;
class T_errReader_static_extension {
    static public function read(_r:T_errReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_errreader.T_errReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_errReader_static_extension.T_errReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_smallByteReaderPointer = stdgo._internal.testing.iotest.Iotest_T_smallByteReaderPointer.T_smallByteReaderPointer;
class T_smallByteReader_static_extension {
    static public function read(_r:T_smallByteReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_smallByteReader_static_extension.T_smallByteReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_truncateWriterPointer = stdgo._internal.testing.iotest.Iotest_T_truncateWriterPointer.T_truncateWriterPointer;
class T_truncateWriter_static_extension {
    static public function write(_t:T_truncateWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest_T_truncateWriter_static_extension.T_truncateWriter_static_extension.write(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T__struct_0PointerPointer = stdgo._internal.testing.iotest.Iotest_T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
typedef T__struct_1PointerPointer = stdgo._internal.testing.iotest.Iotest_T__struct_1PointerPointer.T__struct_1PointerPointer;
class T__struct_1Pointer_static_extension {

}
/**
    Package iotest implements Readers and Writers useful mainly for testing.
**/
class Iotest {
    /**
        NewWriteLogger returns a writer that behaves like w except
        that it logs (using log.Printf) each write to standard error,
        printing the prefix and the hexadecimal data written.
    **/
    static public inline function newWriteLogger(_prefix:String, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.testing.iotest.Iotest_newWriteLogger.newWriteLogger(_prefix, _w);
    }
    /**
        NewReadLogger returns a reader that behaves like r except
        that it logs (using log.Printf) each read to standard error,
        printing the prefix and the hexadecimal data read.
    **/
    static public inline function newReadLogger(_prefix:String, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.testing.iotest.Iotest_newReadLogger.newReadLogger(_prefix, _r);
    }
    static public inline function testWriteLogger(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testWriteLogger.testWriteLogger(_t);
    }
    static public inline function testWriteLogger_errorOnWrite(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testWriteLogger_errorOnWrite.testWriteLogger_errorOnWrite(_t);
    }
    static public inline function testReadLogger(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testReadLogger.testReadLogger(_t);
    }
    static public inline function testReadLogger_errorOnRead(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testReadLogger_errorOnRead.testReadLogger_errorOnRead(_t);
    }
    /**
        OneByteReader returns a Reader that implements
        each non-empty Read by reading one byte from r.
    **/
    static public inline function oneByteReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_oneByteReader.oneByteReader(_r);
    }
    /**
        HalfReader returns a Reader that implements Read
        by reading half as many requested bytes from r.
    **/
    static public inline function halfReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_halfReader.halfReader(_r);
    }
    /**
        DataErrReader changes the way errors are handled by a Reader. Normally, a
        Reader returns an error (typically EOF) from the first Read call after the
        last piece of data is read. DataErrReader wraps a Reader and changes its
        behavior so the final error is returned along with the final data, instead
        of in the first call after the final data.
    **/
    static public inline function dataErrReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_dataErrReader.dataErrReader(_r);
    }
    /**
        TimeoutReader returns ErrTimeout on the second read
        with no data. Subsequent calls to read succeed.
    **/
    static public inline function timeoutReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo._internal.testing.iotest.Iotest_timeoutReader.timeoutReader(_r);
    }
    /**
        ErrReader returns an io.Reader that returns 0, err from all Read calls.
    **/
    static public inline function errReader(_err:stdgo.Error):stdgo._internal.io.Io_reader.Reader {
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
    static public inline function testReader(_r:stdgo._internal.io.Io_reader.Reader, _content:Array<std.UInt>):stdgo.Error {
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.testing.iotest.Iotest_testReader.testReader(_r, _content);
    }
    static public inline function testOneByteReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testOneByteReader_nonEmptyReader.testOneByteReader_nonEmptyReader(_t);
    }
    static public inline function testOneByteReader_emptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testOneByteReader_emptyReader.testOneByteReader_emptyReader(_t);
    }
    static public inline function testHalfReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testHalfReader_nonEmptyReader.testHalfReader_nonEmptyReader(_t);
    }
    static public inline function testHalfReader_emptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testHalfReader_emptyReader.testHalfReader_emptyReader(_t);
    }
    static public inline function testTimeOutReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTimeOutReader_nonEmptyReader.testTimeOutReader_nonEmptyReader(_t);
    }
    static public inline function testTimeOutReader_emptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTimeOutReader_emptyReader.testTimeOutReader_emptyReader(_t);
    }
    static public inline function testDataErrReader_nonEmptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testDataErrReader_nonEmptyReader.testDataErrReader_nonEmptyReader(_t);
    }
    static public inline function testDataErrReader_emptyReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testDataErrReader_emptyReader.testDataErrReader_emptyReader(_t);
    }
    static public inline function testErrReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testErrReader.testErrReader(_t);
    }
    static public inline function testStringsReader(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testStringsReader.testStringsReader(_t);
    }
    /**
        TruncateWriter returns a Writer that writes to w
        but stops silently after n bytes.
    **/
    static public inline function truncateWriter(_w:stdgo._internal.io.Io_writer.Writer, _n:haxe.Int64):stdgo._internal.io.Io_writer.Writer {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.testing.iotest.Iotest_truncateWriter.truncateWriter(_w, _n);
    }
    static public inline function testTruncateWriter(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.testing.iotest.Iotest_testTruncateWriter.testTruncateWriter(_t);
    }
}
