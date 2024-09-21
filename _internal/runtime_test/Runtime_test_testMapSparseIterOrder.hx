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
function testMapSparseIterOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:label("NextRound") {
                var _round = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_round < (10 : stdgo.GoInt) : Bool), _round++, {
                    var _m = ({
                        final x = new stdgo.GoMap.GoIntMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, Bool>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                            _m[_i] = true;
                        });
                    };
                    {
                        var _i = (20 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                            if (_m != null) _m.remove(_i);
                        });
                    };
                    var _first:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                    for (_i => _ in _m) {
                        _first = (_first.__append__(_i));
                    };
                    {
                        var _n = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_n < (800 : stdgo.GoInt) : Bool), _n++, {
                            var _idx = (0 : stdgo.GoInt);
                            for (_i => _ in _m) {
                                if (_i != (_first[(_idx : stdgo.GoInt)])) {
                                    @:jump("NextRound") continue;
                                };
                                _idx++;
                            };
                        });
                    };
                    _t.fatalf(("constant iteration order on round %d: %v" : stdgo.GoString), stdgo.Go.toInterface(_round), stdgo.Go.toInterface(_first));
                });
            };
        });
    }
