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
function benchmarkGoMapClear(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("Reflexive" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _size = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_size < (100000 : stdgo.GoInt) : Bool), _size = (_size * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                    _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_size)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                        var _m = ({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _m[(0 : stdgo.GoInt)] = _size;
                                for (_k => _ in _m) {
                                    if (_m != null) _m.remove(_k);
                                };
                            });
                        };
                    });
                });
            };
        });
        _b.run(("NonReflexive" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _size = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_size < (100000 : stdgo.GoInt) : Bool), _size = (_size * ((10 : stdgo.GoInt)) : stdgo.GoInt), {
                    _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_size)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                        var _m = ({
                            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoInt>);
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _m[(1 : stdgo.GoFloat64)] = _size;
                                for (_k => _ in _m) {
                                    if (_m != null) _m.remove(_k);
                                };
                            });
                        };
                    });
                });
            };
        });
    }
