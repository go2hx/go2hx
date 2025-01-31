package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString {
        if (((true && (_i < (100i64 : stdgo.GoUInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.strconv.Strconv__small._small((_i : stdgo.GoInt))?.__copy__();
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__formatBits._formatBits((null : stdgo.Slice<stdgo.GoUInt8>), _i, _base, false, false), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s:stdgo.GoString = __tmp__._1;
        return _s?.__copy__();
    }
