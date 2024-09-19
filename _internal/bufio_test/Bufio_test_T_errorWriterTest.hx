package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:structInit @:using(_internal.bufio_test.Bufio_test_T_errorWriterTest_static_extension.T_errorWriterTest_static_extension) class T_errorWriterTest {
    public var _n : stdgo.GoInt = 0;
    public var _m : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _expect : stdgo.Error = (null : stdgo.Error);
    public function new(?_n:stdgo.GoInt, ?_m:stdgo.GoInt, ?_err:stdgo.Error, ?_expect:stdgo.Error) {
        if (_n != null) this._n = _n;
        if (_m != null) this._m = _m;
        if (_err != null) this._err = _err;
        if (_expect != null) this._expect = _expect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriterTest(_n, _m, _err, _expect);
    }
}
