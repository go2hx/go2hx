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
function benchmarkWriteBarrier(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) < (2 : stdgo.GoInt) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("need GOMAXPROCS >= 2" : stdgo.GoString)));
        };
        {};
        var _wbRoots:stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>> = (null : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>>);
        var _mkTree:stdgo.GoInt -> stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867> = null;
        _mkTree = function(_level:stdgo.GoInt):stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867> {
            if (_level == ((0 : stdgo.GoInt))) {
                return null;
            };
            var _n = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867(_mkTree((_level - (1 : stdgo.GoInt) : stdgo.GoInt)), _mkTree((_level - (1 : stdgo.GoInt) : stdgo.GoInt))) : _internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>);
            if (_level == ((10 : stdgo.GoInt))) {
                _wbRoots = (_wbRoots.__append__(_n));
            };
            return _n;
        };
        {};
        var _root = _mkTree((22 : stdgo.GoInt));
        _internal.runtime_test.Runtime_test__writeBarrierBenchmark._writeBarrierBenchmark(_b, function():Void {
            var _stack:stdgo.GoArray<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>> = new stdgo.GoArray<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>>(22, 22, ...[for (i in 0 ... 22) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkWriteBarrier___localname___node_16867.T_benchmarkWriteBarrier___localname___node_16867>)]);
            var _tos = (-1 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    if (_tos == ((-1 : stdgo.GoInt))) {
                        _stack[(0 : stdgo.GoInt)] = _root;
                        _tos = (0 : stdgo.GoInt);
                    };
                    var _n = _stack[(_tos : stdgo.GoInt)];
                    if (_n._l == null || (_n._l : Dynamic).__nil__) {
                        _tos--;
                    } else {
                        {
                            final __tmp__0 = _n._r;
                            final __tmp__1 = _n._l;
                            _n._l = __tmp__0;
                            _n._r = __tmp__1;
                        };
                        _stack[(_tos : stdgo.GoInt)] = _n._l;
                        _stack[(_tos + (1 : stdgo.GoInt) : stdgo.GoInt)] = _n._r;
                        _tos++;
                    };
                    if ((_i % (4096 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        stdgo._internal.runtime.Runtime_gosched.gosched();
                    };
                });
            };
        });
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_wbRoots));
    }
