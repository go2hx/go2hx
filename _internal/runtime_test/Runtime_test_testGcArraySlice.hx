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
function testGcArraySlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _head:stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _p = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311() : _internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcArraySlice___localname___X_1311.T_testGcArraySlice___localname___X_1311>);
                _p._buf[(0 : stdgo.GoInt)] = (42 : stdgo.GoUInt8);
                _p._next = _head;
                if (_head != null && ((_head : Dynamic).__nil__ == null || !(_head : Dynamic).__nil__)) {
                    _p._nextbuf = (_head._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _head = _p;
                stdgo._internal.runtime.Runtime_gc.gc();
            });
        };
        {
            var _p = _head;
            stdgo.Go.cfor(_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__), _p = _p._next, {
                if (_p._buf[(0 : stdgo.GoInt)] != ((42 : stdgo.GoUInt8))) {
                    _t.fatal(stdgo.Go.toInterface(("corrupted heap" : stdgo.GoString)));
                };
            });
        };
    }
