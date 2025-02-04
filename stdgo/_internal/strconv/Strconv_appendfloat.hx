package stdgo._internal.strconv;
function appendFloat(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.strconv.Strconv__genericftoa._genericFtoa(_dst, _f, _fmt, _prec, _bitSize);
    }
