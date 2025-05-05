package stdgo._internal.math.big;
@:keep @:allow(stdgo._internal.math.big.Big.RoundingMode_asInterface) class RoundingMode_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.math.big.Big_roundingmode.RoundingMode):stdgo.GoString {
        @:recv var _i:stdgo._internal.math.big.Big_roundingmode.RoundingMode = _i;
        //"file:///home/runner/.go/go1.21.3/src/math/big/roundingmode_string.go#L24"
        if ((_i >= ((6 : stdgo.GoInt) : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/roundingmode_string.go#L25"
            return ((("RoundingMode(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/roundingmode_string.go#L27"
        return (("ToNearestEvenToNearestAwayToZeroAwayFromZeroToNegativeInfToPositiveInf" : stdgo.GoString).__slice__(stdgo._internal.math.big.Big___roundingmode_index.__RoundingMode_index[(_i : stdgo.GoInt)], stdgo._internal.math.big.Big___roundingmode_index.__RoundingMode_index[((_i + (1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo._internal.math.big.Big_roundingmode.RoundingMode) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
