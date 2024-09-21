package _internal.crypto.rand_test;
function benchmarkPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.crypto.rand.Rand_prime.prime(stdgo.Go.asInterface(_r), (1024 : stdgo.GoInt));
            });
        };
    }
