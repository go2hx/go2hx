package stdgo._internal.internal.fuzz;
function _byteSliceOverwriteInterestingUint16(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _pos = (@:check2r _m._rand(((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _v = (stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16[(@:check2r _m._rand((stdgo._internal.internal.fuzz.Fuzz__interesting16._interesting16.length)) : stdgo.GoInt)] : stdgo.GoUInt16);
        @:check2r _m._randByteOrder().putUint16((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), _v);
        return _b;
    }
