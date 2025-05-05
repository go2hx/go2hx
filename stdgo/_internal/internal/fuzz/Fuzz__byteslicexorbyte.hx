package stdgo._internal.internal.fuzz;
function _byteSliceXORByte(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L96"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L97"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand((_b.length)) : stdgo.GoInt);
        _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] ^ ((((1 : stdgo.GoInt) + _m._rand((255 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L104"
        return _b;
    }
