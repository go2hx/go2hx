package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class IndexFuncTest {
    public var _in : stdgo.GoString = "";
    public var _f : _internal.bytes_test.Bytes_test_T_predicate.T_predicate = ({} : _internal.bytes_test.Bytes_test_T_predicate.T_predicate);
    public var _first : stdgo.GoInt = 0;
    public var _last : stdgo.GoInt = 0;
    public function new(?_in:stdgo.GoString, ?_f:_internal.bytes_test.Bytes_test_T_predicate.T_predicate, ?_first:stdgo.GoInt, ?_last:stdgo.GoInt) {
        if (_in != null) this._in = _in;
        if (_f != null) this._f = _f;
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexFuncTest(_in, _f, _first, _last);
    }
}
