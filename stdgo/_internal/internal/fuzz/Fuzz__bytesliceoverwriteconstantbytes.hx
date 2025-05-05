package stdgo._internal.internal.fuzz;
function _byteSliceOverwriteConstantBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L245"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L246"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = (_m._chooseLen(((_b.length) - _dst : stdgo.GoInt)) : stdgo.GoInt);
        var _rb = (_m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L251"
        {
            var _i = (_dst : stdgo.GoInt);
            while ((_i < (_dst + _n : stdgo.GoInt) : Bool)) {
                _b[(_i : stdgo.GoInt)] = _rb;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L254"
        return _b;
    }
