package stdgo._internal.crypto.aes;
function testSboxes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                {
                    var _j = (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(stdgo._internal.crypto.aes.Aes__sbox1._sbox1[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_j != ((_i : stdgo.GoUInt8))) {
                        @:check2r _t.errorf(("sbox0[sbox1[%#x]] = %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                };
{
                    var _j = (stdgo._internal.crypto.aes.Aes__sbox1._sbox1[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_j != ((_i : stdgo.GoUInt8))) {
                        @:check2r _t.errorf(("sbox1[sbox0[%#x]] = %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                };
                _i++;
            };
        };
    }
