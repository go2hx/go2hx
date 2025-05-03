package stdgo._internal.internal.coverage.cmerge;
function saturatingAdd(_dst:stdgo.GoUInt32, _src:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        var __0 = (_dst : stdgo.GoUInt64), __1 = (_src : stdgo.GoUInt64);
var _s = __1, _d = __0;
        var _sum = (_d + _s : stdgo.GoUInt64);
        var _overflow = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cmerge/merge.go#L77"
        if (((_sum : stdgo.GoUInt32) : stdgo.GoUInt64) != (_sum)) {
            _overflow = true;
            _sum = (4294967295i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/cmerge/merge.go#L81"
        return { _0 : (_sum : stdgo.GoUInt32), _1 : _overflow };
    }
