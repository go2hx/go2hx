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
function testMapIterOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(3 : stdgo.GoInt), (7 : stdgo.GoInt), (9 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (false) {
            _t.fatalf(("This test becomes flaky if abi.MapBucketCountBits(=%d) is 5 or larger" : stdgo.GoString), stdgo.Go.toInterface((3 : stdgo.GoInt)));
        };
        for (__6 => _n in _sizes) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                    var _m = ({
                        final x = new stdgo.GoMap.GoIntMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, Bool>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _m[_i] = true;
                        });
                    };
                    var _ord = function():stdgo.Slice<stdgo.GoInt> {
                        var _s:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
                        for (_key => _ in _m) {
                            _s = (_s.__append__(_key));
                        };
                        return _s;
                    };
                    var _first = _ord();
                    var _ok = (false : Bool);
                    {
                        var _try = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_try < (100 : stdgo.GoInt) : Bool), _try++, {
                            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_ord()))) {
                                _ok = true;
                                break;
                            };
                        });
                    };
                    if (!_ok) {
                        _t.errorf(("Map with n=%d elements had consistent iteration order: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_first));
                        break;
                    };
                });
            };
        };
    }
