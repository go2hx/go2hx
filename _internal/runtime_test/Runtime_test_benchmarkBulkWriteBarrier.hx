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
function benchmarkBulkWriteBarrier(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        if ((stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) < (2 : stdgo.GoInt) : Bool)) {
            _b.skip(stdgo.Go.toInterface(("need GOMAXPROCS >= 2" : stdgo.GoString)));
        };
        {};
        {};
        var _ptrs = (new stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123>>(((1048576 : stdgo.GoUIntptr) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123>>);
        for (_i => _ in _ptrs) {
            _ptrs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123(16, 16, ...[for (i in 0 ... 16) (null : stdgo.Pointer<stdgo.GoUInt8>)])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123>);
        };
        _internal.runtime_test.Runtime_test__writeBarrierBenchmark._writeBarrierBenchmark(_b, function():Void {
            {};
            var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i = (_i + ((1024 : stdgo.GoInt)) : stdgo.GoInt), {
                    var _block = (_ptrs.__slice__(_pos, (_pos + (1024 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123>>);
                    var _first = _block[(0 : stdgo.GoInt)];
                    stdgo.Go.copySlice(_block, (_block.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkBulkWriteBarrier___localname___obj_18123.T_benchmarkBulkWriteBarrier___localname___obj_18123>>));
                    _block[(1023 : stdgo.GoInt)] = _first;
                    _pos = (_pos + ((1024 : stdgo.GoInt)) : stdgo.GoInt);
                    if (((_pos + (1024 : stdgo.GoInt) : stdgo.GoInt) > (_ptrs.length) : Bool)) {
                        _pos = (0 : stdgo.GoInt);
                    };
                    stdgo._internal.runtime.Runtime_gosched.gosched();
                });
            };
        });
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_ptrs));
    }
