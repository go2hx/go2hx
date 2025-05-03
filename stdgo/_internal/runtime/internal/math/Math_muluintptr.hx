package stdgo._internal.runtime.internal.math;
function mulUintptr(_a:stdgo.GoUIntptr, _b:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/runtime/internal/math/math.go#L14"
        if ((((_a | _b : stdgo.GoUIntptr) < (new stdgo.GoUIntptr(65536) : stdgo.GoUIntptr) : Bool) || (_a == (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/internal/math/math.go#L15"
            return { _0 : (_a * _b : stdgo.GoUIntptr), _1 : false };
        };
        var _overflow = (_b > ((new stdgo.GoUIntptr(4294967295) : stdgo.GoUIntptr) / _a : stdgo.GoUIntptr) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/runtime/internal/math/math.go#L18"
        return { _0 : (_a * _b : stdgo.GoUIntptr), _1 : _overflow };
    }
