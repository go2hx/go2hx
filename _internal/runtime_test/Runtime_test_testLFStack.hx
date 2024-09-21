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
function testLFStack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _stack = stdgo.Go.pointer((0 : stdgo.GoUInt64));
        _internal.runtime_test.Runtime_test__global._global = stdgo.Go.toInterface(_stack);
        if (stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) != null && ((stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) : Dynamic).__nil__ == null || !(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) : Dynamic).__nil__)) {
            _t.fatalf(("stack is not empty" : stdgo.GoString));
        };
        var _node = _internal.runtime_test.Runtime_test__allocMyNode._allocMyNode((42 : stdgo.GoInt));
        stdgo._internal.runtime.Runtime_lfstackPush.lfstackPush(_stack, _internal.runtime_test.Runtime_test__fromMyNode._fromMyNode(_node));
        _node = _internal.runtime_test.Runtime_test__allocMyNode._allocMyNode((43 : stdgo.GoInt));
        stdgo._internal.runtime.Runtime_lfstackPush.lfstackPush(_stack, _internal.runtime_test.Runtime_test__fromMyNode._fromMyNode(_node));
        _node = _internal.runtime_test.Runtime_test__toMyNode._toMyNode(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack));
        if (_node == null || (_node : Dynamic).__nil__) {
            _t.fatalf(("stack is empty" : stdgo.GoString));
        };
        if (_node._data != ((43 : stdgo.GoInt))) {
            _t.fatalf(("no lifo" : stdgo.GoString));
        };
        _node = _internal.runtime_test.Runtime_test__toMyNode._toMyNode(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack));
        if (_node == null || (_node : Dynamic).__nil__) {
            _t.fatalf(("stack is empty" : stdgo.GoString));
        };
        if (_node._data != ((42 : stdgo.GoInt))) {
            _t.fatalf(("no lifo" : stdgo.GoString));
        };
        if (stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) != null && ((stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) : Dynamic).__nil__ == null || !(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stack) : Dynamic).__nil__)) {
            _t.fatalf(("stack is not empty" : stdgo.GoString));
        };
        if (_stack.value != ((0i64 : stdgo.GoUInt64))) {
            _t.fatalf(("stack is not empty" : stdgo.GoString));
        };
    }
