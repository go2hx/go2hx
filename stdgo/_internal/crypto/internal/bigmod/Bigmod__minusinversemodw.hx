package stdgo._internal.crypto.internal.bigmod;
function _minusInverseModW(_x:stdgo.GoUInt):stdgo.GoUInt {
        var _y = (_x : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L344"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                _y = (_y * (((2u32 : stdgo.GoUInt) - (_x * _y : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L347"
        return -_y;
    }
