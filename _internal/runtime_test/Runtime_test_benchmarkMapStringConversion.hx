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
function benchmarkMapStringConversion(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _length in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_length)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b.run(("simple" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    var _m = ({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
                    _m[(_bytes : stdgo.GoString)] = (0 : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __blank__ = (_m[(_bytes : stdgo.GoString)] ?? (0 : stdgo.GoInt));
                        });
                    };
                });
                _b.run(("struct" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    {};
                    var _m = ({
                        final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483, stdgo.GoInt>();
                        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                        {};
                        cast x;
                    } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483, stdgo.GoInt>);
                    _m[(new _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483((_bytes : stdgo.GoString)?.__copy__()) : _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483)] = (0 : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __blank__ = (_m[(new _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483((_bytes : stdgo.GoString)?.__copy__()) : _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringstruct_9483.T_benchmarkMapStringConversion___localname___stringstruct_9483)] ?? (0 : stdgo.GoInt));
                        });
                    };
                });
                _b.run(("array" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    {};
                    var _m = ({
                        final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringarray_9742.T_benchmarkMapStringConversion___localname___stringarray_9742, stdgo.GoInt>();
                        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringarray_9742.T_benchmarkMapStringConversion___localname___stringarray_9742", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, 1), false, { get : () -> null }));
                        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                        {};
                        cast x;
                    } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringarray_9742.T_benchmarkMapStringConversion___localname___stringarray_9742, stdgo.GoInt>);
                    _m[(new stdgo.GoArray<stdgo.GoString>(1, 1, ...[(_bytes : stdgo.GoString)?.__copy__()]).__setString__() : _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringarray_9742.T_benchmarkMapStringConversion___localname___stringarray_9742)] = (0 : stdgo.GoInt);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var __blank__ = (_m[(new stdgo.GoArray<stdgo.GoString>(1, 1, ...[(_bytes : stdgo.GoString)?.__copy__()]).__setString__() : _internal.runtime_test.Runtime_test_T_benchmarkMapStringConversion___localname___stringarray_9742.T_benchmarkMapStringConversion___localname___stringarray_9742)] ?? (0 : stdgo.GoInt));
                        });
                    };
                });
            });
        };
    }
