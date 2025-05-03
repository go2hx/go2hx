package stdgo._internal.strconv;
function appendInt(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L41"
        if ((((true && ((0i64 : stdgo.GoInt64) <= _i : Bool) : Bool) && (_i < (100i64 : stdgo.GoInt64) : Bool) : Bool) && (_base == (10 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L42"
            return (_dst.__append__(...(stdgo._internal.strconv.Strconv__small._small((_i : stdgo.GoInt)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv__formatbits._formatBits(_dst, (_i : stdgo.GoUInt64), _base, (_i < (0i64 : stdgo.GoInt64) : Bool), true);
            _dst = @:tmpset0 __tmp__._0;
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/itoa.go#L45"
        return _dst;
    }
