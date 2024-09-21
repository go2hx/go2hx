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
function testArrayHash(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f = (function():Void {
            {};
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_testArrayHash___localname___key_15266.T_testArrayHash___localname___key_15266, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_testArrayHash___localname___key_15266.T_testArrayHash___localname___key_15266", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, 8), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_testArrayHash___localname___key_15266.T_testArrayHash___localname___key_15266, Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    var _k:_internal.runtime_test.Runtime_test_T_testArrayHash___localname___key_15266.T_testArrayHash___localname___key_15266 = new _internal.runtime_test.Runtime_test_T_testArrayHash___localname___key_15266.T_testArrayHash___localname___key_15266(8, 8, ...[for (i in 0 ... 8) ("" : stdgo.GoString)]);
                    var _cnt = (0 : stdgo.GoInt);
                    {
                        var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                        stdgo.Go.cfor((_j < (8u32 : stdgo.GoUInt) : Bool), _j++, {
                            if (((_i >> _j : stdgo.GoInt) & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                                _k[(_j : stdgo.GoInt)] = ("foo" : stdgo.GoString);
                                _cnt++;
                            };
                        });
                    };
                    if (_cnt == ((4 : stdgo.GoInt))) {
                        _m[_k] = true;
                    };
                });
            };
            if ((_m.length) != ((70 : stdgo.GoInt))) {
                _t.errorf(("bad test: (8 choose 4) should be 70, not %d" : stdgo.GoString), stdgo.Go.toInterface((_m.length)));
            };
        } : () -> Void);
        {
            var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), _f) : stdgo.GoFloat64);
            if ((_n > (6 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("too many allocs %f - hash not balanced" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
