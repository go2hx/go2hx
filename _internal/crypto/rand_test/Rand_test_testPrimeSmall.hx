package _internal.crypto.rand_test;
function testPrimeSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _n = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (10 : stdgo.GoInt) : Bool), _n++, {
                var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(stdgo._internal.crypto.rand.Rand_reader.reader, _n), _p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Can\'t generate %d-bit prime: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                if (_p.bitLen() != (_n)) {
                    _t.fatalf(("%v is not %d-bit" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(_n));
                };
                if (!_p.probablyPrime((32 : stdgo.GoInt))) {
                    _t.fatalf(("%v is not prime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                };
            });
        };
    }
