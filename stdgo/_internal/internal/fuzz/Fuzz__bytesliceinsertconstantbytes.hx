package stdgo._internal.internal.fuzz;
function _byteSliceInsertConstantBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L218"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L219"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = (_m._chooseLen((4096 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L231"
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L232"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L235"
        (_b.__slice__((_dst + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>));
        var _rb = (_m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L237"
        {
            var _i = (_dst : stdgo.GoInt);
            while ((_i < (_dst + _n : stdgo.GoInt) : Bool)) {
                _b[(_i : stdgo.GoInt)] = _rb;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L240"
        return _b;
    }
