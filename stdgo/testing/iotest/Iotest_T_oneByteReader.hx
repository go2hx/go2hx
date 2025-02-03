package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) abstract T_oneByteReader(stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader) from stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader to stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader(_r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
