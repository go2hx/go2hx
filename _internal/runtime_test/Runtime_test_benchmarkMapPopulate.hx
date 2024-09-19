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
function benchmarkMapPopulate(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _size = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_size < (1000000 : stdgo.GoInt) : Bool), _size = (_size * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_size)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.reportAllocs();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var _m = ({
                                final x = new stdgo.GoMap.GoIntMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoInt, Bool>);
                            {
                                var _j = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < _size : Bool), _j++, {
                                    _m[_j] = true;
                                });
                            };
                        });
                    };
                });
            });
        };
    }
