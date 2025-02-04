package stdgo._internal.strconv;
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString {
        if ((((true && ((0i64 : stdgo.GoInt64) <= _i : Bool) : Bool) && (_i < (100i64 : stdgo.GoInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return stdgo._internal.strconv.Strconv__small._small((_i : stdgo.GoInt))?.__copy__();
        };
        var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits((null : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64), _base, (_i < (0i64 : stdgo.GoInt64) : Bool), false), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _s:stdgo.GoString = __tmp__._1;
        return _s?.__copy__();
    }
