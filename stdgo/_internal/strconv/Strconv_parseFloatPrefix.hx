package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        return stdgo._internal.strconv.Strconv__parseFloatPrefix._parseFloatPrefix(_s?.__copy__(), _bitSize);
    }
