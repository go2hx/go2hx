package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_onebytereader_static_extension.T_oneByteReader_static_extension) class T_oneByteReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_oneByteReader(_r);
    }
}
