package stdgo._internal.strconv;
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L704"
        if (_bitSize == ((32 : stdgo.GoInt))) {
            var __tmp__ = stdgo._internal.strconv.Strconv__atof32._atof32(_s?.__copy__()), _f:stdgo.GoFloat32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L706"
            return { _0 : (_f : stdgo.GoFloat64), _1 : _n, _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atof.go#L708"
        return stdgo._internal.strconv.Strconv__atof64._atof64(_s?.__copy__());
    }
