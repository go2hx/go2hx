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
function testMapLargeKeyNoPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, 64), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _v:_internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503 = new _internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (64 : stdgo.GoInt) : Bool), _j++, {
                        _v[(_j : stdgo.GoInt)] = (_i + _j : stdgo.GoInt);
                    });
                };
                _m[_v] = _i;
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _v:_internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503 = new _internal.runtime_test.Runtime_test_T_testMapLargeKeyNoPointer___localname___T_13503.T_testMapLargeKeyNoPointer___localname___T_13503(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (64 : stdgo.GoInt) : Bool), _j++, {
                        _v[(_j : stdgo.GoInt)] = (_i + _j : stdgo.GoInt);
                    });
                };
                if ((_m[_v] ?? (0 : stdgo.GoInt)) != (_i)) {
                    _t.fatalf(("corrupted map: want %+v, got %+v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_m[_v] ?? (0 : stdgo.GoInt))));
                };
            });
        };
    }
