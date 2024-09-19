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
function testGcRescan(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _head:stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcRescan___localname___Y_1726.T_testGcRescan___localname___Y_1726> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcRescan___localname___Y_1726.T_testGcRescan___localname___Y_1726>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _p = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_testGcRescan___localname___Y_1726.T_testGcRescan___localname___Y_1726() : _internal.runtime_test.Runtime_test_T_testGcRescan___localname___Y_1726.T_testGcRescan___localname___Y_1726)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcRescan___localname___Y_1726.T_testGcRescan___localname___Y_1726>);
                _p.x._c = (new stdgo.Chan<stdgo.Error>(0, () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                if (_head != null && ((_head : Dynamic).__nil__ == null || !(_head : Dynamic).__nil__)) {
                    _p.x._nextx = (stdgo.Go.setRef(_head.x) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcRescan___localname___X_1676.T_testGcRescan___localname___X_1676>);
                };
                _p._nexty = _head;
                _p._p = stdgo.Go.pointer((0 : stdgo.GoInt));
                _p._p.value = (42 : stdgo.GoInt);
                _head = _p;
                stdgo._internal.runtime.Runtime_gc.gc();
            });
        };
        {
            var _p = _head;
            stdgo.Go.cfor(_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__), _p = _p._nexty, {
                if (_p._p.value != ((42 : stdgo.GoInt))) {
                    _t.fatal(stdgo.Go.toInterface(("corrupted heap" : stdgo.GoString)));
                };
            });
        };
    }
