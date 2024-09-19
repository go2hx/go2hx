package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:structInit class TrimFuncTest {
    public var _f : _internal.bytes_test.Bytes_test_T_predicate.T_predicate = ({} : _internal.bytes_test.Bytes_test_T_predicate.T_predicate);
    public var _in : stdgo.GoString = "";
    public var _trimOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _leftOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rightOut : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_f:_internal.bytes_test.Bytes_test_T_predicate.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>) {
        if (_f != null) this._f = _f;
        if (_in != null) this._in = _in;
        if (_trimOut != null) this._trimOut = _trimOut;
        if (_leftOut != null) this._leftOut = _leftOut;
        if (_rightOut != null) this._rightOut = _rightOut;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TrimFuncTest(_f, _in, _trimOut, _leftOut, _rightOut);
    }
}
