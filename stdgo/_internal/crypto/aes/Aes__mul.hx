package stdgo._internal.crypto.aes;
function _mul(_b:stdgo.GoUInt32, _c:stdgo.GoUInt32):stdgo.GoUInt32 {
        var _i = (_b : stdgo.GoUInt32);
        var _j = (_c : stdgo.GoUInt32);
        var _s = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L33"
        {
            var _k = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while (((_k < (256u32 : stdgo.GoUInt32) : Bool) && (_j != (0u32 : stdgo.GoUInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L36"
                if ((_j & _k : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                    _s = (_s ^ (_i) : stdgo.GoUInt32);
                    _j = (_j ^ (_k) : stdgo.GoUInt32);
                };
_i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L44"
                if ((_i & (256u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                    _i = (_i ^ ((283u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                };
                _k = (_k << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/aes_test.go#L48"
        return _s;
    }
