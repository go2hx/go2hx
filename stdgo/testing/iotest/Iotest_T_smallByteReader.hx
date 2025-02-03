package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) abstract T_smallByteReader(stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader) from stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader to stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
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
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_off:StdTypes.Int, ?_n:StdTypes.Int) this = new stdgo._internal.testing.iotest.Iotest_T_smallByteReader.T_smallByteReader(_r, (_off : stdgo.GoInt), (_n : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
