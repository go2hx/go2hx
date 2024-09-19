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
function benchmarkMakeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("[Byte]Byte" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _m:stdgo.GoMap<stdgo.GoUInt8, stdgo.GoUInt8> = (null : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _m = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoUInt8>();
                        x.__defaultValue__ = () -> (0 : stdgo.GoUInt8);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUInt8, stdgo.GoUInt8>);
                });
            };
            _internal.runtime_test.Runtime_test__hugeSink._hugeSink = stdgo.Go.toInterface(_m);
        });
        _b.run(("[Int]Int" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            var _m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _m = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                });
            };
            _internal.runtime_test.Runtime_test__hugeSink._hugeSink = stdgo.Go.toInterface(_m);
        });
    }
