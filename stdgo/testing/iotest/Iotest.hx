package stdgo.testing.iotest;
var errTimeout(get, set) : stdgo.Error;
private function get_errTimeout():stdgo.Error return stdgo._internal.testing.iotest.Iotest.errTimeout;
private function set_errTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.testing.iotest.Iotest.errTimeout = v;
        return v;
    }
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) abstract T_writeLogger(stdgo._internal.testing.iotest.Iotest.T_writeLogger) from stdgo._internal.testing.iotest.Iotest.T_writeLogger to stdgo._internal.testing.iotest.Iotest.T_writeLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public function new(?_prefix:String, ?_w:stdgo._internal.io.Io.Writer) this = new stdgo._internal.testing.iotest.Iotest.T_writeLogger(_prefix, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) abstract T_readLogger(stdgo._internal.testing.iotest.Iotest.T_readLogger) from stdgo._internal.testing.iotest.Iotest.T_readLogger to stdgo._internal.testing.iotest.Iotest.T_readLogger {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public function new(?_prefix:String, ?_r:stdgo._internal.io.Io.Reader) this = new stdgo._internal.testing.iotest.Iotest.T_readLogger(_prefix, _r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) abstract T_errWriter(stdgo._internal.testing.iotest.Iotest.T_errWriter) from stdgo._internal.testing.iotest.Iotest.T_errWriter to stdgo._internal.testing.iotest.Iotest.T_errWriter {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.testing.iotest.Iotest.T_errWriter(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) abstract T_oneByteReader(stdgo._internal.testing.iotest.Iotest.T_oneByteReader) from stdgo._internal.testing.iotest.Iotest.T_oneByteReader to stdgo._internal.testing.iotest.Iotest.T_oneByteReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader) this = new stdgo._internal.testing.iotest.Iotest.T_oneByteReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) abstract T_halfReader(stdgo._internal.testing.iotest.Iotest.T_halfReader) from stdgo._internal.testing.iotest.Iotest.T_halfReader to stdgo._internal.testing.iotest.Iotest.T_halfReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader) this = new stdgo._internal.testing.iotest.Iotest.T_halfReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) abstract T_dataErrReader(stdgo._internal.testing.iotest.Iotest.T_dataErrReader) from stdgo._internal.testing.iotest.Iotest.T_dataErrReader to stdgo._internal.testing.iotest.Iotest.T_dataErrReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _unread(get, set) : Array<std.UInt>;
    function get__unread():Array<std.UInt> return [for (i in this._unread) i];
    function set__unread(v:Array<std.UInt>):Array<std.UInt> {
        this._unread = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_unread:Array<std.UInt>, ?_data:Array<std.UInt>) this = new stdgo._internal.testing.iotest.Iotest.T_dataErrReader(_r, ([for (i in _unread) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) abstract T_timeoutReader(stdgo._internal.testing.iotest.Iotest.T_timeoutReader) from stdgo._internal.testing.iotest.Iotest.T_timeoutReader to stdgo._internal.testing.iotest.Iotest.T_timeoutReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_count:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest.T_timeoutReader(_r, _count);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_errReader_static_extension) abstract T_errReader(stdgo._internal.testing.iotest.Iotest.T_errReader) from stdgo._internal.testing.iotest.Iotest.T_errReader to stdgo._internal.testing.iotest.Iotest.T_errReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.testing.iotest.Iotest.T_errReader(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) abstract T_smallByteReader(stdgo._internal.testing.iotest.Iotest.T_smallByteReader) from stdgo._internal.testing.iotest.Iotest.T_smallByteReader to stdgo._internal.testing.iotest.Iotest.T_smallByteReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_off:StdTypes.Int, ?_n:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest.T_smallByteReader(_r, _off, _n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) abstract T_truncateWriter(stdgo._internal.testing.iotest.Iotest.T_truncateWriter) from stdgo._internal.testing.iotest.Iotest.T_truncateWriter to stdgo._internal.testing.iotest.Iotest.T_truncateWriter {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _n(get, set) : haxe.Int64;
    function get__n():haxe.Int64 return this._n;
    function set__n(v:haxe.Int64):haxe.Int64 {
        this._n = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_n:haxe.Int64) this = new stdgo._internal.testing.iotest.Iotest.T_truncateWriter(_w, _n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.testing.iotest.Iotest.T__struct_0;
class T_writeLogger_static_extension {
    static public function write(_l:T_writeLogger, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_writeLogger_static_extension.write(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_readLogger_static_extension {
    static public function read(_l:T_readLogger, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_readLogger_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_errWriter_static_extension {
    static public function write(_w:T_errWriter, _0:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_errWriter_static_extension.write(_w, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_oneByteReader_static_extension {
    static public function read(_r:T_oneByteReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_oneByteReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_halfReader_static_extension {
    static public function read(_r:T_halfReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_halfReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_dataErrReader_static_extension {
    static public function read(_r:T_dataErrReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_dataErrReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_timeoutReader_static_extension {
    static public function read(_r:T_timeoutReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_timeoutReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_errReader_static_extension {
    static public function read(_r:T_errReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_errReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_smallByteReader_static_extension {
    static public function read(_r:T_smallByteReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_smallByteReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_truncateWriter_static_extension {
    static public function write(_t:T_truncateWriter, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.testing.iotest.Iotest.T_truncateWriter_static_extension.write(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
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
    static public function newWriteLogger(_prefix:String, _w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo._internal.testing.iotest.Iotest.newWriteLogger(_prefix, _w);
    }
    /**
        NewReadLogger returns a reader that behaves like r except
        that it logs (using log.Printf) each read to standard error,
        printing the prefix and the hexadecimal data read.
    **/
    static public function newReadLogger(_prefix:String, _r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.newReadLogger(_prefix, _r);
    }
    static public function testWriteLogger(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testWriteLogger(_t);
    }
    static public function testWriteLogger_errorOnWrite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testWriteLogger_errorOnWrite(_t);
    }
    static public function testReadLogger(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testReadLogger(_t);
    }
    static public function testReadLogger_errorOnRead(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testReadLogger_errorOnRead(_t);
    }
    /**
        OneByteReader returns a Reader that implements
        each non-empty Read by reading one byte from r.
    **/
    static public function oneByteReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.oneByteReader(_r);
    }
    /**
        HalfReader returns a Reader that implements Read
        by reading half as many requested bytes from r.
    **/
    static public function halfReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.halfReader(_r);
    }
    /**
        DataErrReader changes the way errors are handled by a Reader. Normally, a
        Reader returns an error (typically EOF) from the first Read call after the
        last piece of data is read. DataErrReader wraps a Reader and changes its
        behavior so the final error is returned along with the final data, instead
        of in the first call after the final data.
    **/
    static public function dataErrReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.dataErrReader(_r);
    }
    /**
        TimeoutReader returns ErrTimeout on the second read
        with no data. Subsequent calls to read succeed.
    **/
    static public function timeoutReader(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.timeoutReader(_r);
    }
    /**
        ErrReader returns an io.Reader that returns 0, err from all Read calls.
    **/
    static public function errReader(_err:stdgo.Error):stdgo._internal.io.Io.Reader {
        return stdgo._internal.testing.iotest.Iotest.errReader(_err);
    }
    /**
        TestReader tests that reading from r returns the expected file content.
        It does reads of different sizes, until EOF.
        If r implements io.ReaderAt or io.Seeker, TestReader also checks
        that those operations behave as they should.
        
        If TestReader finds any misbehaviors, it returns an error reporting them.
        The error text may span multiple lines.
    **/
    static public function testReader(_r:stdgo._internal.io.Io.Reader, _content:Array<StdTypes.Int>):stdgo.Error {
        final _content = ([for (i in _content) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.testing.iotest.Iotest.testReader(_r, _content);
    }
    static public function testOneByteReader_nonEmptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testOneByteReader_nonEmptyReader(_t);
    }
    static public function testOneByteReader_emptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testOneByteReader_emptyReader(_t);
    }
    static public function testHalfReader_nonEmptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testHalfReader_nonEmptyReader(_t);
    }
    static public function testHalfReader_emptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testHalfReader_emptyReader(_t);
    }
    static public function testTimeOutReader_nonEmptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTimeOutReader_nonEmptyReader(_t);
    }
    static public function testTimeOutReader_emptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTimeOutReader_emptyReader(_t);
    }
    static public function testDataErrReader_nonEmptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testDataErrReader_nonEmptyReader(_t);
    }
    static public function testDataErrReader_emptyReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testDataErrReader_emptyReader(_t);
    }
    static public function testErrReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testErrReader(_t);
    }
    static public function testStringsReader(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testStringsReader(_t);
    }
    /**
        TruncateWriter returns a Writer that writes to w
        but stops silently after n bytes.
    **/
    static public function truncateWriter(_w:stdgo._internal.io.Io.Writer, _n:haxe.Int64):stdgo._internal.io.Io.Writer {
        return stdgo._internal.testing.iotest.Iotest.truncateWriter(_w, _n);
    }
    static public function testTruncateWriter(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.testing.iotest.Iotest.testTruncateWriter(_t);
    }
}
