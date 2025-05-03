package stdgo._internal.time;
function _digitsLen(_std:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L481"
        return (((_std >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (4095 : stdgo.GoInt) : stdgo.GoInt);
    }
