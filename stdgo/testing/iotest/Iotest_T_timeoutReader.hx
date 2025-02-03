package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) abstract T_timeoutReader(stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader) from stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader to stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_count:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader(_r, (_count : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
