package stdgo._internal.internal.fuzz;
function _byteSliceDuplicateBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L38"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L39"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (_m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L43"
        while (_dst == (_src)) {
            _dst = _m._rand((_b.length));
        };
        var _n = (_m._chooseLen(((_b.length) - _src : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L50"
        if ((((_b.length) + ((_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) >= _b.capacity : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L51"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _end = (_b.length : stdgo.GoInt);
        _b = (_b.__slice__(0, (_end + ((_n * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L59"
        (_b.__slice__((_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L62"
        (_b.__slice__((_dst + _n : stdgo.GoInt), (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_dst, _end) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L64"
        (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__((_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L66"
        return _b;
    }
