package stdgo._internal.strconv;
function appendUint(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        if (((true && (_i < (100i64 : stdgo.GoUInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            return (_dst.__append__(...(stdgo._internal.strconv.Strconv__small._small((_i : stdgo.GoInt)) : Array<stdgo.GoUInt8>)));
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits(_dst, _i, _base, false, true);
            _dst = @:tmpset0 __tmp__._0;
        };
        return _dst;
    }
