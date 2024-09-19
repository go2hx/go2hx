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
function benchmarkExtendSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _length:stdgo.GoInt = (4 : stdgo.GoInt);
        _b.run(("IntSlice" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _s = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), _length).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = ((_s.__slice__(0, (0 : stdgo.GoInt), (_length / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>).__append__(...((new stdgo.Slice<stdgo.GoInt>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                });
            };
            _internal.runtime_test.Runtime_test_sinkIntSlice.sinkIntSlice = _s;
        });
        _b.run(("PointerSlice" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _s = (new stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>((0 : stdgo.GoInt).toBasic(), _length) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = ((_s.__slice__(0, (0 : stdgo.GoInt), (_length / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>).__append__(...((new stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>((_length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoInt>>) : Array<stdgo.Pointer<stdgo.GoInt>>)));
                });
            };
            _internal.runtime_test.Runtime_test_sinkIntPointerSlice.sinkIntPointerSlice = _s;
        });
        _b.run(("NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _s = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), _length).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = ((_s.__slice__(0, (0 : stdgo.GoInt), _length) : stdgo.Slice<stdgo.GoInt>).__append__(...((new stdgo.Slice<stdgo.GoInt>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                });
            };
            _internal.runtime_test.Runtime_test_sinkIntSlice.sinkIntSlice = _s;
        });
    }
