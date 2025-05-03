package stdgo._internal.internal.fuzz;
function _byteSliceRemoveBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L9"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L10"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos0 = (_m._rand((_b.length)) : stdgo.GoInt);
        var _pos1 = (_pos0 + _m._chooseLen(((_b.length) - _pos0 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L14"
        (_b.__slice__(_pos0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_pos1) : stdgo.Slice<stdgo.GoUInt8>));
        _b = (_b.__slice__(0, ((_b.length) - ((_pos1 - _pos0 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L16"
        return _b;
    }
