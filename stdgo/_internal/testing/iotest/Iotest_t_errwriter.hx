package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_errwriter_static_extension.T_errWriter_static_extension) class T_errWriter {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
    }
}
