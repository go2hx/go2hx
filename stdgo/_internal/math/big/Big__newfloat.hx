package stdgo._internal.math.big;
function _newFloat(_prec2:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        (@:checkr _z ?? throw "null pointer dereference")._mant = (@:checkr _z ?? throw "null pointer dereference")._mant._make((((_prec2 / (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt));
        return _z;
    }
