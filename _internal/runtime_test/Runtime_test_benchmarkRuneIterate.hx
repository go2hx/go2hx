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
function benchmarkRuneIterate(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("range" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__14 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            for (_ => _ in _sd._data) {};
                        });
                    };
                });
            };
        });
        _b.run(("range1" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__22 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            for (_ => _ in _sd._data) {};
                        });
                    };
                });
            };
        });
        _b.run(("range2" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__30 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            for (_ => _ in _sd._data) {};
                        });
                    };
                });
            };
        });
    }
