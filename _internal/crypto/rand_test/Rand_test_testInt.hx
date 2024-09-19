package _internal.crypto.rand_test;
function testInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _n = (128 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (140 : stdgo.GoInt) : Bool), _n++, {
                var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((_n : stdgo.GoInt64));
                {
                    var __tmp__ = stdgo._internal.crypto.rand.Rand_int_.int_(stdgo._internal.crypto.rand.Rand_reader.reader, _b), _i:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %v, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
