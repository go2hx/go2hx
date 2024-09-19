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
function benchmarkGrowSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var __blank__ = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_x : Array<stdgo.GoUInt8>)));
                });
            };
        });
        _b.run(("Int16" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x = (new stdgo.Slice<stdgo.GoInt16>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt16>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var __blank__ = ((null : stdgo.Slice<stdgo.GoInt16>).__append__(...(_x : Array<stdgo.GoInt16>)));
                });
            };
        });
        _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x = (new stdgo.Slice<stdgo.GoInt>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var __blank__ = ((null : stdgo.Slice<stdgo.GoInt>).__append__(...(_x : Array<stdgo.GoInt>)));
                });
            };
        });
        _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((9 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var __blank__ = ((null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>).__append__(...(_x : Array<stdgo.Pointer<stdgo.GoUInt8>>)));
                });
            };
        });
        _b.run(("Struct" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("24" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>((9 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((9 : stdgo.GoInt).toBasic() > 0 ? (9 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct24.T_struct24)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __blank__ = ((null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>).__append__(...(_x : Array<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>)));
                    });
                };
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>((9 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((9 : stdgo.GoInt).toBasic() > 0 ? (9 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct32.T_struct32)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __blank__ = ((null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>).__append__(...(_x : Array<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>)));
                    });
                };
            });
            _b.run(("40" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>((9 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((9 : stdgo.GoInt).toBasic() > 0 ? (9 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct40.T_struct40)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var __blank__ = ((null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>).__append__(...(_x : Array<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>)));
                    });
                };
            });
        });
    }
