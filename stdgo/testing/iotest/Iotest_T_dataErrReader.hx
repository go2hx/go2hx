package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) abstract T_dataErrReader(stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader) from stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader to stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
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
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_unread:Array<std.UInt>, ?_data:Array<std.UInt>) this = new stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader(_r, ([for (i in _unread) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
