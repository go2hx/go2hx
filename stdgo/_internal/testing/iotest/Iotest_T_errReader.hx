package stdgo._internal.testing.iotest;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_T_errReader_static_extension.T_errReader_static_extension) class T_errReader {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errReader(_err);
    }
}