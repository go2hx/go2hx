package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_readlogger_static_extension.T_readLogger_static_extension) class T_readLogger {
    public var _prefix : stdgo.GoString = "";
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_prefix:stdgo.GoString, ?_r:stdgo._internal.io.Io_reader.Reader) {
        if (_prefix != null) this._prefix = _prefix;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readLogger(_prefix, _r);
    }
}
