package stdgo._internal.internal.fuzz;
function _byteSliceArithmeticUint8(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L123"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L124"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (_m._rand((_b.length)) : stdgo.GoInt);
        var _v = ((_m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L128"
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] + (_v) : stdgo.GoUInt8);
        } else {
            _b[(_pos : stdgo.GoInt)] = (_b[(_pos : stdgo.GoInt)] - (_v) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L133"
        return _b;
    }
