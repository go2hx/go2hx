package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) abstract T_halfReader(stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader) from stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader to stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_halfReader.T_halfReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
