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
function testMapLargeValNoPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<_internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896>();
            x.__defaultValue__ = () -> new _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _v:_internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896 = new _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (64 : stdgo.GoInt) : Bool), _j++, {
                        _v[(_j : stdgo.GoInt)] = (_i + _j : stdgo.GoInt);
                    });
                };
                _m[_i] = _v?.__copy__();
            });
        };
        stdgo._internal.runtime.Runtime_gc.gc();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _v:_internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896 = new _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (64 : stdgo.GoInt) : Bool), _j++, {
                        _v[(_j : stdgo.GoInt)] = (_i + _j : stdgo.GoInt);
                    });
                };
                var _v1 = ((_m[_i] ?? new _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt)]))?.__copy__() : _internal.runtime_test.Runtime_test_T_testMapLargeValNoPointer___localname___T_13896.T_testMapLargeValNoPointer___localname___T_13896);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (64 : stdgo.GoInt) : Bool), _j++, {
                        if (_v1[(_j : stdgo.GoInt)] != (_v[(_j : stdgo.GoInt)])) {
                            _t.fatalf(("corrupted map: want %+v, got %+v" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v1));
                        };
                    });
                };
            });
        };
    }
