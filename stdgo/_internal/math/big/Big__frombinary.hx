package stdgo._internal.math.big;
function _fromBinary(_s:stdgo.GoString):stdgo.GoInt64 {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (2 : stdgo.GoInt), (64 : stdgo.GoInt)), _x:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        return _x;
    }
