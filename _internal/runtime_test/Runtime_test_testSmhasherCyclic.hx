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
function testSmhasherCyclic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("Skipping in short mode" : stdgo.GoString)));
        };
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Too long for race mode" : stdgo.GoString)));
        };
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1234i64 : stdgo.GoInt64)));
        {};
        {};
        {
            var _n = (4 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (12 : stdgo.GoInt) : Bool), _n++, {
                var _h = _internal.runtime_test.Runtime_test__newHashSet._newHashSet();
                var _b = (new stdgo.Slice<stdgo.GoUInt8>(((8 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000000 : stdgo.GoInt) : Bool), _i++, {
                        _b[(0 : stdgo.GoInt)] = (((_i * (79 : stdgo.GoInt) : stdgo.GoInt) % (97 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _b[(1 : stdgo.GoInt)] = (((_i * (43 : stdgo.GoInt) : stdgo.GoInt) % (137 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _b[(2 : stdgo.GoInt)] = (((_i * (151 : stdgo.GoInt) : stdgo.GoInt) % (197 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _b[(3 : stdgo.GoInt)] = (((_i * (199 : stdgo.GoInt) : stdgo.GoInt) % (251 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                        _internal.runtime_test.Runtime_test__randBytes._randBytes(_r, (_b.__slice__((4 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
                        {
                            var _j = (_n : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (_n * (8 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                                _b[(_j : stdgo.GoInt)] = _b[(_j - _n : stdgo.GoInt)];
                            });
                        };
                        _h._addB(_b);
                    });
                };
                _h._check(_t);
            });
        };
    }
