package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_errorReaderFromTest_static_extension.T_errorReaderFromTest_static_extension) class T_errorReaderFromTest {
    public var _rn : stdgo.GoInt = 0;
    public var _wn : stdgo.GoInt = 0;
    public var _rerr : stdgo.Error = (null : stdgo.Error);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _expected : stdgo.Error = (null : stdgo.Error);
    public function new(?_rn:stdgo.GoInt, ?_wn:stdgo.GoInt, ?_rerr:stdgo.Error, ?_werr:stdgo.Error, ?_expected:stdgo.Error) {
        if (_rn != null) this._rn = _rn;
        if (_wn != null) this._wn = _wn;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorReaderFromTest(_rn, _wn, _rerr, _werr, _expected);
    }
}
