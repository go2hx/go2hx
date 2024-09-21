package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_errorThenGoodReader_static_extension.T_errorThenGoodReader_static_extension) class T_errorThenGoodReader {
    public var _didErr : Bool = false;
    public var _nread : stdgo.GoInt = 0;
    public function new(?_didErr:Bool, ?_nread:stdgo.GoInt) {
        if (_didErr != null) this._didErr = _didErr;
        if (_nread != null) this._nread = _nread;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorThenGoodReader(_didErr, _nread);
    }
}
