package stdgo._internal.math.big;
function _makeFloat(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> {
        var __tmp__ = stdgo._internal.math.big.Big_parsefloat.parseFloat(_s?.__copy__(), (0 : stdgo.GoInt), (1000u32 : stdgo.GoUInt), (0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)), _x:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _x;
    }
