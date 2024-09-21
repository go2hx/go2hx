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
function benchmarkMakeChan(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Chan<stdgo.GoUInt8> = (null : stdgo.Chan<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Chan<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoUInt8)) : stdgo.Chan<stdgo.GoUInt8>);
                });
            };
            if (_x != null) _x.__close__();
        });
        _b.run(("Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Chan<stdgo.GoInt>((8 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                });
            };
            if (_x != null) _x.__close__();
        });
        _b.run(("Ptr" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _x:stdgo.Chan<stdgo.Pointer<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Pointer<stdgo.GoUInt8>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _x = (new stdgo.Chan<stdgo.Pointer<stdgo.GoUInt8>>((8 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Pointer<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Pointer<stdgo.GoUInt8>>);
                });
            };
            if (_x != null) _x.__close__();
        });
        _b.run(("Struct" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.run(("0" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0> = (null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>((8 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                    });
                };
                if (_x != null) _x.__close__();
            });
            _b.run(("32" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct32.T_struct32> = (null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>((8 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct32.T_struct32)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct32.T_struct32>);
                    });
                };
                if (_x != null) _x.__close__();
            });
            _b.run(("40" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _x:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct40.T_struct40> = (null : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _x = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>((8 : stdgo.GoInt).toBasic(), () -> ({} : _internal.runtime_test.Runtime_test_T_struct40.T_struct40)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct40.T_struct40>);
                    });
                };
                if (_x != null) _x.__close__();
            });
        });
    }
