package stdgo._internal.math.big;
function _makeFloat(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> {
        var __tmp__ = stdgo._internal.math.big.Big_parseFloat.parseFloat(_s?.__copy__(), (0 : stdgo.GoInt), (1000u32 : stdgo.GoUInt), (0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __14:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _x;
    }