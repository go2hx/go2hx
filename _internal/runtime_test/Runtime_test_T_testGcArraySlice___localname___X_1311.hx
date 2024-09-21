package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_testGcArraySlice___localname___X_1311 {
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
    public var _nextbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _next : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311>);
    public function new(?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nextbuf:stdgo.Slice<stdgo.GoUInt8>, ?_next:stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311>) {
        if (_buf != null) this._buf = _buf;
        if (_nextbuf != null) this._nextbuf = _nextbuf;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGcArraySlice___localname___X_1311(_buf, _nextbuf, _next);
    }
}
