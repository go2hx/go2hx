package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.RoundingMode_asInterface) class RoundingMode_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.math.big.Big_RoundingMode.RoundingMode):stdgo.GoString {
        @:recv var _i:stdgo._internal.math.big.Big_RoundingMode.RoundingMode = _i;
        if ((_i >= ((6 : stdgo.GoInt) : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : Bool)) {
            return ((("RoundingMode(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("ToNearestEvenToNearestAwayToZeroAwayFromZeroToNegativeInfToPositiveInf" : stdgo.GoString).__slice__(stdgo._internal.math.big.Big___RoundingMode_index.__RoundingMode_index[(_i : stdgo.GoInt)], stdgo._internal.math.big.Big___RoundingMode_index.__RoundingMode_index[((_i + (1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : stdgo._internal.math.big.Big_RoundingMode.RoundingMode) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
