package stdgo._internal.crypto.aes;
function testSboxes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L76"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L77"
                {
                    var _j = (stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(stdgo._internal.crypto.aes.Aes__sbox1._sbox1[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_j != ((_i : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L78"
                        _t.errorf(("sbox0[sbox1[%#x]] = %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L80"
                {
                    var _j = (stdgo._internal.crypto.aes.Aes__sbox1._sbox1[(stdgo._internal.crypto.aes.Aes__sbox0._sbox0[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_j != ((_i : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L81"
                        _t.errorf(("sbox1[sbox0[%#x]] = %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j));
                    };
                };
                _i++;
            };
        };
    }
