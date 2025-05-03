package stdgo._internal.internal.fuzz;
function _byteSliceOverwriteInterestingUint8(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L184"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L185"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand((_b.length)) : stdgo.GoInt);
        _b[(_pos : stdgo.GoInt)] = (stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8[(_m._rand((stdgo._internal.internal.fuzz.Fuzz__interesting8._interesting8.length)) : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L189"
        return _b;
    }
