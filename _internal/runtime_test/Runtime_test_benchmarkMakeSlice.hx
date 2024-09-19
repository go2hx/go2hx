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
function benchmarkMakeSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = _x;
                });
            };
        });
        _b.run(("Int16" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Slice<stdgo.GoInt16> = (null : stdgo.Slice<stdgo.GoInt16>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Slice<stdgo.GoInt16>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt16>);
                    var __blank__ = _x;
                });
            };
        });
        _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    var __blank__ = _x;
                });
            };
        });
        _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
                    var __blank__ = _x;
                });
            };
        });
        _b.run(("Struct" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("24" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt), ...[for (i in 0 ... ((2 : stdgo.GoInt).toBasic() > (4 : stdgo.GoInt) ? (2 : stdgo.GoInt).toBasic() : (4 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct24.T_struct24)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct24.T_struct24>);
                        var __blank__ = _x;
                    });
                };
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt), ...[for (i in 0 ... ((2 : stdgo.GoInt).toBasic() > (4 : stdgo.GoInt) ? (2 : stdgo.GoInt).toBasic() : (4 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct32.T_struct32)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>);
                        var __blank__ = _x;
                    });
                };
            });
            _b.run(("40" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40> = (null : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>((2 : stdgo.GoInt).toBasic(), (4 : stdgo.GoInt), ...[for (i in 0 ... ((2 : stdgo.GoInt).toBasic() > (4 : stdgo.GoInt) ? (2 : stdgo.GoInt).toBasic() : (4 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_struct40.T_struct40)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>);
                        var __blank__ = _x;
                    });
                };
            });
        });
    }
