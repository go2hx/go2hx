package stdgo._internal.math.big;
function _isNormalized(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        if ((_x._abs.length) == ((0 : stdgo.GoInt))) {
            return !_x._neg;
        };
        return _x._abs[((_x._abs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((0u32 : stdgo._internal.math.big.Big_Word.Word));
    }
