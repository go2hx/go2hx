package _internal.crypto.internal.bigmod;
function _minusInverseModW(_x:stdgo.GoUInt):stdgo.GoUInt {
        var _y = (_x : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _y = (_y * (((2u32 : stdgo.GoUInt) - (_x * _y : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt);
            });
        };
        return -_y;
    }