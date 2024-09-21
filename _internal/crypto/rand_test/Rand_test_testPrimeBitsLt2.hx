package _internal.crypto.rand_test;
function testPrimeBitsLt2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(stdgo._internal.crypto.rand.Rand_reader.reader, (1 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_p != null) && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) || (_err == null) : Bool)) {
                _t.errorf(("Prime should return nil, error when called with bits < 2" : stdgo.GoString));
            };
        };
    }
