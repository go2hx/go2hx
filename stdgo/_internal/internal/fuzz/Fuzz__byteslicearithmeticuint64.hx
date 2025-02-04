package stdgo._internal.internal.fuzz;
function _byteSliceArithmeticUint64(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) < (8 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _v = ((@:check2r _m._rand((35 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64);
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            _v = ((0i64 : stdgo.GoUInt64) - _v : stdgo.GoUInt64);
        };
        var _pos = (@:check2r _m._rand(((_b.length) - (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _enc = (@:check2r _m._randByteOrder() : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
        _enc.putUint64((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), (_enc.uint64((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>)) + _v : stdgo.GoUInt64));
        return _b;
    }
