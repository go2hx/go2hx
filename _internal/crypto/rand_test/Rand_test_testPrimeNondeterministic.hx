package _internal.crypto.rand_test;
function testPrimeNondeterministic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((42i64 : stdgo.GoInt64)));
        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(stdgo.Go.asInterface(_r), (32 : stdgo.GoInt)), _p0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                _r.seed((42i64 : stdgo.GoInt64));
                var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(stdgo.Go.asInterface(_r), (32 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (_p.cmp(_p0) != ((0 : stdgo.GoInt))) {
                    return;
                };
            });
        };
        _t.error(stdgo.Go.toInterface(("Prime always generated the same prime given the same input" : stdgo.GoString)));
    }
