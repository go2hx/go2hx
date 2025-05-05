package stdgo._internal.internal.fuzz;
function _byteSliceOverwriteBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L71"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L72"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (_m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L76"
        while (_dst == (_src)) {
            _dst = _m._rand((_b.length));
        };
        var _n = (_m._chooseLen((((_b.length) - _src : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L80"
        (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L81"
        return _b;
    }
