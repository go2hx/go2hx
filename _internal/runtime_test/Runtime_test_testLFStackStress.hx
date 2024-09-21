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
function testLFStackStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var p = ((4 : stdgo.GoInt) * stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoInt);
        var n = (100000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (n / ((10 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _stacks = (new stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>>(2, 2, ...[stdgo.Go.pointer((0 : stdgo.GoUInt64)), stdgo.Go.pointer((0 : stdgo.GoUInt64))]) : stdgo.GoArray<stdgo.Pointer<stdgo.GoUInt64>>);
        var _sum = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _sum = (_sum + (_i) : stdgo.GoInt);
                var _node = _internal.runtime_test.Runtime_test__allocMyNode._allocMyNode(_i);
                stdgo._internal.runtime.Runtime_lfstackPush.lfstackPush(_stacks[(_i % (2 : stdgo.GoInt) : stdgo.GoInt)], _internal.runtime_test.Runtime_test__fromMyNode._fromMyNode(_node));
            });
        };
        var _c = (new stdgo.Chan<Bool>((p : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < p : Bool), _p++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.math.rand.Rand_int63.int63()));
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < n : Bool), _i++, {
                                var _node = _internal.runtime_test.Runtime_test__toMyNode._toMyNode(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stacks[(_r.intn((2 : stdgo.GoInt)) : stdgo.GoInt)]));
                                if (_node != null && ((_node : Dynamic).__nil__ == null || !(_node : Dynamic).__nil__)) {
                                    stdgo._internal.runtime.Runtime_lfstackPush.lfstackPush(_stacks[(_r.intn((2 : stdgo.GoInt)) : stdgo.GoInt)], _internal.runtime_test.Runtime_test__fromMyNode._fromMyNode(_node));
                                };
                            });
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < p : Bool), _i++, {
                _c.__get__();
            });
        };
        var _sum2 = (0 : stdgo.GoInt);
        var _cnt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                while (true) {
                    var _node = _internal.runtime_test.Runtime_test__toMyNode._toMyNode(stdgo._internal.runtime.Runtime_lfstackPop.lfstackPop(_stacks[(_i : stdgo.GoInt)]));
                    if (_node == null || (_node : Dynamic).__nil__) {
                        break;
                    };
                    _cnt++;
                    _sum2 = (_sum2 + (_node._data) : stdgo.GoInt);
                    _node.lfnode.next = (0i64 : stdgo.GoUInt64);
                };
            });
        };
        if (_cnt != ((100 : stdgo.GoInt))) {
            _t.fatalf(("Wrong number of nodes %d/%d" : stdgo.GoString), stdgo.Go.toInterface(_cnt), stdgo.Go.toInterface((100 : stdgo.GoInt)));
        };
        if (_sum2 != (_sum)) {
            _t.fatalf(("Wrong sum %d/%d" : stdgo.GoString), stdgo.Go.toInterface(_sum2), stdgo.Go.toInterface(_sum));
        };
    }
