package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_T_halfReader_static_extension.T_halfReader_static_extension) class T_halfReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_halfReader(_r);
    }
}