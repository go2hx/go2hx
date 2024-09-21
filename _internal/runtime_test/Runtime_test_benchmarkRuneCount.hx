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
function benchmarkRuneCount(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("lenruneslice" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__14 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.runtime_test.Runtime_test__sinkInt._sinkInt = (_internal.runtime_test.Runtime_test__sinkInt._sinkInt + (((_sd._data : stdgo.Slice<stdgo.GoInt32>).length)) : stdgo.GoInt);
                        });
                    };
                });
            };
        });
        _b.run(("rangeloop" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__22 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var _n = (0 : stdgo.GoInt);
                            for (_ => _ in _sd._data) {
                                _n++;
                            };
                            _internal.runtime_test.Runtime_test__sinkInt._sinkInt = (_internal.runtime_test.Runtime_test__sinkInt._sinkInt + (_n) : stdgo.GoInt);
                        });
                    };
                });
            };
        });
        _b.run(("utf8.RuneCountInString" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__30 => _sd in _internal.runtime_test.Runtime_test__stringdata._stringdata) {
                _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            _internal.runtime_test.Runtime_test__sinkInt._sinkInt = (_internal.runtime_test.Runtime_test__sinkInt._sinkInt + (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_sd._data?.__copy__())) : stdgo.GoInt);
                        });
                    };
                });
            };
        });
    }
