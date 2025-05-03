package stdgo._internal.internal.fuzz;
function _byteSliceArithmeticUint16(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L138"
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L139"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _v = ((_m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L142"
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            _v = ((0 : stdgo.GoUInt16) - _v : stdgo.GoUInt16);
        };
        var _pos = (_m._rand(((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _enc = (_m._randByteOrder() : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L147"
        _enc.putUint16((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), (_enc.uint16((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>)) + _v : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L148"
        return _b;
    }
