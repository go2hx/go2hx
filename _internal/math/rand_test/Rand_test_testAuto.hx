package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testAuto(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _out:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _out = (_out.__append__(stdgo._internal.math.rand.Rand_int63.int63()));
            });
        };
        stdgo._internal.math.rand.Rand_seed.seed((1i64 : stdgo.GoInt64));
        var _found = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _x = (stdgo._internal.math.rand.Rand_int63.int63() : stdgo.GoInt64);
                if (_x == (_out[(_found : stdgo.GoInt)])) {
                    _found++;
                    if (_found == ((_out.length))) {
                        _t.fatalf(("found unseeded output in Seed(1) output" : stdgo.GoString));
                    };
                };
            });
        };
    }
