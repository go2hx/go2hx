package stdgo._internal.internal.fuzz;
function _byteSliceSwapBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L279"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L280"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _src = (_m._rand((_b.length)) : stdgo.GoInt);
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L284"
        while (_dst == (_src)) {
            _dst = _m._rand((_b.length));
        };
        var _max = (_dst : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L291"
        if ((_src > _max : Bool)) {
            _max = _src;
        };
        var _n = (_m._chooseLen((((_b.length) - _max : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L297"
        if ((((_src > _dst : Bool) && ((_dst + _n : stdgo.GoInt) >= _src : Bool) : Bool) || ((_dst > _src : Bool) && ((_src + _n : stdgo.GoInt) >= _dst : Bool) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L298"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L303"
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L304"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _end = (_b.length : stdgo.GoInt);
        _b = (_b.__slice__(0, (_end + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L308"
        (_b.__slice__(_end) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_dst, (_dst + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L309"
        (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_src, (_src + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L310"
        (_b.__slice__(_src) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_end) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, _end) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L312"
        return _b;
    }
