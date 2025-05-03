package stdgo._internal.runtime.pprof;
function _scaleHeapSample(_count:stdgo.GoInt64, _size:stdgo.GoInt64, _rate:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L79"
        if (((_count == (0i64 : stdgo.GoInt64)) || (_size == (0i64 : stdgo.GoInt64)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L80"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (0i64 : stdgo.GoInt64) };
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L83"
        if ((_rate <= (1i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L86"
            return { _0 : _count, _1 : _size };
        };
        var _avgSize = ((_size : stdgo.GoFloat64) / (_count : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _scale = ((1 : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) - stdgo._internal.math.Math_exp.exp((-_avgSize / (_rate : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/protomem.go#L92"
        return { _0 : (((_count : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64), _1 : (((_size : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64) };
    }
